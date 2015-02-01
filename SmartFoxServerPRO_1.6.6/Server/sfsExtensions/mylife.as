function init()
{
        // Using trace will send data to the server console
        trace("Hello from the Simple Extension Example!")
}

function destroy()
{
        trace("Bye bye!")
}

function handleRequest(cmd, params, user, fromRoom)
{
        
        if (cmd == "double")
        {
                var response = {}
                
                response._cmd = "double"
                response.values = []
                
                for (var i = 0; i < params.values.length; i++)
                {
                        var n = params.values[i]
                        response.values[i] = n * 2
                }
                
                _server.sendResponse(response, -1, null, [user])
				trace("double")
        }
		
}

function handleInternalEvent(evt)
{
        // Simply print the name of the event that was received
        trace("Event received: " + evt.name)
}