﻿package _Str_63
{
    import com.sulake.core.communication.messages.IMessageComposer;

    public class _Str_11313 implements IMessageComposer 
    {
        private var _array:Array;

        public function _Str_11313(k:int, _arg_2:int)
        {
            this._array = [];
            super();
            this._array.push(k);
            this._array.push(_arg_2);
        }

        public function getMessageArray():Array
        {
            return this._array;
        }

        public function dispose():void
        {
            this._array = null;
        }
    }
}
