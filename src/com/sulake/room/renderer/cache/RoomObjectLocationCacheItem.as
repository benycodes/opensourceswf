﻿package com.sulake.room.renderer.cache
{
    import com.sulake.room.utils.Vector3d;
    import com.sulake.room.utils.IVector3D;
    import com.sulake.room.object.IRoomObject;
    import com.sulake.room.utils.IRoomGeometry;

    public class RoomObjectLocationCacheItem 
    {
        private var _roomObjectVariableAccurateZ:String = "";
        private var _geometryUpdateId:int = -1;
        private var _objectUpdateId:int = -1;
        private var _objectUpdateLoc:Vector3d;
        private var _screenLoc:Vector3d = null;
        private var _locationChanged:Boolean = false;

        public function RoomObjectLocationCacheItem(k:String)
        {
            this._objectUpdateLoc = new Vector3d();
            super();
            this._roomObjectVariableAccurateZ = k;
            this._screenLoc = new Vector3d();
        }

        public function get _Str_25332():Boolean
        {
            return this._locationChanged;
        }

        public function dispose():void
        {
            this._screenLoc = null;
        }

        public function _Str_22968(k:IRoomObject, _arg_2:IRoomGeometry):IVector3D
        {
            var _local_5:IVector3D;
            var _local_6:Number;
            var _local_7:Vector3d;
            var _local_8:IVector3D;
            if (((k == null) || (_arg_2 == null)))
            {
                return null;
            }
            var _local_3:Boolean;
            var _local_4:IVector3D = k.getLocation();
            if (((!(_arg_2._Str_3795 == this._geometryUpdateId)) || (!(k._Str_3273() == this._objectUpdateId))))
            {
                this._objectUpdateId = k._Str_3273();
                if (((((!(_arg_2._Str_3795 == this._geometryUpdateId)) || (!(_local_4.x == this._objectUpdateLoc.x))) || (!(_local_4.y == this._objectUpdateLoc.y))) || (!(_local_4.z == this._objectUpdateLoc.z))))
                {
                    this._geometryUpdateId = _arg_2._Str_3795;
                    this._objectUpdateLoc._Str_2427(_local_4);
                    _local_3 = true;
                }
            }
            this._locationChanged = _local_3;
            if (_local_3)
            {
                _local_5 = _arg_2._Str_4202(_local_4);
                if (_local_5 == null)
                {
                    return null;
                }
                _local_6 = k.getModel().getNumber(this._roomObjectVariableAccurateZ);
                if (((isNaN(_local_6)) || (_local_6 == 0)))
                {
                    _local_7 = new Vector3d(Math.round(_local_4.x), Math.round(_local_4.y), _local_4.z);
                    if (((!(_local_7.x == _local_4.x)) || (!(_local_7.y == _local_4.y))))
                    {
                        _local_8 = _arg_2._Str_4202(_local_7);
                        this._screenLoc._Str_2427(_local_5);
                        if (_local_8 != null)
                        {
                            this._screenLoc.z = _local_8.z;
                        }
                    }
                    else
                    {
                        this._screenLoc._Str_2427(_local_5);
                    }
                }
                else
                {
                    this._screenLoc._Str_2427(_local_5);
                }
                this._screenLoc.x = Math.round(this._screenLoc.x);
                this._screenLoc.y = Math.round(this._screenLoc.y);
            }
            return this._screenLoc;
        }
    }
}
