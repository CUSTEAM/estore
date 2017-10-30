package action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

public class AioRemote extends BaseAction{
	
	public String execute() throws IOException {
		
	    Map params=request.getParameterMap();
	    /*Iterator i=params.keySet().iterator();
	    String key, value, rtncode;
	    while(i.hasNext()){
	    	key = (String) i.next();
	        value = ((String[]) params.get(key))[0];
	    	System.out.println(key+"="+value);
	        if(key.equals("RetCode"))rtncode=value;
	    }*/	
		PrintWriter out=response.getWriter();		
		out.println("1|ok");
		out.close();
		out.flush();		
		System.out.println("RtnBase="+request.getParameter("RtnBase"));
		send(request.getParameter("RtnBase")+"?TradeNo="+request.getParameter("TradeNo")+"&RtnCode="+request.getParameter("RtnCode")+"&MerchantTradeNo="+request.getParameter("MerchantTradeNo"));
		/*if(request.getParameter("rtnpage")==null) {
			send(request.getParameter("rtnpage"));
		}else {
			//send("http://192.192.231.43/cust_ecomm");
			send("https://ap26.cust.edu.tw/estore/AIORemote");
		}*/
		return null;
	}
	
	private void send(String url) throws IOException {		

		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		// optional default is GET
		con.setRequestMethod("GET");
		//add request header
		//con.setRequestProperty("User-Agent", USER_AGENT);
		int responseCode = con.getResponseCode();
		//System.out.println("\nSending 'GET' request to URL : " + url);
		//System.out.println("Response Code : " + responseCode);
		/*
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();
		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
		*/
		System.out.println(responseCode);
		//System.out.println(response.toString());
		
		
	}

}
