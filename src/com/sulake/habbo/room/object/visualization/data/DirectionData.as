﻿package com.sulake.habbo.room.object.visualization.data
{
    public class DirectionData 
    {
        public static const _Str_9471:int = -1;

        private var _layers:Array;

        public function DirectionData(k:int)
        {
            var _local_3:LayerData;
            this._layers = [];
            super();
            var _local_2:int;
            while (_local_2 < k)
            {
                _local_3 = new LayerData();
                this._layers.push(_local_3);
                _local_2++;
            }
        }

        public function dispose():void
        {
            this._layers = null;
        }

        public function get layerCount():int
        {
            return this._layers.length;
        }

        private function _Str_3933(k:int):LayerData
        {
            if (((k < 0) || (k >= this.layerCount)))
            {
                return null;
            }
            return this._layers[k];
        }

        public function _Str_6014(k:int):String
        {
            var _local_2:LayerData = this._Str_3933(k);
            if (_local_2 != null)
            {
                return _local_2.tag;
            }
            return LayerData._Str_12249;
        }

        public function _Str_9289(k:int, _arg_2:String):void
        {
            var _local_3:LayerData = this._Str_3933(k);
            if (_local_3 != null)
            {
                _local_3.tag = _arg_2;
            }
        }

        public function _Str_10682(k:int):int
        {
            var _local_2:LayerData = this._Str_3933(k);
            if (_local_2 != null)
            {
                return _local_2.ink;
            }
            return LayerData._Str_7943;
        }

        public function _Str_16985(k:int, _arg_2:int):void
        {
            var _local_3:LayerData = this._Str_3933(k);
            if (_local_3 != null)
            {
                _local_3.ink = _arg_2;
            }
        }

        public function _Str_11350(k:int):int
        {
            var _local_2:LayerData = this._Str_3933(k);
            if (_local_2 != null)
            {
                return _local_2.alpha;
            }
            return LayerData._Str_8655;
        }

        public function _Str_16703(k:int, _arg_2:int):void
        {
            var _local_3:LayerData = this._Str_3933(k);
            if (_local_3 != null)
            {
                _local_3.alpha = _arg_2;
            }
        }

        public function _Str_12280(k:int):Boolean
        {
            var _local_2:LayerData = this._Str_3933(k);
            if (_local_2 != null)
            {
                return _local_2.ignoreMouse;
            }
            return LayerData._Str_9888;
        }

        public function window1(k:int, _arg_2:Boolean):void
        {
            var _local_3:LayerData = this._Str_3933(k);
            if (_local_3 != null)
            {
                _local_3.ignoreMouse = _arg_2;
            }
        }

        public function _Str_10372(k:int):int
        {
            var _local_2:LayerData = this._Str_3933(k);
            if (_local_2 != null)
            {
                return _local_2._Str_11051;
            }
            return LayerData._Str_9326;
        }

        public function _Str_24958(k:int, _arg_2:int):void
        {
            var _local_3:LayerData = this._Str_3933(k);
            if (_local_3 != null)
            {
                _local_3._Str_11051 = _arg_2;
            }
        }

        public function _Str_10926(k:int):int
        {
            var _local_2:LayerData = this._Str_3933(k);
            if (_local_2 != null)
            {
                return _local_2._Str_10285;
            }
            return LayerData._Str_9412;
        }

        public function _Str_24307(k:int, _arg_2:int):void
        {
            var _local_3:LayerData = this._Str_3933(k);
            if (_local_3 != null)
            {
                _local_3._Str_10285 = _arg_2;
            }
        }

        public function _Str_8329(k:int):Number
        {
            var _local_2:LayerData = this._Str_3933(k);
            if (_local_2 != null)
            {
                return _local_2._Str_12320;
            }
            return LayerData._Str_7951;
        }

        public function _Str_24059(k:int, _arg_2:Number):void
        {
            var _local_3:LayerData = this._Str_3933(k);
            if (_local_3 != null)
            {
                _local_3._Str_12320 = _arg_2;
            }
        }

        public function _Str_17122(k:DirectionData):void
        {
            if (k == null)
            {
                return;
            }
            if (this.layerCount != k.layerCount)
            {
                return;
            }
            var _local_2:LayerData;
            var _local_3:LayerData;
            var _local_4:int;
            while (_local_4 < this.layerCount)
            {
                _local_2 = this._Str_3933(_local_4);
                _local_3 = k._Str_3933(_local_4);
                if (_local_2)
                {
                    _local_2._Str_17122(_local_3);
                }
                _local_4++;
            }
        }
    }
}
