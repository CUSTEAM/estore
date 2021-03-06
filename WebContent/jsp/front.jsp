<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path=request.getContextPath();String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html lang="en">

<head>
	<base href="<%=basePath%>">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta charset="UTF-8">
    <title>${site_name}</title>
    <link rel="stylesheet" href="styles/css/mpc-panel.css">
    <link rel="stylesheet" href="styles/css/styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>


<body>
    <div class="mpc_panel">
        <ul>
            <li id="mpc_device" class="device">
                
                <a id="mpc_desktop" class="active" href="#">
                    <img src="img/desktop_light.png" width="40" height="22" alt="">
                    <img class="mouse-over" src="img/desktop_dark.png" width="40" height="22" alt="">
                </a>
                <a id="mpc_tablet" href="#" class="">
                    <img src="img/tablet_light.png" width="17" height="22" alt="">
                    <img class="mouse-over" src="img/tablet_dark.png" width="17" height="22" alt="">
                </a>
                <a id="mpc_phone" href="#">
                    <img src="img/phone_light.png" width="13" height="22" alt="">
                    <img class="mouse-over" src="img/phone_dark.png" width="13" height="22" alt="">
                </a>
                
                <span class="mpc_panel_closer"><i class="fa fa-times fa-2x" onclick="deleteMPC()"></i></span>
            	
            </li>
            <li>
            
            </li>
        </ul>
        
    </div>
    
    <iframe src="jsp/Main.jsp" id="mpc_preview" class="desktop-view"></iframe>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="lib/jquery/jquery-1.11.3.min.js"><\/script>')</script>
    
    <script src="js/mpc-panel.js"></script>
</body>

</html>