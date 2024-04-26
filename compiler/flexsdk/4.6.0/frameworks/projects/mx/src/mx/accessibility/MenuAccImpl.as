////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2003-2007 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package mx.accessibility
{

import flash.accessibility.Accessibility;
import flash.events.Event;
import mx.accessibility.AccConst;
import mx.controls.Menu;
import mx.core.UIComponent;
import mx.core.mx_internal;
import mx.events.MenuEvent;

use namespace mx_internal;

/**
 *  MenuAccImpl is a subclass of AccessibilityImplementation
 *  which implements accessibility for the Menu class.
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Flex 3
 */
public class MenuAccImpl extends ListBaseAccImpl
{
    include "../core/Version.as";

	//--------------------------------------------------------------------------
	//
	//  Class methods
	//
	//--------------------------------------------------------------------------

	/**
	 *  Enables accessibility in the Menu class.
	 * 
	 *  <p>This method is called by application startup code
	 *  that is autogenerated by the MXML compiler.
	 *  Afterwards, when instances of Menu are initialized,
	 *  their <code>accessibilityImplementation</code> property
	 *  will be set to an instance of this class.</p>
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public static function enableAccessibility():void
	{
		Menu.createAccessibilityImplementation =
			createAccessibilityImplementation;
	}

	/**
	 *  @private
	 *  Creates a Menu's AccessibilityImplementation object.
	 *  This method is called from UIComponent's
	 *  initializeAccessibility() method.
	 */
	mx_internal static function createAccessibilityImplementation(
								component:UIComponent):void
	{
		component.accessibilityImplementation =
			new MenuAccImpl(component);
	}

	//--------------------------------------------------------------------------
	//
	//  Constructor
	//
	//--------------------------------------------------------------------------

	/**
	 *  Constructor.
	 *
	 *  @param master The UIComponent instance that this AccImpl instance
	 *  is making accessible.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
	public function MenuAccImpl(master:UIComponent)
	{
		super(master);

		role = AccConst.ROLE_SYSTEM_MENUPOPUP;
	}

	//--------------------------------------------------------------------------
	//
	//  Overridden properties: AccImpl
	//
	//--------------------------------------------------------------------------

	//----------------------------------
	//  eventsToHandle
	//----------------------------------

	/**
	 *  @private
	 *	Array of events that we should listen for from the master component.
	 */
	override protected function get eventsToHandle():Array
	{
		return super.eventsToHandle.concat(
			[ "itemRollOver", "menuShow", "menuHide" ]);
	}

	//--------------------------------------------------------------------------
	//
	//  Overridden methods: AccessibilityImplementation
	//
	//--------------------------------------------------------------------------

	/**
	 *  @private
	 *  Gets the role for the component.
	 *
	 *  @param childID children of the component
	 */
	override public function get_accRole(childID:uint):uint
	{
		return childID == 0 ? role : AccConst.ROLE_SYSTEM_MENUITEM;
	}

	/**
	 *  @private
	 *  IAccessible method for returning the state of the Menu.
	 *  States are predefined for all the components in MSAA.
	 *  Values are assigned to each state.
	 *  Depending upon the menuItem being Selected, Selectable,
	 *  Invisible, Offscreen, a value is returned.
	 *
	 *  @param childID uint
	 *
	 *  @return State uint
	 */
	override public function get_accState(childID:uint):uint
	{
		var accState:uint = getState(childID);

		if (childID > 0 && childID < 100000)
		{
			var item:Object = Menu(master).dataProvider[childID - 1];

			if (!Menu(master).dataDescriptor.isEnabled(item))
			{
				accState |= AccConst.STATE_SYSTEM_UNAVAILABLE;
				return accState;
			}

			//if (Menu(master).dataDescriptor.isFocused(item))
			accState |= AccConst.STATE_SYSTEM_HOTTRACKED | AccConst.STATE_SYSTEM_FOCUSED;
			
			if (Menu(master).dataDescriptor.isToggled(item))
				accState |= AccConst.STATE_SYSTEM_CHECKED;

			if (Menu(master).dataDescriptor.isBranch(item))
				accState |= AccConst.STATE_SYSTEM_HASPOPUP;
		}
		return accState;
	}

	/**
	 *  @private
	 *  IAccessible method for returning the Default Action.
	 *
	 *  @param childID uint
	 *
	 *  @return focused childID.
	 */
	override public function get_accDefaultAction(childID:uint):String
	{
		if (childID == 0)
			return null;

		var item:Object = Menu(master).dataProvider[childID - 1];

		return Menu(master).dataDescriptor.isBranch(item) ? "Open" : "Execute";
	}

	//--------------------------------------------------------------------------
	//
	//  Overridden methods: AccImpl
	//
	//--------------------------------------------------------------------------

	/**
	 *  @private
	 *  method for returning the name of the MenuItem
	 *  which is spoken out by the screen reader
	 *  The MenuItem should return the label as the name
	 *  and Menu should return the name specified in the Accessibility Panel.
	 *
	 *  @param childID uint
	 *
	 *  @return Name String
	 */
	override protected function getName(childID:uint):String
	{
		if (childID == 0)
			return "";

		var menu:Menu = Menu(master);

		var item:Object = menu.dataProvider[childID - 1];

		return menu.itemToLabel(item);
	}

	//--------------------------------------------------------------------------
	//
	//  Overridden event handlers: AccImpl
	//
	//--------------------------------------------------------------------------

	/**
	 *  @private
	 *  Override the generic event handler.
	 *  All AccImpl must implement this
	 *  to listen for events from its master component.
	 */
	override protected function eventHandler(event:Event):void
	{
		// Let AccImpl class handle the events
		// that all accessible UIComponents understand.
		$eventHandler(event);

		var index:int = 0;
		var childID:uint;

		switch (event.type)
		{
			case MenuEvent.ITEM_ROLL_OVER:
			{
				index = MenuEvent(event).index;
				if (index >= 0)
				{
					childID = index + 1;

					Accessibility.sendEvent(MenuEvent(event).menu, childID,
											AccConst.EVENT_OBJECT_FOCUS);

					Accessibility.sendEvent(MenuEvent(event).menu, childID,
											AccConst.EVENT_OBJECT_SELECTION);
				}
				break;
			}

			case MenuEvent.ITEM_CLICK:
			{
				index = MenuEvent(event).menu.selectedIndex;
				if (index >= 0)
				{
					childID = index + 1;

					Accessibility.sendEvent(MenuEvent(event).menu, childID,
											AccConst.EVENT_OBJECT_FOCUS);

					Accessibility.sendEvent(MenuEvent(event).menu, childID,
											AccConst.EVENT_OBJECT_SELECTION);
				}
				break;
			}

			case MenuEvent.MENU_SHOW:
			{
				Accessibility.sendEvent(MenuEvent(event).menu, 0,
										AccConst.EVENT_SYSTEM_MENUPOPUPSTART);
				break;
			}

			case MenuEvent.MENU_HIDE:
			{
				Accessibility.sendEvent(MenuEvent(event).menu, 0,
										AccConst.EVENT_SYSTEM_MENUPOPUPEND);
				break;
			}
		}
	}
}

}
