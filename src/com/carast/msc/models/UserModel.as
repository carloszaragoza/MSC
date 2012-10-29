package com.carast.msc.models
{
	import com.carast.msc.services.DAO;
	
	import org.robotlegs.mvcs.Actor;

	public class UserModel extends Actor
	{
		private var _user:String;
		private var _pass:String;
		private var _name:String;
		private var _tel:String;
		private var _email:String;
		[Inject]
		public var dao:DAO;
		public function UserModel(user:String, pass:String)
		{
			this.user = user;
			this.pass = pass;
		}
		public function signUser():void
		{
			dao.getDataByID();
		}
		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}

		public function get tel():String
		{
			return _tel;
		}

		public function set tel(value:String):void
		{
			_tel = value;
		}

		public function get email():String
		{
			return _email;
		}

		public function set email(value:String):void
		{
			_email = value;
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