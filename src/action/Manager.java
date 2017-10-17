package action;

public class Manager extends BaseAction{
	
	public String execute(){
		
		//System.out.println(x);
		getSession().setAttribute("com", request.getParameter("com"));
		
		return SUCCESS;
	}

}
