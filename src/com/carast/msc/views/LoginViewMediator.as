////////////////////////////////////////////////////////////////////////////////
//
//  Management School Control by Carlos Zaragoza is licensed under a Creative 
//  Commons Reconocimiento-NoComercial-CompartirIgual 3.0
//
//  NOTICE: This licencing permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////
package com.carast.msc.views
{
	import com.carast.msc.events.LoginUserEvent;
	import com.carast.msc.models.LoginUserModel;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 *  <p>The <code>LoginViewMediator</code> controlled the behavior the LoginView</p>
	 * 
	 *	@author Carlos Zaragoza
	 *  @langversion 3.0
	 *  @playerversion Flash 11
	 *  @productversion Flex 4.5
	 * 
	 */
	public class LoginViewMediator extends Mediator
	{
		[Inject]
		public var view:LoginView;
		
		
		public function LoginViewMediator()
		{
			super();
		}
		override public function onRegister():void
		{
			eventMap.mapListener(view.btnTriggerLoginAccess, MouseEvent.CLICK,loginByClicOnButton,MouseEvent);
		}
		
		private function loginByClicOnButton(event:MouseEvent):void
		{
			var user:LoginUserModel;
			user.user = view.txtLoginUser.text;
			user.pass = view.txtLoginPassword.text;
			var loginEvent:LoginUserEvent = new LoginUserEvent(LoginUserEvent.LOGIN,user);
			dispatch(loginEvent);
			trace("-LoginViewMediator--->Dispach event");
		}
	}
}