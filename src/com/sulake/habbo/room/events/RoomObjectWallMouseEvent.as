﻿package com.sulake.habbo.room.events
{
    import com.sulake.room.events.RoomObjectMouseEvent;
    import com.sulake.room.utils.Vector3d;
    import com.sulake.room.object.IRoomObject;
    import com.sulake.room.utils.IVector3D;

    public class RoomObjectWallMouseEvent extends RoomObjectMouseEvent 
    {
        private var _x:Number;
        private var _y:Number;
        private var _direction:Number;
        private var _wallLoc:Vector3d = null;
        private var _wallWd:Vector3d = null;
        private var _wallHt:Vector3d = null;

        public function RoomObjectWallMouseEvent(k:String, _arg_2:IRoomObject, _arg_3:String, _arg_4:IVector3D, _arg_5:IVector3D, _arg_6:IVector3D, _arg_7:Number, _arg_8:Number, _arg_9:Number, _arg_10:Boolean=false, _arg_11:Boolean=false, _arg_12:Boolean=false, _arg_13:Boolean=false, _arg_14:Boolean=false, _arg_15:Boolean=false)
        {
            super(k, _arg_2, _arg_3, _arg_10, _arg_11, _arg_12, _arg_13, _arg_14, _arg_15);
            this._wallLoc = new Vector3d();
            this._wallLoc._Str_2427(_arg_4);
            this._wallWd = new Vector3d();
            this._wallWd._Str_2427(_arg_5);
            this._wallHt = new Vector3d();
            this._wallHt._Str_2427(_arg_6);
            this._x = _arg_7;
            this._y = _arg_8;
            this._direction = _arg_9;
        }

        public function get _Str_7031():IVector3D
        {
            return this._wallLoc;
        }

        public function get _Str_20935():IVector3D
        {
            return this._wallWd;
        }

        public function get wallHeight():IVector3D
        {
            return this._wallHt;
        }

        public function get x():Number
        {
            return this._x;
        }

        public function get y():Number
        {
            return this._y;
        }

        public function get direction():Number
        {
            return this._direction;
        }
    }
}