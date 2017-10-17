<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%String path=request.getContextPath();String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html lang="zh-tw">

	<head>
  	<base href="<%=basePath%>">	
	<meta charset="UTF-8">
	<title>${site_name}內容管理</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
	<!--link rel="stylesheet" href="jsp/manager/css/bootstrap.min.css">
	<link href="/eis/inc/bootstrap/plugin/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
	<link href="jsp/manager/css/fileinput.min.css" rel="stylesheet"-->
	<link rel="stylesheet" href="/eis/inc/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="/eis/inc/bootstrap/css/bootstrap-theme.css" />
	<link rel="stylesheet" href="/eis/inc/css/advance.css" />
	<link href="/eis/inc/bootstrap/css/docs.min.css" rel="stylesheet"/>
	<link href="/eis/inc/css/jquery-ui.css" rel="stylesheet"/>
	<link href="/eis/inc/bootstrap/plugin/silviomoreto-bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet"/>
	<link href="/eis/inc/js/plugin/jquery-ui-timepicker-addon/jquery-ui-timepicker-addon.min.css" rel="stylesheet"/>


	<body>
	<%@ include file="mheader.jsp" %>
	<br>
	<div class="container">
	<form action="bodyManager.vx" method="post" enctype="multipart/form-data">		
		
		
		<div class="list-group">
  			<div class="list-group-item list-group-item-action active">網站內容管理</div>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'site_name' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">網站名稱</span>
			  	<input type="text" class="form-control" name="site_name" value="${c.value}" />
				</div>
			</div>
			</c:if>
			</c:forEach>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'body_discount' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<select name="body_discount" class="selectpicker form-control">
					<option <c:if test="${!empty c.value}">selected</c:if> value="限時折扣">限時折扣開啟</option>
					<option <c:if test="${empty c.value}">selected</c:if> value="">限時折扣關閉</option>
				</select>
			</div>
			</c:if>
			</c:forEach>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'body_video' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<select name="body_why" class="selectpicker form-control">
					<option <c:if test="${!empty c.value}">selected</c:if> value="網站優勢">網站優勢開啟</option>
					<option <c:if test="${empty c.value}">selected</c:if> value="">網站優勢關閉</option>
				</select>
			</div>
			</c:if>
			</c:forEach>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'body_video' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<select name="body_video" class="selectpicker form-control">
					<option <c:if test="${!empty c.value}">selected</c:if> value="影片介紹">影片介紹開啟</option>
					<option <c:if test="${empty c.value}">selected</c:if> value="">影片介紹關閉</option>
				</select>
				<br><br>
				<input type="text" class="form-control" name="info" value="${c.note}" />
			</div>
			</c:if>
			</c:forEach>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'body_video' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<select name="body_how" class="selectpicker form-control">
					<option <c:if test="${!empty c.value}">selected</c:if> value="訂購說明">訂購說明開啟</option>
					<option <c:if test="${empty c.value}">selected</c:if> value="">訂購說明關閉</option>
				</select>
			</div>
			</c:if>
			</c:forEach>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'body_video' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<select name="body_shopnum" class="selectpicker form-control">
					<option <c:if test="${!empty c.value}">selected</c:if> value="銷售成績">銷售成績開啟</option>
					<option <c:if test="${empty c.value}">selected</c:if> value="">銷售成績關閉</option>
				</select>
			</div>
			</c:if>
			</c:forEach>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'body_video' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<select name="body_deliv" class="selectpicker form-control">
					<option <c:if test="${!empty c.value}">selected</c:if> value="付款與運送">付款與運送開啟</option>
					<option <c:if test="${empty c.value}">selected</c:if> value="">付款與運送關閉</option>
				</select>
			</div>
			</c:if>
			</c:forEach>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'body_video' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<select name="body_clients" class="selectpicker form-control">
					<option <c:if test="${!empty c.value}">selected</c:if> value="用戶見證">用戶見證開啟</option>
					<option <c:if test="${empty c.value}">selected</c:if> value="">用戶見證關閉</option>
				</select>
			</div>
			</c:if>
			</c:forEach>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'body_video' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<select name="body_address" class="selectpicker form-control">
					<option <c:if test="${!empty c.value}">selected</c:if> value="公司地址">公司地址開啟</option>
					<option <c:if test="${empty c.value}">selected</c:if> value="">公司地址關閉</option>
				</select>
			</div>
			</c:if>
			</c:forEach>
			
			<c:forEach items="${paramater}" var="c">        
			<c:if test="${c.name eq 'body_video' && c.company eq com}">
			<div class="list-group-item list-group-item-action">
			  	<select name="body_contacts" class="selectpicker form-control">
					<option <c:if test="${!empty c.value}">selected</c:if> value="連絡我們">連絡我們開啟</option>
					<option <c:if test="${empty c.value}">selected</c:if> value="">連絡我們關閉</option>
				</select>
			</div>
			</c:if>
			</c:forEach>
			
			<div class="list-group-item list-group-item-action">
				
				<button class="btn btn-danger" name="method:save">儲存</button>
					
				
			</div>
		
		</div>
		
		
		
		
	</form>
    </div>
	
	
	
	
	
	<%@ include file="mfooter.jsp" %>
    
	
    
       
	
	
	<script src="/eis/inc/js/jquery.js"></script>
	<script src="/eis/inc/bootstrap/js/bootstrap.js"></script>
	<script src="/eis/inc/js/plugin/jquery.blockUI.js"></script>
	<link rel="stylesheet" href="/eis/inc/bootstrap/plugin/bootstrap-submenu/css/bootstrap-submenu.min.css">
	<script src="/eis/inc/bootstrap/plugin/bootstrap-submenu/js/bootstrap-submenu.min.js" defer></script>
	<script src="/eis/inc/bootstrap/plugin/silviomoreto-bootstrap-select/js/bootstrap-select.min.js"></script>
	<script src="/eis/inc/bootstrap/plugin/silviomoreto-bootstrap-select/js/i18n/defaults-zh_TW.min.js"></script>
	
	<script src="/eis/inc/js/plugin/jquery-ui.js"></script>
	<script src="/eis/inc/js/plugin/jquery-ui-timepicker-addon/jquery-ui-timepicker-addon.min.js"></script>
	
	<script>
	$(document).ready(function () {	 
		//alert(1);
		//Cookies.set("shop-data", "[]");
		//$shopping_list=[];
		//alert(2);
		//readList();
		//alert(3);
		//$("#modal_detailed").modal("show");
		$('.container img').magnify();
	});	
	$('.timepick').datepicker({
		changeMonth: true,
		changeYear: true,
		//minDate: '@minDate'
		yearRange: "-100:+0"
		//controlType: 'select',
		//addSliderAccess: true,
		//sliderAccessArgs: { touchonly: false },
		//stepHour: 1,
		//stepMinute: 30,
		//hourMin: 7,
		//hourMax: 23
	});
	</script>
  	</body>
</html>