package my.life;

import com.smartfoxserver.v2.extensions.SFSExtension;

public class MylifeExtension extends SFSExtension
{

	@Override
	public void init() 
	{
		trace("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n****MYLIFE IS READY****\n\n\n\n\n\n\n\n");
		this.addRequestHandler("math", MathHandler.class);
		
	}
	
	
}

