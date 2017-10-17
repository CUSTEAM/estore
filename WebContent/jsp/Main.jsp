<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%String path=request.getContextPath();String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie8"><![endif]-->
<!--[if IE 9 ]><html class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="zh-tw" class="" style="overflow-x:hidden;">
<!--<![endif]-->
	<head>
  	<base href="<%=basePath%>">
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
	<meta charset="UTF-8">
	
		
		<title>
		<c:forEach items="${paramater}" var="c">
		<c:if test="${c.company eq param.store && c.name eq 'site_name'}">${c.value}</c:if>
		</c:forEach>
		</title>
		
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="lib/swiper/css/swiper.min.css">
	<!--[if IE 8 ]><link rel="stylesheet" href="lib/swiper-2.7.6/idangerous.swiper.css"><![endif]-->
	<link type="text/css" rel="stylesheet" href="fonts/shipping-font/styles.css">
	<link rel="stylesheet" href="styles/css/styles.css">
	<link rel="stylesheet" href="styles/css/theme-common.css" id="theme">
	<!--[if (gte IE 6)&(lte IE 8)]><script type="text/javascript" src="lib/selectivizr-min.js"></script><![endif]-->
	<script src="lib/modernizr.custom.04294.js"></script>
	<!--[if IE 8 ]><script src="lib/respond/respond.min.js"></script><![endif]-->
	<!--2gis-->	
	<!--<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>-->
</head>
	<body>
    <div class="preloader-block"><img src="img/preloader.gif" alt=""></div>
    <div class="bx-panel-dummy">
    </div>
    <div class="landing-wrap" id="landing-wrap">
      <div class="wd-cut">  
        <%@ include file="header.jsp" %> 
      	<div class="main-section">
        <c:if test="${body_banner!=null}"><%@ include file="banner.jsp"%></c:if>
        <div style="height:174px;"></div>
        <%@ include file="category.jsp" %>
       
        
        <c:forEach items="${paramater}" var="c">
		<c:if test="${c.company eq param.store && c.name eq 'site_name'}">		
		<c:if test="${c.body_discount!=null}"><%@ include file="promotions.jsp" %></c:if>		
		</c:if>
		</c:forEach>
        
        
        
        
        <c:forEach items="${paramater}" var="c">
        <c:if test="${c.company eq param.store}">	
        <c:if test="${c.name eq 'body_why' && !empty c.value}"><%@ include file="whyus.jsp" %></c:if>		
		<c:set var="video" value="${c.note}" />	
		<c:if test="${c.name eq'body_video' && !empty c.value}"><%@ include file="video.jsp" %></c:if>        
        <c:if test="${c.name eq 'body_how' && !empty c.value}"><%@ include file="howork.jsp"%></c:if>
        <c:if test="${c.name eq 'body_shopnum' && !empty c.value}"><%@ include file="figures.jsp"%></c:if>
        <c:if test="${c.name eq 'body_deliv' && !empty c.value}"><%@ include file="payment.jsp"%></c:if>
        <c:if test="${c.name eq 'body_clients' && !empty c.value}"><%@ include file="client.jsp"%></c:if>
        <c:if test="${c.name eq 'body_address' && !empty c.value}"><%@ include file="address.jsp"%></c:if>
        <c:if test="${c.name eq 'body_contacts' && !empty c.value}"><%@ include file="contacts.jsp"%></c:if>
        
        
        </c:if>
        </c:forEach>
        </div>     
        <%@ include file="footer.jsp" %>        
      </div>
       
      <%@ include file="tmpchart.jsp" %>  
      
      





<!--Load libs-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="lib/jquery/jquery-1.11.3.min.js"><\/script>')</script>
<!-- Load Bootstrap and bootstrap plugins -->
<script src="lib/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="lib/bootstrap-select/js/bootstrap-select.min.js"></script>
<script src="lib/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="lib/bootstrap-filestyle.min.js"></script>
<!-- Load some plugins -->
<!--[if (gt IE 8)|!(IE)]><!-->
<script src="lib/swiper/js/swiper.jquery.min.js"></script>
<!--<![endif]-->
<!--[if IE 8 ]><script src="lib/swiper-2.7.6/idangerous.swiper.min.js"></script><![endif]-->
<script src="lib/wow/wow.min.js"></script>
<script src="lib/sly.min.js"></script>
<script src="lib/countdown/jquery.countdown.min.js"></script>
<script src="lib/device.js"></script>
<script src="lib/jquery.parallax-scroll.js"></script>
<script src="lib/intlTelInput/intlTelInput.min.js"></script>
<script src="lib/jquery.scrollTo.min.js"></script>
<script src="lib/jquery.magnify.js"></script>
<script src="lib/jquery.easing.1.3.js"></script>
<script src="lib/videoBG/videoBG.js"></script>
<script src="lib/dragula/dragula.min.js"></script>
<script src="lib/jquery.cookie.js"></script>
<!--Load scripts-->
<script src="lib/calctable.min.js"></script>
<!-- You can find global settings here -->
<script src="js/globals.js"></script>
<script src="js/util-functions.js"></script>
<script src="js/inits/init-settings.js"></script>
<script src="js/inits/init-checkBrowser.js"></script>
<script src="js/inits/init-video.js"></script>
<script src="js/inits/init-youtube.js"></script>
<script src="js/inits/init-bigSlider.js"></script>
<script src="js/inits/init-clientSlider.js"></script>
<script src="js/inits/init-affix.js"></script>
<script src="js/inits/init-mainMenu.js"></script>
<script src="js/inits/init-categories.js"></script>
<script src="js/inits/init-phoneMasking.js"></script>
<script src="js/inits/init-validation.js"></script>
<script src="js/inits/init-promos.js"></script>
<script src="js/inits/init-numberAnimation.js"></script>
<script src="js/inits/init-numberInputs.js"></script>
<script src="js/inits/init-cart.js"></script>
<script src="js/inits/init-modalDetailed.js"></script>
<script src="js/entry.js"></script>



<script>
	var baseUrl = '';
	if (typeof SITE_TEMPLATE_PATH !== "undefined") baseUrl = SITE_TEMPLATE_PATH + "/" + baseUrl;
	$(function(){
		ls.init.phoneMasking(document);
		$('.form-tel').intlTelInput("loadUtils", baseUrl + 'lib/intlTelInput/utils.js');
	})
</script>









      
      
      <div class="overlay overlay-simplegenie" id="modal_detailed" aria-hidden="true" data-backdrop="true" data-keyboard="true" tabindex="-1">
        <button type="button" class="overlay-close hidden-xs" data-dismiss="modal">&#215;</button>
        <div class="modal-content detail-popup">
          <!-- content added dynamically -->
        </div>
      </div>
      
      
      <c:if test="${param.set eq 'true'}" >
      <a href="#" id="sett-page" class="glyphicon glyphicon-cog hyde" data-toggle="modal" data-target="#modal_settings"></a>
      <%@ include file="setting.jsp" %>
      </c:if>
      
      
      <%@ include file="cartList.jsp" %>      
        
      
    </div>
  </body>

</html>