﻿package com.sulake.habbo.room.object.visualization.furniture
{
    import flash.display.BitmapData;
    import com.sulake.core.assets.BitmapDataAsset;
    import com.sulake.room.object.visualization.utils.IGraphicAsset;
    import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
    import flash.geom.Point;
    import flash.geom.Rectangle;
    import com.sulake.room.utils.Rasterizer;

    public class ShoreMaskCreatorUtility 
    {
        public static const _Str_4832:int = 0;
        public static const _Str_3641:int = 1;
        public static const _Str_3534:int = 2;
        private static const _Str_17068:int = 3;
        private static const _Str_4470:uint = 0;
        private static const _Str_13255:uint = 0xFFFFFFFF;


        public static function _Str_22325(k:int, _arg_2:int):BitmapData
        {
            var _local_3:BitmapData = new BitmapData(k, _arg_2, true, _Str_4470);
            return _local_3;
        }

        public static function _Str_11218(k:int, _arg_2:int):String
        {
            var _local_3:String = ((("instance_mask_" + k) + "_") + _arg_2);
            return _local_3;
        }

        public static function _Str_3514(k:int, _arg_2:int):int
        {
            return k + (_arg_2 * _Str_17068);
        }

        public static function _Str_18302(k:int, _arg_2:int, _arg_3:IGraphicAssetCollection, _arg_4:IGraphicAsset):IGraphicAsset
        {
            var _local_7:BitmapDataAsset;
            var _local_8:BitmapData;
            var _local_5:String = _Str_11218(k, _arg_2);
            var _local_6:IGraphicAsset = _arg_3.getAsset(_local_5);
            if (_local_6 == null)
            {
                if (_arg_4 != null)
                {
                    _local_7 = (_arg_4.asset as BitmapDataAsset);
                    if (_local_7 != null)
                    {
                        _local_8 = (_local_7.content as BitmapData);
                        if (_local_8 != null)
                        {
                            _arg_3.addAsset(_local_5, new BitmapData(_local_8.width, _local_8.height, true, _Str_4470), false, _arg_4.offsetX, _arg_4.offsetY);
                            _local_6 = _arg_3.getAsset(_local_5);
                        }
                    }
                }
            }
            return _local_6;
        }

        public static function _Str_23481(k:int, _arg_2:int, _arg_3:IGraphicAssetCollection):void
        {
            var _local_4:String = _Str_11218(k, _arg_2);
            _arg_3.disposeAsset(_local_4);
        }

        public static function _Str_25776(k:BitmapData, _arg_2:int, _arg_3:Array, _arg_4:Array, _arg_5:IGraphicAssetCollection):BitmapData
        {
            var _local_7:String;
            var _local_8:IGraphicAsset;
            var _local_9:BitmapData;
            k.fillRect(k.rect, _Str_4470);
            var _local_6:int;
            while (_local_6 < _arg_3.length)
            {
                if (_arg_3[_local_6] == true)
                {
                    _local_7 = ((((("mask_" + _arg_2) + "_") + _local_6) + "_") + _arg_4[_local_6]);
                    _local_8 = _arg_5.getAsset(_local_7);
                    if (((!(_local_8 == null)) && (!(_local_8.asset == null))))
                    {
                        _local_9 = (_local_8.asset.content as BitmapData);
                        if (_local_9 != null)
                        {
                            k.copyPixels(_local_9, _local_9.rect, new Point(0, 0), _local_9, new Point(0, 0), true);
                        }
                    }
                }
                _local_6++;
            }
            return k;
        }

        public static function _Str_18695(k:int, _arg_2:IGraphicAssetCollection, _arg_3:IGraphicAsset):Boolean
        {
            var _local_4:String;
            var _local_5:BitmapDataAsset;
            var _local_6:BitmapData;
            var _local_7:Array;
            var _local_8:Array;
            var _local_9:BitmapData;
            var _local_10:int;
            if (_arg_2 != null)
            {
                _local_4 = ("masks_done_" + k);
                if (_arg_2.getAsset(_local_4) == null)
                {
                    if (_arg_3 != null)
                    {
                        _local_5 = (_arg_3.asset as BitmapDataAsset);
                        if (_local_5 != null)
                        {
                            _local_6 = (_local_5.content as BitmapData);
                            _local_7 = [_Str_4832, _Str_3641, _Str_3534, _Str_4832, _Str_3641, _Str_3534];
                            _local_8 = [_Str_3641, _Str_3641, _Str_3641, _Str_3534, _Str_3534, _Str_3534];
                            _local_9 = null;
                            _local_10 = 0;
                            if (_local_6 != null)
                            {
                                _local_10 = 0;
                                while (((_local_10 < _local_7.length) && (_local_10 < _local_8.length)))
                                {
                                    _local_9 = _Str_19948(_local_6.width, _local_6.height);
                                    _Str_21857(_local_9, k, _local_7[_local_10], _local_8[_local_10]);
                                    _Str_20285(_arg_2, _local_9, k, _local_7[_local_10], _local_8[_local_10]);
                                    _local_9 = _Str_19217(_local_6.width, _local_6.height);
                                    _Str_22052(_local_9, k, _local_8[_local_10], _local_7[_local_10]);
                                    _Str_21161(_arg_2, _local_9, k, _local_8[_local_10], _local_7[_local_10]);
                                    _local_10++;
                                }
                            }
                        }
                        _arg_2.addAsset(_local_4, new BitmapData(1, 1), false);
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return false;
        }

        private static function _Str_19948(k:int, _arg_2:int):BitmapData
        {
            var _local_3:BitmapData = new BitmapData(k, _arg_2, true, _Str_4470);
            _Str_14623(_local_3, (_local_3.width / 2), ((_local_3.height / 2) - 1), 1, _Str_13255);
            return _local_3;
        }

        private static function _Str_21857(k:BitmapData, _arg_2:int, _arg_3:int, _arg_4:int):void
        {
            if (_arg_3 == _Str_3641)
            {
                _Str_12767(k, _arg_2, false);
            }
            else
            {
                if (_arg_3 == _Str_3534)
                {
                    _Str_12767(k, _arg_2, true);
                }
            }
            if (_arg_4 == _Str_3534)
            {
                _Str_21133(k, _arg_2);
            }
        }

        private static function _Str_12767(k:BitmapData, _arg_2:int, _arg_3:Boolean):void
        {
            var _local_4:int = ((k.height / 2) - (_arg_2 / 2));
            var _local_5:int = (k.width / 2);
            if (_arg_3)
            {
                k.fillRect(new Rectangle(_local_5, 0, k.width, _local_4), _Str_4470);
            }
            else
            {
                _Str_14623(k, _local_5, (_local_4 - 1), 1, _Str_4470);
            }
        }

        private static function _Str_21133(k:BitmapData, _arg_2:int):void
        {
            var _local_3:int = ((k.width / 2) + (_arg_2 / 2));
            k.fillRect(new Rectangle(_local_3, 0, k.width, (k.height / 2)), _Str_4470);
        }

        private static function _Str_19217(k:int, _arg_2:int):BitmapData
        {
            var _local_3:BitmapData = new BitmapData(k, _arg_2, true, _Str_4470);
            _Str_14562(_local_3, ((_local_3.width / 2) + 1), ((_local_3.height / 2) - 1), _Str_13255);
            return _local_3;
        }

        private static function _Str_22052(k:BitmapData, _arg_2:int, _arg_3:int, _arg_4:int):void
        {
            if (_arg_4 == _Str_3641)
            {
                _Str_15194(k, _arg_2, false);
            }
            else
            {
                if (_arg_4 == _Str_3534)
                {
                    _Str_15194(k, _arg_2, true);
                }
            }
            if (_arg_3 == _Str_3534)
            {
                _Str_20181(k, _arg_2);
            }
        }

        private static function _Str_20181(k:BitmapData, _arg_2:int):void
        {
            var _local_3:int = ((k.width / 2) + (_arg_2 / 2));
            k.fillRect(new Rectangle(_local_3, 0, k.width, ((k.height / 2) - (_arg_2 / 4))), _Str_4470);
        }

        private static function _Str_15194(k:BitmapData, _arg_2:int, _arg_3:Boolean):void
        {
            var _local_4:int = (k.height / 2);
            var _local_5:int = ((k.width / 2) + _arg_2);
            if (_arg_3)
            {
                k.fillRect(new Rectangle(_local_5, 0, k.width, _local_4), _Str_4470);
            }
            else
            {
                _Str_14562(k, (_local_5 + 1), (_local_4 - 1), _Str_4470);
            }
        }

        private static function _Str_20285(k:IGraphicAssetCollection, _arg_2:BitmapData, _arg_3:int, _arg_4:int, _arg_5:int):void
        {
            var _local_6:String;
            if (k != null)
            {
                _local_6 = "";
                _local_6 = ((("mask_" + _arg_3) + "_0_") + _Str_3514(_arg_4, _arg_5));
                k.addAsset(_local_6, _arg_2, false);
                _local_6 = ((("mask_" + _arg_3) + "_3_") + _Str_3514(_arg_5, _arg_4));
                k.addAsset(_local_6, Rasterizer._Str_20706(_arg_2), false);
                _local_6 = ((("mask_" + _arg_3) + "_4_") + _Str_3514(_arg_4, _arg_5));
                k.addAsset(_local_6, Rasterizer._Str_20356(_arg_2), false);
                _local_6 = ((("mask_" + _arg_3) + "_7_") + _Str_3514(_arg_5, _arg_4));
                k.addAsset(_local_6, Rasterizer._Str_16640(_arg_2), false);
            }
        }

        private static function _Str_21161(k:IGraphicAssetCollection, _arg_2:BitmapData, _arg_3:int, _arg_4:int, _arg_5:int):void
        {
            var _local_6:String;
            if (k != null)
            {
                _local_6 = "";
                _local_6 = ((("mask_" + _arg_3) + "_1_") + _Str_3514(_arg_4, _arg_5));
                k.addAsset(_local_6, _arg_2, false);
                _local_6 = ((("mask_" + _arg_3) + "_2_") + _Str_3514(_arg_5, _arg_4));
                k.addAsset(_local_6, Rasterizer._Str_20706(_arg_2), false);
                _local_6 = ((("mask_" + _arg_3) + "_5_") + _Str_3514(_arg_4, _arg_5));
                k.addAsset(_local_6, Rasterizer._Str_20356(_arg_2), false);
                _local_6 = ((("mask_" + _arg_3) + "_6_") + _Str_3514(_arg_5, _arg_4));
                k.addAsset(_local_6, Rasterizer._Str_16640(_arg_2), false);
            }
        }

        private static function _Str_14623(k:BitmapData, _arg_2:int, _arg_3:int, _arg_4:int, _arg_5:uint):void
        {
            var _local_9:int;
            var _local_6:int = _arg_2;
            var _local_7:int = _arg_3;
            var _local_8:int = _arg_4;
            while (_local_7 >= 0)
            {
                _local_9 = _local_7;
                while (_local_9 >= 0)
                {
                    k.setPixel32(_local_6, _local_9, _arg_5);
                    _local_9--;
                }
                _local_8++;
                if (_local_8 >= 2)
                {
                    _local_7--;
                    _local_8 = 0;
                }
                _local_6++;
            }
        }

        private static function _Str_14562(k:BitmapData, _arg_2:int, _arg_3:int, _arg_4:uint):void
        {
            var _local_7:int;
            var _local_5:int = _arg_2;
            var _local_6:int = _arg_3;
            while (_local_5 < k.width)
            {
                _local_7 = _local_5;
                while (_local_7 < k.width)
                {
                    k.setPixel32(_local_7, _local_6, _arg_4);
                    _local_7++;
                }
                _local_6--;
                _local_5 = (_local_5 + 2);
            }
        }
    }
}