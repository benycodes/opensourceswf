﻿package com.sulake.habbo.communication.messages.parser.marketplace
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.habbo.room.IStuffData;
    import com.sulake.habbo.communication.messages.incoming.marketplace._Str_4192;
    import com.sulake.habbo.communication.messages.parser.room.engine._Str_4638;
    import com.sulake.habbo.room.object.data.StuffDataFactory;
    import com.sulake.habbo.room.object.data.LegacyStuffData;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class _Str_6982 implements IMessageParser 
    {
        private const _Str_18070:int = 500;

        private var _offers:Array;
        private var _Str_11581:int;


        public function flush():Boolean
        {
            this._offers = null;
            return true;
        }

        public function parse(k:IMessageDataWrapper):Boolean
        {
            var _local_2:int;
            var _local_3:int;
            var _local_4:int;
            var _local_5:int;
            var _local_7:IStuffData;
            var _local_8:int;
            var _local_9:int;
            var _local_10:int;
            var _local_13:_Str_4192;
            this._offers = new Array();
            var _local_6:String = "";
            this._Str_11581 = k.readInteger();
            var _local_11:int = k.readInteger();
            var _local_12:int;
            while (_local_12 < _local_11)
            {
                _local_2 = k.readInteger();
                _local_3 = k.readInteger();
                _local_4 = k.readInteger();
                if (_local_4 == _Str_4738._Str_8964)
                {
                    _local_5 = k.readInteger();
                    _local_7 = _Str_4638._Str_6271(k);
                }
                else
                {
                    if (_local_4 == _Str_4738._Str_13000)
                    {
                        _local_5 = k.readInteger();
                        _local_6 = k.readString();
                    }
                    else
                    {
                        if (_local_4 == _Str_4738._Str_14245)
                        {
                            _local_5 = k.readInteger();
                            _local_7 = StuffDataFactory._Str_6438(LegacyStuffData.FORMAT_KEY);
                            _local_7.uniqueSerialNumber = k.readInteger();
                            _local_7._Str_5330 = k.readInteger();
                            _local_4 = _Str_4738._Str_8964;
                        }
                    }
                }
                _local_8 = k.readInteger();
                _local_9 = k.readInteger();
                _local_10 = k.readInteger();
                _local_13 = new _Str_4192(_local_2, _local_5, _local_4, _local_6, _local_7, _local_8, _local_3, _local_9, _local_10);
                if (_local_12 < this._Str_18070)
                {
                    this._offers.push(_local_13);
                }
                _local_12++;
            }
            return true;
        }

        public function get offers():Array
        {
            return this._offers;
        }

        public function get _Str_15236():int
        {
            return this._Str_11581;
        }
    }
}
