package action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

public class BodyManager extends BaseAction{
	
	
	
	public String 
	site_name,
	body_discount,	
	body_why,	
	body_video,	
	body_how,	
	body_shopnum,	
	body_deliv,	
	body_clients,	
	body_address,	
	body_contacts,info;
	
	public String execute(){
		/*List<Map>list=df.sqlGet("SELECT * FROM paramater WHERE company='"+getSession().getAttribute("com")+"'");
		Map b=new HashMap();
		for(int i=0; i<list.size(); i++){
			b.put(list.get(i).get(""), value)
		}*/
		//request.setAttribute("body", );
		
		return SUCCESS;
	}
	
	public String save(){
		
		if(body_contacts.equals("")){
			//getContext().setAttribute("body_contacts", null);
			df.exSql("UPDATE paramater SET value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='body_contacts'");
		}else{
			df.exSql("UPDATE paramater SET value='"+body_contacts+"' WHERE company='"+getSession().getAttribute("com")+"' AND name='body_contacts'");
			//getContext().setAttribute("body_contacts", body_contacts);
		}
		
		if(body_address.equals("")){
			//getContext().setAttribute("body_address", null);
			df.exSql("UPDATE paramater SET value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='body_address'");
		}else{
			df.exSql("UPDATE paramater SET value='"+body_address+"'WHERE company='"+getSession().getAttribute("com")+"' AND name='body_address'");
			//getContext().setAttribute("body_address", body_address);
		}
		
		if(body_clients.equals("")){
			//getContext().setAttribute("body_clients", null);
			df.exSql("UPDATE paramater SET value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='body_clients'");
		}else{
			df.exSql("UPDATE paramater SET value='"+body_clients+"'WHERE company='"+getSession().getAttribute("com")+"' AND name='body_clients'");
			//getContext().setAttribute("body_clients", body_clients);
		}
		
		if(body_deliv.equals("")){
			//getContext().setAttribute("body_deliv", null);
			df.exSql("UPDATE paramater SET value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='body_deliv'");
		}else{
			df.exSql("UPDATE paramater SET value='"+body_deliv+"'WHERE company='"+getSession().getAttribute("com")+"' AND name='body_deliv'");
			//getContext().setAttribute("body_deliv", body_deliv);
		}
		
		if(body_shopnum.equals("")){
			//getContext().setAttribute("body_shopnum", null);
			df.exSql("UPDATE paramater SET value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='body_shopnum'");
		}else{
			df.exSql("UPDATE paramater SET value='"+body_shopnum+"'WHERE company='"+getSession().getAttribute("com")+"' AND name='body_shopnum'");
			//getContext().setAttribute("body_shopnum", body_shopnum);
		}
		
		
		if(body_how.equals("")){
			//getContext().setAttribute("body_how", null);
			df.exSql("UPDATE paramater SET value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='body_how'");
		}else{
			df.exSql("UPDATE paramater SET value='"+body_how+"'WHERE company='"+getSession().getAttribute("com")+"' AND name='body_how'");
			//getContext().setAttribute("body_how", body_how);
		}		
		
		if(site_name.equals("")){
			//getContext().setAttribute("site_name", null);
			df.exSql("UPDATE paramater SET  value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='site_name'");
		}else{
			df.exSql("UPDATE paramater SET  value='"+site_name+"'WHERE company='"+getSession().getAttribute("com")+"' AND name='site_name'");
			//getContext().setAttribute("site_name", site_name);
		}
		
		if(body_discount.equals("")){
			//getContext().setAttribute("body_discount", null);
			df.exSql("UPDATE paramater SET value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='body_discount'");
		}else{
			df.exSql("UPDATE paramater SET value='"+body_discount+"'WHERE company='"+getSession().getAttribute("com")+"' AND name='body_discount'");
			//getContext().setAttribute("body_discount", body_discount);
		}
		
		if(body_why.equals("")){
			//getContext().setAttribute("body_why", null);
			df.exSql("UPDATE paramater SET value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='body_why'");
		}else{
			df.exSql("UPDATE paramater SET value='"+body_why+"'WHERE company='"+getSession().getAttribute("com")+"' AND name='body_why'");
			//getContext().setAttribute("body_why", body_why);
		}
		
		if(body_video.equals("")){			
			df.exSql("UPDATE paramater SET note=null, value=null WHERE company='"+getSession().getAttribute("com")+"' AND name='body_video'");
		}else{
			df.exSql("UPDATE paramater SET note='"+info+"', value='"+body_video+"'WHERE company='"+getSession().getAttribute("com")+"' AND name='body_video'");
			//getContext().setAttribute("body_video", body_video);
		}
		
		getContext().setAttribute("paramater", df.sqlGet("SELECT * FROM paramater"));
		
		return SUCCESS;
	}

}
