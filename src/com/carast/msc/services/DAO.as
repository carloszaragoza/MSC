package com.carast.msc.services
{
	import com.carast.msc.models.LoginUserModel;

	public interface DAO
	{
		 function getAllData():void;
		 function getDataByID(user:LoginUserModel):void;
		 function updateData():void;
		 function deleteData():void;
		 function addData():void;
	}
}