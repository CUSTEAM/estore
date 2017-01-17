package action;

import java.util.Map;

public class OrderManager extends BaseAction{
	
	public String Oid, tel, email, status, begin, end, category, username, eOid, eStatus; 
	
	public String execute(){
		
		return SUCCESS;
	}
	
	public String search(){
		
		StringBuilder sql=new StringBuilder("SELECT cps.name as sname,(SELECT SUM(price*cnt)FROM order_detail WHERE order_oid=o.Oid)as cnt, o.* FROM order_main o LEFT OUTER JOIN code_product_status cps ON o.status=cps.id WHERE o.Oid=o.Oid ");
		if(!Oid.trim().equals(""))sql.append("AND o.Oid="+Oid+" ");
		if(!tel.trim().equals(""))sql.append("AND o.tel='"+tel+"'");
		if(!email.trim().equals(""))sql.append("AND o.email='"+email+"'");
		
		
		if(!status.trim().equals("")){
			if(status.trim().equals("*")){
				sql.append("AND o.status IS NULL ");
			}else{
				sql.append("AND o.status='"+status+"'");
			}
			
		}
		
		
		
		if(!begin.trim().equals(""))sql.append("AND o.order_date>='"+begin+"'");
		if(!begin.trim().equals(""))sql.append("AND o.order_date<='"+end+"'");
		//if(!category.trim().equals(""))sql.append("AND o.category='"+category+"'");
		if(!username.trim().equals(""))sql.append("AND o.username LIKE'%"+username+"%'");
		//System.out.println(sql);
		request.setAttribute("orders", df.sqlGet(sql.toString()));
		return SUCCESS;
	}
	
	public String edit(){
		
		Map map=df.sqlGetMap("SELECT cps.id, cps.name as sname,(SELECT SUM(price*cnt)FROM order_detail WHERE order_oid=o.Oid)as cnt, o.* FROM order_main o LEFT OUTER JOIN code_product_status cps ON o.status=cps.id WHERE o.Oid="+eOid);
		map.put("products", df.sqlGet("SELECT od.price, od.cnt, p.name, p.category, cpc.name as cname FROM order_detail od, products p, code_product_category cpc WHERE od.product=p.Oid AND p.category=cpc.id AND od.order_oid="+eOid));
		request.setAttribute("order", map);
		
		return SUCCESS;
	}
	
	public String save(){
		
		df.exSql("UPDATE order_main SET status='"+eStatus+"' WHERE Oid="+eOid);
		
		return edit();
	}
	
	public String delete(){
		
		return search();
	}

}
