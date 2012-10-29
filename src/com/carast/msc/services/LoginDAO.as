package com.carast.msc.services
{
	import com.carast.msc.models.LoginUserModel;
	import com.carast.msc.models.UserModel;
	
	import org.robotlegs.mvcs.Actor;
	
	public class LoginDAO extends Actor implements DAO
	{
		[Inject] 
		public var userModel:UserModel;
		
		public function LoginDAO()
		{
			super();
		}
		
		public function getAllData():void
		{
		}
		
		public function getDataByID(user:LoginUserModel):void
		{
				trace("-LoginDAO--->Get data by ID")
		}
		
		public function updateData():void
		{
		}
		
		public function deleteData():void
		{
		}
		
		public function addData():void
		{
		}
	}
}