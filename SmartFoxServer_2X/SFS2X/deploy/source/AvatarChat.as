﻿/**
	
		
		{
			clearTimeout(avatar.chatTimer)
			
			avatar.chatBubble.visible = false
			testRes()
		
		}
		
		public function testRes():void
		{
			sfs.addEventListener(SFSEvent.EXTENSION_RESPONSE, onExtensionResponse);
			ExtensionRequest("resTest");
		
		}
		
		 private function onExtensionResponse(evt:SFSEvent):void
     {
         if (evt.params.cmd == "resTest")
         {
             var responseParams:ISFSObject = evt.params.params as SFSObject;
             
             // We expect an int parameter called "sum"
             trace("The response is: " + responseParams.getInt("theint"));
         }
     }