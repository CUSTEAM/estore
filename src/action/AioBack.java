package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

public class AioBack extends BaseAction{
	
	public String execute() throws IOException {		
		
		
	    Map params=request.getParameterMap();
	    Iterator i=params.keySet().iterator();
	    String key, value;
	    while(i.hasNext()){
	    	key = (String) i.next();
	        value = ((String[]) params.get(key))[0];
	    	System.out.println(key+"="+value);	        
	    }
		
		
		PrintWriter out=response.getWriter();		
		out.println("1|ok");
		out.close();
		out.flush();
		return null;
	}

}
