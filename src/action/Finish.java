package action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.Cookie;

import org.json.JSONArray;
import org.json.JSONObject;

import ajax.order.OrderClient;
import model.OrderDetail;
import model.OrderMain;

public class Finish extends BaseAction{
	
	
	public String order_name, order_tel, order_email, order_addr, order_note;
	
	private OrderMain saveOrder(Date now){
		
		OrderMain o=new OrderMain();
		o.setAddr(order_addr);
		o.setEmail(order_email);
		o.setTel(order_tel);
		o.setUsername(order_name);
		o.setConfirm(String.valueOf(now.getTime()));
		o.setOrder_date(now);
		df.update(o);
		
		return o;
	}
	
	private void sendMail(String info, OrderMain o, float t) {        
		//圖片多媒體電子郵件會被收/發方伺服器判定為垃圾, 當然, 學校IP是一定被當垃圾
        try{
            // 初始設定，username 和 password 非必要
            Properties props = new Properties();
            props.setProperty("mail.transport.protocol", "smtp");
            props.setProperty("mail.host", "cc.cust.edu.tw");
            props.setProperty("mail.user", "CIS");
            props.setProperty("mail.password", "cust!@#");
            //props.setProperty("mail.host", "gmail.com");
            //props.setProperty("mail.user", "july081978");
            //props.setProperty("mail.password", "shawn67788776");
            props.setProperty("mail.smtps.auth", "true");
            //props.setProperty("mail.smtp.from", "CIS@cc.cust.edu.tw");
            Session mailSession = Session.getDefaultInstance(props, null);
            Transport transport = mailSession.getTransport();

            // 產生整封 email 的主體 message
            MimeMessage msg = new MimeMessage(mailSession);

            // 設定主旨
            msg.setSubject("中華商城購物清單確認信");
            msg.setFrom(new InternetAddress("CIS"));
            //msg.setSubject("測試");
            //msg.setFrom(new InternetAddress("John"));
            msg.setSender(new InternetAddress("CIS@cc.cust.edu.tw"));
            // 文字部份，注意 img src 部份要用 cid:接下面附檔的header
            MimeBodyPart textPart = new MimeBodyPart();
            StringBuffer html = new StringBuffer();
            html.append("<font size='+2'>"+o.getUsername()+"您好<br><br>您在中華商城購買清單如下:<br>"+info+"<br><br>共計: "+t+"元<br>");
            if((boolean)getContext().getAttribute("debug")){
            	html.append("點選 <a href='http://john.cust.edu.tw/estore/checkEmail.vx?o="+o.getConfirm()+"'>確認後將開始配送</a></font>");
            	//html.append("點選 <a href='http://john.cust.edu.tw/estore/confirm.vx?c="+o.getConfirm()+"'>修改後將取消訂</a></font>");
            }else{
            	html.append("點選 <a href='http://ap.cust.edu.tw/checkEmail.vx?o="+o.getConfirm()+"'>確認後將開始配送</a></font>");
            }
            
            textPart.setContent(html.toString(), "text/html; charset=UTF-8");

            // 圖檔部份，注意 html 用 cid:image，則header要設<image>
            /*MimeBodyPart picturePart = new MimeBodyPart();
            FileDataSource fds = new FileDataSource("YourPictureFile.jpg");
            picturePart.setDataHandler(new DataHandler(fds));
            picturePart.setFileName(fds.getName());
            picturePart.setHeader("Content-ID", "<image>");*/

            Multipart email = new MimeMultipart();
            email.addBodyPart(textPart);
            //email.addBodyPart(picturePart);

            msg.setContent(email);
            //message.addRecipient(Message.RecipientType.TO, new InternetAddress("hsiao@cc.cust.edu.tw"));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(o.getEmail()));
            transport.connect();
            transport.sendMessage(msg, msg.getRecipients(Message.RecipientType.TO))
                                  ;
            transport.close();
        } catch (Exception e) {
            //e.printStackTrace();
        } 
	}	
	
