package services.listener.task;

import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import service.impl.DataFinder;

public class eTaskListener extends TimerTask {
    private ServletContextEvent event = null;
    
    public eTaskListener(ServletContextEvent event){
        this.event = event;
    }
    
    public void run(){

    	//context.removeAttribute("app_name");
    	ApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(event.getServletContext());	    	
		DataFinder df=(DataFinder) context.getBean("DataFinder");
		ServletContext servletContext = event.getServletContext();
		
		List<Map>tmp1, tmp2;
		List<Map>c, d;
		
		//判斷是否為Debug模式
		System.out.println("載入判斷debug模式");
		boolean debug=true;
		try {			
			Enumeration e1 = (Enumeration) NetworkInterface.getNetworkInterfaces();			
			while (e1.hasMoreElements()) {
				NetworkInterface ni = (NetworkInterface) e1.nextElement();
				Enumeration e2 = ni.getInetAddresses();
				while (e2.hasMoreElements()) {
					InetAddress ia = (InetAddress) e2.nextElement();
					if (ia instanceof Inet6Address)
						continue; // IPv6 address
					// System.out.print(ia.getHostAddress());
					//if (e2.hasMoreElements()) {
						// System.out.print(", ");
					//}
					if(df.sqlGetInt("SELECT COUNT(*)FROM  sys_server WHERE name='runtimehost' AND runtime LIKE'%"+ia.getHostAddress()+"%'")>0){
						debug=false;			
					} 
				}
			}
		} catch (Exception e) {
			e.printStackTrace();			
		}		
		servletContext.setAttribute("debug", debug);
		System.out.println("debug模式為"+debug);
		
		System.out.println("載入各種代碼");		
		tmp1=df.sqlGet("SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE table_schema='estore'AND table_name LIKE 'code%'");
		for(int i=0; i<tmp1.size(); i++){
			System.out.println("建立"+tmp1.get(i).get("table_name"));
			servletContext.setAttribute(tmp1.get(i).get("table_name").toString(), df.sqlGet("SELECT * FROM "+tmp1.get(i).get("table_name")));			
		}
		
		
		System.out.println("載入商品至各項分類");
		tmp1=(List<Map>) servletContext.getAttribute("code_product_category");
		for(int i=0; i<tmp1.size(); i++){			
			
			tmp1.get(i).put("product_cnt", df.sqlGetStr("SELECT IFNULL(COUNT(*),0)FROM products WHERE category='"+tmp1.get(i).get("id")+"'"));
			
			
			tmp2=df.sqlGet("SELECT p.* FROM code_product_category c, products p WHERE p.category=c.id AND p.category='"+tmp1.get(i).get("id")+"'");
			for(int j=0; j<tmp2.size(); j++){
				
				tmp2.get(j).put("pics", df.sqlGet("SELECT path FROM products_pics WHERE product="+tmp2.get(j).get("Oid")+" ORDER BY sequence"));
			}
			tmp1.get(i).put("products", tmp2);
			
			
			
			
			/*tmp2=df.sqlGet("SELECT * FROM "+tmp1.get(i).get("table_name"));
			for(int j=0; j<tmp2.size(); j++){
				//代碼中的字串延伸1
				//if(tmp2.get(j).get("subQuery1")!=null)
				tmp2.get(j).put("subQuery1", );
				
				
				//代碼中的陣列延伸1
				if(tmp2.get(j).get("subQueryList1")!=null)
				tmp2.get(j).put("subQueryList1", );
				
				
			}
			tmp1.get(i).put("subQuery1", value)
			*/
		}
		servletContext.setAttribute("code_product_category", tmp1);
		
		
		System.out.println("載入系統參數");
		tmp1=df.sqlGet("SELECT * FROM paramater");	
		for(int i=0; i<tmp1.size(); i++){
			System.out.println("建立"+tmp1.get(i).get("name"));
			servletContext.setAttribute(tmp1.get(i).get("name").toString(), tmp1.get(i).get("value"));
		}
		
    	
		
    }

}