﻿package com.sulake.habbo.room.object.visualization.room.rasterizer.basic
{
    import com.sulake.room.utils.Vector3d;
    import flash.geom.Point;
    import flash.display.BitmapData;
    import com.sulake.room.utils.IVector3D;

    public class WallPlane extends Plane 
    {
        public static const _Str_2531:uint = 0xFFFFFF;
        public static const _Str_5433:Number = 45;
        public static const _Str_5509:Number = 30;


        public function render(k:BitmapData, _arg_2:Number, _arg_3:Number, _arg_4:Number, _arg_5:IVector3D, _arg_6:Boolean):BitmapData
        {
            var _local_7:PlaneVisualization = _Str_6009(_arg_4);
            if (((_local_7 == null) || (_local_7.geometry == null)))
            {
                return null;
            }
            var _local_8:Point = _local_7.geometry._Str_3045(new Vector3d(0, 0, 0));
            var _local_9:Point = _local_7.geometry._Str_3045(new Vector3d(0, 0, (_arg_3 / _local_7.geometry.scale)));
            var _local_10:Point = _local_7.geometry._Str_3045(new Vector3d(0, (_arg_2 / _local_7.geometry.scale), 0));
            if ((((!(_local_8 == null)) && (!(_local_9 == null))) && (!(_local_10 == null))))
            {
                _arg_2 = Math.round(Math.abs((_local_8.x - _local_10.x)));
                _arg_3 = Math.round(Math.abs((_local_8.y - _local_9.y)));
            }
            return _local_7.render(k, _arg_2, _arg_3, _arg_5, _arg_6);
        }
    }
}