	public String cashPay(){		
		Date now=new Date();
		OrderMain o=saveOrder(now);
		float t = 0;
		JSONArray jsona = new JSONArray(order_note);
		JSONObject json;		
		OrderDetail d;		
		StringBuilder info=new StringBuilder();
        for(int i=0; i<jsona.length(); i++){
        	json = new JSONObject(jsona.get(i).toString());
        		d=new OrderDetail();
        		d.setCnt(Integer.parseInt(json.getString("quant")));
        		d.setOrder_oid(o.getOid());
        		d.setPrice(Float.parseFloat(json.getString("itemPrice")));
        		d.setProduct(Integer.parseInt(json.getString("itemId")));        		
        		df.update(d);        		     	
        		t+=d.getPrice()*d.getCnt();
        		info.append(json.getString("itemName")+", 數量: "+json.getString("quant")+", 單價: "+json.getString("itemPrice")+"<br>");
        }
        sendMail(info.toString(), o, t);        
		request.setAttribute("msg", info);	
		return SUCCESS;
	}
	
	
	private String url;
	
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String cardPay() throws IOException{
		
		SimpleDateFormat sf=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date now=new Date();
		
		OrderMain o=saveOrder(now);
		int t = 0;
		JSONArray jsona = new JSONArray(order_note);
		JSONObject json;		
		OrderDetail d;		
		StringBuilder info=new StringBuilder();
        for(int i=0; i<jsona.length(); i++){
        	json = new JSONObject(jsona.get(i).toString());
        		d=new OrderDetail();
        		d.setCnt(Integer.parseInt(json.getString("quant")));
        		d.setOrder_oid(o.getOid());
        		d.setPrice(Float.parseFloat(json.getString("itemPrice")));
        		d.setProduct(Integer.parseInt(json.getString("itemId")));        		
        		df.update(d);        		     	
        		t+=d.getPrice()*d.getCnt();
        		info.append(json.getString("itemName")+", 數量: "+json.getString("quant")+", 單價: "+json.getString("itemPrice")+"<br>");
        }
        sendMail(info.toString(), o, t); 	
        OrderClient http=new OrderClient (response);
		
        http.setParameter("CheckMacValue","1");		 
		http.setParameter("EncryptType","1");
		http.setParameter("MerchantID","2000132");
		http.setParameter("MerchantTradeNo",999+o.getOid().toString());
		http.setParameter("MerchantTradeDate",sf.format(now));
		http.setParameter("OrderResultURL","https://ap26.cust.edu.tw/estore");
		http.setParameter("PaymentType","aio");
		http.setParameter("TotalAmount",String.valueOf(t));
		http.setParameter("TradeDesc","custec");
		http.setParameter("ItemName","test");
		http.setParameter("ReturnURL","https://ap26.cust.edu.tw/estore/AIOBack.vx");
		//http.setParameter("ReturnURL","https://ap26.cust.edu.tw/estore/AIORemote.vx?RtnBase=https://ap26.cust.edu.tw/estore/AIOReceiver.vx");
		http.setParameter("ChoosePayment","Credit");		 
		 
        String data="HashKey=5294y06JbISpM5x9";
        data+="&ChoosePayment=Credit"; 
        data+="&EncryptType=1"; 
        data+="&ItemName=test"; 
        data+="&MerchantID=2000132";
        data+="&MerchantTradeDate="+sf.format(now); 
        data+="&MerchantTradeNo="+999+o.getOid(); 
        data+="&OrderResultURL=https://ap26.cust.edu.tw/estore";
		data+="&PaymentType=aio";	
		data+="&ReturnURL=https://ap26.cust.edu.tw/estore/AIOBack.vx"; 
		//data+="&ReturnURL=https://ap26.cust.edu.tw/estore/AIORemote.vx?RtnBase=https://ap26.cust.edu.tw/estore/AIOReceiver.vx"; 
		data+="&TotalAmount="+t;
		data+="&TradeDesc=custec"; 		
		data+="&HashIV=v77hoKGq4kWxNNIS";		
		//System.out.println(data);		
		data=URLEncoder.encode(data, "UTF-8");		
		data=data.toLowerCase();		
		MessageDigest messageDigest;
		String encodeStr = "";
		
		try {
			messageDigest = MessageDigest.getInstance("SHA-256");
			messageDigest.update(data.getBytes());
			encodeStr = byte2Hex(messageDigest.digest());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		http.setParameter("CheckMacValue",encodeStr);		
		http.sendByPost("https://payment-stage.ecpay.com.tw/Cashier/AioCheckOut/V5");
		return null;
		
	}
	
	private String byte2Hex(byte[] bytes) {
		StringBuffer stringBuffer = new StringBuffer();
		String temp = null;
		for (int i = 0; i < bytes.length; i++) {
			temp = Integer.toHexString(bytes[i] & 0xFF);
			if (temp.length() == 1) {
				// 補0
				stringBuffer.append("0");
			}
			stringBuffer.append(temp);
		}
		return stringBuffer.toString();
	}

}
