﻿package com.sulake.habbo.communication.messages.incoming.room.session
{
    import com.sulake.core.communication.messages.MessageEvent;
    import com.sulake.habbo.communication.messages.parser.room.session._Str_7901;

    public class _Str_8002 extends MessageEvent 
    {
        public function _Str_8002(k:Function)
        {
            super(k, _Str_7901);
        }

        public function _Str_2273():_Str_7901
        {
            return _parser as _Str_7901;
        }
    }
}
