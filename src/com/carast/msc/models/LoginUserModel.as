package com.carast.msc.models
{
	public class LoginUserModel
	{
		private var _user:String;
		private var _pass:String;
		public function LoginUserModel()
		{
		}

		public function get pass():String
		{
			return _pass;
		}

		public function set pass(value:String):void
		{
			_pass = value;
		}

		public function get user():String
		{
			return _user;
		}

		public function set user(value:String):void
		{
			_user = value;
		}

	}
}