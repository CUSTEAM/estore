package action;

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
        		/*System.out.print(json.getString("itemId")+", ");
        		System.out.print(json.getString("itemName")+", ");
        		System.out.print(json.getString("pic")+", ");
        		System.out.print(json.getString("quant"));
        		System.out.println();*/        	
        		t+=d.getPrice()*d.getCnt();
        		//info.append(json.getString("itemName")+", 數量: "+json.getString("quant")+", 單價: "+json.getString("itemPrice")+"\n");
        		info.append(json.getString("itemName")+", 數量: "+json.getString("quant")+", 單價: "+json.getString("itemPrice")+"<br>");
        }
        //純文字電子郵件
		/*String host = "cc.cust.edu.tw";  
        int port = 25;  
        final String username = "hsiao@cc.cust.edu.tw";  
        final String password = "E122713583";  
  
        Properties props = new Properties();  
        props.put("mail.smtp.host", host);  
        props.put("mail.smtp.auth", "true");  
        props.put("mail.smtp.starttls.enable", "true");  
        props.put("mail.smtp.port", port);  
          
        Session session = Session.getInstance(props,new Authenticator(){  
              protected PasswordAuthentication getPasswordAuthentication() {  
                  return new PasswordAuthentication(username, password);  
              }} );  
           
        try {  
  
        Message message = new MimeMessage(session);  
        //message.
        message.setFrom(new InternetAddress("hsiao@cc.cust.edu.tw"));  
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("hsiao@cc.cust.edu.tw"));  
        message.setSubject("中華商城購物清單確認信");  
        message.setText("您好\n\n您的購買清單如下:\n"+info+"\n\n共計: "+t+"元");  
  
        Transport transport = session.getTransport("smtp");  
        transport.connect(host, port, username, password);  
  
        Transport.send(message);  
  
        System.out.println("Done");  
  
        } catch (MessagingException e) {  
            throw new RuntimeException(e);  
        }*/ 
        
        
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
            e.printStackTrace();
        } 
        
		request.setAttribute("msg", info);		
        
		//request.setAttribute("msg", saveOrder());
		return SUCCESS;
	}
	
	
	private String url;
	
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String cardPay(){
		
		
		/*
		
		SimpleDateFormat sf=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date now=new Date();
		//String q = "random word £500 bank $";
		//String url = "http://example.com/query?q=" + URLEncoder.encode(q, "UTF-8");
		//string Order_Amount = Request.QueryString["Order_Amount"]; 
        //string Order_Content = Request.QueryString["Order_Content"];
        //string Order_Number = Request.QueryString["Order_Number"];
		StringBuilder url=new StringBuilder("https://payment-stage.ecpay.com.tw/Cashier/AioCheckOut/V5");
        //SortedDictionary<string, string> testStr = new SortedDictionary<string, string>();
		
        url.append("?MerchantID=2000132");//合作特店編號(由綠界提供)。
        url.append("&MerchantTradeNo="+Order_Number);//合作特店交易編號(由合作特店提供)。
        url.append("&MerchantTradeDate", DateTime.Now.ToString(sf.format(now)));//合作特店交易時間。 
        url.append("PaymentType", "aio");//交易類型。請固定填入 aio  
        url.append("TotalAmount", Order_Amount);//交易金額。 
        //Response.Write("<script>alert('"+ Request.QueryString["Order_Amount"] + "');</script>");
        //testStr.Add("TotalAmount", "18888");//交易金額。 
        testStr.Add("TradeDesc", "中華科大電商網");//交易描述。
        testStr.Add("ItemName", Order_Content);//商品名稱。
        //testStr.Add("ItemName", "My Product");//商品名稱。
        testStr.Add("ReturnURL", "http://192.192.231.43/AioCheckOut/AioReceieve.aspx");//付款完成通知回傳網址。
        testStr.Add("ChoosePayment", "Credit");//選擇預設付款方式。
        testStr.Add("EncryptType", "1");    //CheckMacValue 加密類型。請固定填入1，使用SHA256加密。

        

        
		*/
		
		
		
		this.setUrl(url.toString());
		return "redirect";
	}
	
	
	

}
