﻿package _Str_369
{
    import com.sulake.core.communication.messages.IMessageComposer;

    public class _Str_11341 implements IMessageComposer 
    {
        private var _Str_2907:Array;

        public function _Str_11341(k:String)
        {
            this._Str_2907 = [];
            super();
            this._Str_2907.push(k);
        }

        public function getMessageArray():Array
        {
            return this._Str_2907;
        }

        public function dispose():void
        {
            this._Str_2907 = null;
        }
    }
}
