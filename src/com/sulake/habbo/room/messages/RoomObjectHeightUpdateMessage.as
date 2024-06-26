﻿package com.sulake.habbo.room.messages
{
    import com.sulake.room.messages.RoomObjectUpdateMessage;
    import com.sulake.room.utils.IVector3D;

    public class RoomObjectHeightUpdateMessage extends RoomObjectUpdateMessage 
    {
        private var _height:Number;

        public function RoomObjectHeightUpdateMessage(k:IVector3D, _arg_2:IVector3D, _arg_3:Number)
        {
            super(k, _arg_2);
            this._height = _arg_3;
        }

        public function get height():Number
        {
            return this._height;
        }
    }
}
