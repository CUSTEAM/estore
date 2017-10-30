package action;

public class AIOReceiver extends BaseAction{
	
	public String execute() {
		System.out.println("test listen...");
		System.out.println("TradeNo:"+request.getParameter("TradeNo"));
		System.out.println("MerchantTradeNo:"+request.getParameter("MerchantTradeNo"));
		System.out.println("RtnCode:"+request.getParameter("RtnCode"));
		return null;
	}

}
