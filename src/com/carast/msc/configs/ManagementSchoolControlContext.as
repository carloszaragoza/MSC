package com.carast.msc.configs
{
	import com.carast.msc.commands.LoginCommand;
	import com.carast.msc.events.LoginUserEvent;
	import com.carast.msc.views.LoginView;
	import com.carast.msc.views.LoginViewMediator;
	
	import flash.display.DisplayObjectContainer;
	
	import mx.rpc.remoting.RemoteObject;
	
	import org.robotlegs.mvcs.Context;
	
	public class ManagementSchoolControlContext extends Context
	{
		public function ManagementSchoolControlContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			//TODO: implement function
			super(contextView, autoStartup);
		}
		override public function startup():void
		{
			trace("-ManagementSchoolControlContext--->The context is load");
			var remoteObject:RemoteObject = new RemoteObject("ColdFusion");
			remoteObject.source = "ihe.mscfc.Main";
			remoteObject.showBusyCursor = true;
			injector.mapValue(RemoteObject, remoteObject, "remoteObject");
			trace("-ManagementSchoolControlContext--->RemoteObject is injected");
			mediatorMap.mapView(LoginView, LoginViewMediator);
			commandMap.mapEvent(LoginUserEvent.LOGIN, LoginCommand);
		}
	}
}