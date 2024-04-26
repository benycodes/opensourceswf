﻿package com.sulake.habbo.session
{
    import com.sulake.habbo.communication.messages.incoming.roomsettings._Str_2817;

    public interface IRoomSession 
    {
        function get roomId():int;
        function get _Str_17752():String;
        function get state():String;
        function start():Boolean;
        function _Str_17917(_arg_1:String, _arg_2:int=0):void;
        function _Str_22140(_arg_1:String):void;
        function _Str_21231(_arg_1:String, _arg_2:int=0):void;
        function _Str_19359(_arg_1:String, _arg_2:String, _arg_3:int=0):void;
        function _Str_21148(_arg_1:Boolean):void;
        function _Str_5941(_arg_1:int):void;
        function _Str_16233(_arg_1:int):void;
        function _Str_20495(_arg_1:int):void;
        function _Str_18552(_arg_1:int):void;
        function _Str_22199(_arg_1:int):void;
        function _Str_17139(_arg_1:int):void;
        function _Str_20560(_arg_1:int, _arg_2:String):void;
        function _Str_21175():void;
        function _Str_21317(_arg_1:int, _arg_2:int, _arg_3:uint, _arg_4:int, _arg_5:Boolean):void;
        function _Str_20755():void;
        function _Str_21689(_arg_1:String, _arg_2:String, _arg_3:String, _arg_4:String=null, _arg_5:int=0):void;
        function _Str_21176(_arg_1:int):void;
        function _Str_20499(_arg_1:int):void;
		function votePoll(counter:int):void;
        function _Str_19069(_arg_1:int, _arg_2:int, _arg_3:Array):void;
        function _Str_21574(_arg_1:String):void;
        function _Str_16989(_arg_1:String):void;
        function _Str_19906(_arg_1:int):void;
        function _Str_21026(_arg_1:String):void;
        function _Str_18152(_arg_1:int):void;
        function _Str_15299(_arg_1:int):void;
        function _Str_20746(_arg_1:int, _arg_2:String):void;
        function _Str_5984(_arg_1:int, _arg_2:int):void;
        function _Str_20139(_arg_1:int):void;
        function _Str_21257(_arg_1:int):void;
        function _Str_20488(_arg_1:String, _arg_2:Boolean):void;
        function _Str_13781(_arg_1:int):void;
        function _Str_21066(_arg_1:int):void;
        function _Str_21025(_arg_1:int):void;
        function _Str_19075(_arg_1:int):void;
        function _Str_21635(_arg_1:int):void;
        function _Str_21895(_arg_1:int):void;
        function _Str_21525(_arg_1:int, _arg_2:int):void;
        function _Str_21289(_arg_1:int):void;
        function _Str_20268():void;
        function _Str_11375(_arg_1:int):void;
        function _Str_21093(_arg_1:int, _arg_2:String, _arg_3:String):void;
        function _Str_20236(_arg_1:int):void;
        function get _Str_3871():int;
        function set _Str_3871(_arg_1:int):void;
        function get _Str_2781():Boolean;
        function set _Str_2781(_arg_1:Boolean):void;
        function set roomControllerLevel(_arg_1:int):void;
        function get roomControllerLevel():int;
        function get _Str_3672():Boolean;
        function set _Str_3672(_arg_1:Boolean):void;
        function get _Str_19282():Boolean;
        function set _Str_2738(_arg_1:int):void;
        function get _Str_3827():int;
        function get _Str_7411():Boolean;
        function set _Str_3827(_arg_1:int):void;
        function get userDataManager():UserDataManager;
        function get _Str_4780():Boolean;
        function set _Str_4780(_arg_1:Boolean):void;
        function get _Str_9439():Boolean;
        function set _Str_9439(_arg_1:Boolean):void;
        function get _Str_18311():Boolean;
        function get _Str_5249():Boolean;
        function set _Str_5249(_arg_1:Boolean):void;
        function get isGameSession():Boolean;
        function get _Str_4418():_Str_2817;
        function set _Str_4418(_arg_1:_Str_2817):void;
        function get _Str_16924():Boolean;
        function set _Str_16924(_arg_1:Boolean):void;
        function _Str_19090(_arg_1:int):void;
        function _Str_21562(_arg_1:int):void;
        function _Str_21305(_arg_1:int):void;
        function _Str_19996():void;
    }
}
