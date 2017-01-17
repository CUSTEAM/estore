package ajax.order;
 
import java.util.List;

//import org.apache.struts2.json.annotations.JSON;

import action.BaseAction;

/**
 * 取得學生加退選歷史
 * @author John
 */
public class order extends BaseAction{
	
	private List list;
	
	//@JSON(format="yyyy-MM-dd HH:mm:ss")
	//@JSON(serialize=false)
	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}
	
	//@JSON(format="yyyy-MM-dd HH:mm:ss")
	//@JSON(serialize=false)
	public String execute() {	
		System.out.println("itemName:"+request.getParameter("itemName"));
		//System.out.println("products:"+request.getParameter("products"));
		//setList(df.sqlGet("SELECT * FROM products"));		
        
		
		
		return SUCCESS;               
    }
	
}