﻿package com.sulake.habbo.communication.messages.incoming.catalog
{
    import com.sulake.core.communication.messages.MessageEvent;
    import com.sulake.core.communication.messages.IMessageEvent;
    import com.sulake.habbo.communication.messages.parser.catalog._Str_8505;

    public class _Str_8530 extends MessageEvent implements IMessageEvent 
    {
        public function _Str_8530(k:Function)
        {
            super(k, _Str_8505);
        }

        public function _Str_2273():_Str_8505
        {
            return this._parser as _Str_8505;
        }
    }
}
