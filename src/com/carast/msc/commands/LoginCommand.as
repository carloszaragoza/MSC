package com.carast.msc.commands
{
	import com.carast.msc.events.LoginUserEvent;
	import com.carast.msc.models.UserModel;
	import com.carast.msc.services.DAO;
	import com.carast.msc.services.LoginDAO;
	
	import org.robotlegs.mvcs.Command;
	
	public class LoginCommand extends Command
	{
		[Inject]
		public var evento:LoginUserEvent;
		
		[Inject]
		public var services:DAO;
		
		public function LoginCommand()
		{
			super();
		}
		override public function execute():void
		{
			//service.getDataByID();
			services.getDataByID(evento.user);
			trace("-LoginCommand--->Execute the command")
		}
	}
}