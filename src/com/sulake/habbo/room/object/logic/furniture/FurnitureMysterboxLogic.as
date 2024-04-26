﻿package com.sulake.habbo.room.object.logic.furniture
{
    import com.sulake.habbo.ui.widget.enums.ContextMenuType;
    import com.sulake.habbo.room.events.RoomObjectWidgetRequestEvent;
    import com.sulake.room.events.RoomObjectEvent;

    public class FurnitureMysterboxLogic extends FurnitureMultistateLogic 
    {


        override public function get contextMenu():String
        {
            return ContextMenuType.MYSTERY_BOX;
        }

        override public function getEventTypes():Array
        {
            return _Str_2414(super.getEventTypes(), [RoomObjectWidgetRequestEvent.MYSTERYBOX_OPEN_DIALOG]);
        }

        override public function useObject():void
        {
            var k:RoomObjectEvent;
            if (((!(eventDispatcher == null)) && (!(object == null))))
            {
                k = new RoomObjectWidgetRequestEvent(RoomObjectWidgetRequestEvent.MYSTERYBOX_OPEN_DIALOG, object);
                eventDispatcher.dispatchEvent(k);
            }
        }
    }
}
