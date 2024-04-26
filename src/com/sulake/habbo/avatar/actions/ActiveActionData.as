﻿package com.sulake.habbo.avatar.actions
{
    public class ActiveActionData implements IActiveActionData 
    {
        private var _actionType:String = "";
        private var _actionParameter:String = "";
        private var _definition:IActionDefinition;
        private var _startFrame:int = 0;
        private var _overridingAction:String;

        public function ActiveActionData(k:String, _arg_2:String="", _arg_3:int=0)
        {
            this._actionType = k;
            this._actionParameter = _arg_2;
            this._startFrame = _arg_3;
        }

        public function get _Str_695():String
        {
            return this._actionType;
        }

        public function get _Str_727():String
        {
            return this._actionParameter;
        }

        public function get _Str_742():IActionDefinition
        {
            return this._definition;
        }

        public function get id():String
        {
            if (this._definition == null)
            {
                return "";
            }
            return (this._definition.id + "_") + this._actionParameter;
        }

        public function set _Str_727(k:String):void
        {
            this._actionParameter = k;
        }

        public function set _Str_742(k:IActionDefinition):void
        {
            this._definition = k;
        }

        public function dispose():void
        {
            this._actionType = null;
            this._actionParameter = null;
            this._definition = null;
        }

        public function get _Str_664():int
        {
            return this._startFrame;
        }

        public function get _Str_707():String
        {
            return this._overridingAction;
        }

        public function set _Str_707(k:String):void
        {
            this._overridingAction = k;
        }

        public function toString():String
        {
            return (("Action: " + this._actionType) + "  param: ") + this._actionParameter;
        }
    }
}
