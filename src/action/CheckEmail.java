package action;

import model.OrderMain;

public class CheckEmail extends BaseAction{
	
	public String execute(){
		String msg;
		try{
			OrderMain o=(OrderMain) df.hqlGetListBy("FROM OrderMain WHERE confirm='"+request.getParameter("o")+"'").get(0);
			
			
			if(o.getStatus()==null){
				o.setStatus("1");
				df.update(o);
				msg="訂單編號 "+o.getOid()+"確認完成";
			}else{
				msg="訂單編號 "+o.getOid()+"已確認";
			}
		}catch(Exception e){
			msg="無此訂單";
		}
			
			
		
			
		
		request.setAttribute("msg", msg);
		return SUCCESS;
	}

}
