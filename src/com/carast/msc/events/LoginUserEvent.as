package com.carast.msc.events
{
	import com.carast.msc.models.LoginUserModel;
	
	import flash.events.Event;
	
	public class LoginUserEvent extends Event
	{
		public static const LOGIN:String  = 'login';
		public static const LOGOUT:String  = 'logout';
		public static const USER:String  = 'user';
		public static const HINT:String  = 'hint';
		private var _user:LoginUserModel;
		public function LoginUserEvent(type:String, user:LoginUserModel)
		{
			//TODO: implement function
			super(type);
			user = user;
		}

		public function get user():LoginUserModel
		{
			return _user;
		}

		public function set user(value:LoginUserModel):void
		{
			_user = value;
		}
		override public function clone():Event
		{
			return new LoginUserEvent(type, this.user);
		}

	}
}