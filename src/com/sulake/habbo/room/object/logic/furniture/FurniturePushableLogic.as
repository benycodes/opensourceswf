﻿package com.sulake.habbo.room.object.logic.furniture
{
    import com.sulake.room.utils.Vector3d;
    import com.sulake.room.utils.IVector3D;
    import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
    import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
    import com.sulake.room.messages.RoomObjectUpdateMessage;
    import com.sulake.habbo.room.object.data.LegacyStuffData;

    public class FurniturePushableLogic extends FurnitureMultistateLogic 
    {
        private static const _Str_13582:int = 0;
        private static const _Str_20134:int = 1;
        private static const _Str_14385:int = 10;

        private var _oldLocation:Vector3d = null;

        public function FurniturePushableLogic()
        {
            _Str_6769 = _Str_10732;
            this._oldLocation = new Vector3d();
        }

        override public function processUpdateMessage(k:RoomObjectUpdateMessage):void
        {
            var _local_4:IVector3D;
            var _local_5:IVector3D;
            var _local_6:IVector3D;
            if (k == null)
            {
                return;
            }
            var _local_2:RoomObjectMoveUpdateMessage = (k as RoomObjectMoveUpdateMessage);
            if (((!(object == null)) && (_local_2 == null)))
            {
                if (k.loc != null)
                {
                    _local_4 = object.getLocation();
                    _local_5 = Vector3d._Str_5385(k.loc, _local_4);
                    if (_local_5 != null)
                    {
                        if (((Math.abs(_local_5.x) < 2) && (Math.abs(_local_5.y) < 2)))
                        {
                            _local_6 = _local_4;
                            if (((Math.abs(_local_5.x) > 1) || (Math.abs(_local_5.y) > 1)))
                            {
                                _local_6 = Vector3d.sum(_local_4, Vector3d.product(_local_5, 0.5));
                            }
                            _local_2 = new RoomObjectMoveUpdateMessage(_local_6, k.loc, k.dir);
                            super.processUpdateMessage(_local_2);
                            return;
                        }
                    }
                }
            }
            if (((!(k.loc == null)) && (_local_2 == null)))
            {
                _local_2 = new RoomObjectMoveUpdateMessage(k.loc, k.loc, k.dir);
                super.processUpdateMessage(_local_2);
            }
            var _local_3:RoomObjectDataUpdateMessage = (k as RoomObjectDataUpdateMessage);
            if (_local_3 != null)
            {
                if (_local_3.state > 0)
                {
                    _Str_6769 = (_Str_10732 / this._Str_23160(_local_3.state));
                }
                else
                {
                    _Str_6769 = 1;
                }
                this._Str_9796(_local_3);
                return;
            }
            if (((_local_2) && (_local_2._Str_24236)))
            {
                _Str_6769 = _Str_10732;
            }
            super.processUpdateMessage(k);
        }

        protected function _Str_23160(k:int):int
        {
            return k / _Str_14385;
        }

        protected function _Str_23668(k:int):int
        {
            return k % _Str_14385;
        }

        private function _Str_9796(k:RoomObjectDataUpdateMessage):void
        {
            var _local_3:LegacyStuffData;
            var _local_2:int = this._Str_23668(k.state);
            if (_local_2 != k.state)
            {
                _local_3 = new LegacyStuffData();
                _local_3.setString(String(_local_2));
                k = new RoomObjectDataUpdateMessage(_local_2, _local_3, k._Str_2794);
            }
            super.processUpdateMessage(k);
        }

        override public function update(k:int):void
        {
            if (object != null)
            {
                this._oldLocation._Str_2427(object.getLocation());
                super.update(k);
                if (Vector3d._Str_5385(object.getLocation(), this._oldLocation).length == 0)
                {
                    if (object.getState(0) != _Str_13582)
                    {
                        object.setState(_Str_13582, 0);
                    }
                }
            }
        }
    }
}
