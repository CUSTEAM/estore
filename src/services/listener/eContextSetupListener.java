package services.listener;

import java.util.Timer;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import services.listener.task.eTaskListener;


public class eContextSetupListener implements ServletContextListener {
    
    private static Timer timer = null;
    private static eTaskListener task = null;
    public void contextDestroyed(ServletContextEvent event) {
        //stop
        if(timer != null)
            timer.cancel();
    }

    public void contextInitialized(ServletContextEvent event) {
    	task = new eTaskListener(event);
        timer = new Timer(true);
        
        //start
        //GregorianCalendar now = new GregorianCalendar();
        //now.set(Calendar.HOUR, 0);
        //now.set(Calendar.MINUTE, 0);
        //now.set(Calendar.SECOND, 0);
        //timer.schedule(task, now.getTime());
        System.out.println("載入系統參數, 啟動後每15分鐘自動重新載入");
        timer.schedule(task, 0, 900000);//每1000*60*15分鐘？
    }

}