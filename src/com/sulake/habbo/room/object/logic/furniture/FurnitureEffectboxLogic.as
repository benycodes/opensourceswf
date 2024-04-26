﻿package com.sulake.habbo.room.object.logic.furniture
{
    import com.sulake.habbo.ui.widget.enums.ContextMenuType;
    import com.sulake.habbo.room.events.RoomObjectWidgetRequestEvent;
    import com.sulake.room.events.RoomObjectEvent;

    public class FurnitureEffectboxLogic extends FurnitureMultistateLogic 
    {


        override public function get contextMenu():String
        {
            return ContextMenuType.EFFECT_BOX;
        }

        override public function getEventTypes():Array
        {
            return _Str_2414(super.getEventTypes(), [RoomObjectWidgetRequestEvent.EFFECTBOX_OPEN_DIALOG]);
        }

        override public function useObject():void
        {
            var k:RoomObjectEvent;
            if (((!(eventDispatcher == null)) && (!(object == null))))
            {
                k = new RoomObjectWidgetRequestEvent(RoomObjectWidgetRequestEvent.EFFECTBOX_OPEN_DIALOG, object);
                eventDispatcher.dispatchEvent(k);
            }
        }
    }
}
