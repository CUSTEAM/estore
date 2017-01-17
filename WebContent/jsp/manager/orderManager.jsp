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
	<title>${site_name}訂單管理</title>
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
	<form action="orderManager.vx" method="post" enctype="multipart/form-data">		
		<input type="hidden" name="eOid" id="eOid" value="${order.Oid}" />
		<div class="list-group">
  			<div class="list-group-item list-group-item-action active">訂單資料查詢</div>
			
			<div class="list-group-item list-group-item-action">
			  	<div class="row">
					<div class="col-md-6">	  	
					  	<select name="status" class="selectpicker form-control">
					  		<option value="">狀態</option>
					  		<option <c:if test="${status eq '*'}">selected</c:if> value="*">未確認</option>
							<c:forEach items="${code_product_status}" var="c">
		   					<option <c:if test="${status eq c.id}">selected</c:if> value="${c.id}">${c.name}</option>					   
						    </c:forEach>
					  	</select>
					</div>
					<div class="col-md-6">	
					<div class="input-group">
						  	<span class="input-group-addon" id="basic-addon1">訂單編號</span>
						  	<input type="text" class="form-control" id="Oid" name="Oid" value="${Oid}"/>
						  	</select>
						</div>
					
					</div>
				</div>
			</div>
			
			<div class="list-group-item list-group-item-action">
				<div class="row">
					<div class="col-md-6">
						<div class="input-group">
						  	<span class="input-group-addon" id="basic-addon1">開始日期</span>
						  	<input  onClick="this.value=''" readonly type="text" class="form-control timepick" name="begin" value="${begin}"/>
						  	</select>
						</div>
					</div>	
					<div class="col-md-6">
					  
						<div class="input-group">
						  	<span class="input-group-addon" id="basic-addon1">結束日期</span>
						  	<input readonly onClick="this.value=''" type="text" class="form-control timepick" name="end" value="${end}"/>
						  	</select>
						</div>
					</div>
				</div>
			</div>
			
			<div class="list-group-item list-group-item-action">
			
				<div class="row">
					<div class="col-md-6">
						<div class="input-group">
						  	<span class="input-group-addon" id="basic-addon1">電話</span>
						  	<input type="text" class="form-control form-control mb-2 mr-sm-2 mb-sm-0" name="tel" value="${tel}"/>
						  	</select>
						</div>
					</div>
					
					
					<div class="col-md-6">
						<div class="input-group">
						  	<span class="input-group-addon" id="basic-addon1">電子郵件</span>
						  	<input type="text" class="form-control form-control mb-2 mr-sm-2 mb-sm-0" name="email" value="${email}"/>
						  	</select>
						</div>
					</div>
				</div>
				
			
				
			</div>
			
			<div class="list-group-item list-group-item-action">
				<div class="row">
					<div class="col-md-6">
					<div class="input-group">
					  	<span class="input-group-addon" id="basic-addon1">訂購人</span>
					  	<input type="text" class="form-control form-control mb-2 mr-sm-2 mb-sm-0" name="username" value="${username}"/>
					  	</select>
						</div>
					</div>
					
					<div class="col-md-6">
						<button class="btn btn-danger" name="method:search">訂單查詢</button>
					</div>
				</div>
				
				
			</div>
		
		</div>
		<c:if test="${!empty orders}">		
		<div class="panel panel-primary">
			<div class="panel-heading">查詢列表</div>
			<display:table name="${orders}" id="row" class="table table-condensed" sort="list" excludedParams="*" >
			  	<display:column title="編號" property="Oid" sortable="true" />
			  	
			  	<display:column title="訂購人" property="username" sortable="true"/>
			  	<display:column title="價格" property="cnt" sortable="true"/>
			  	<display:column title="訂購時間" property="order_date" sortable="true"/>
			  	<display:column title="狀態" property="sname" sortable="true"/>
			  	<display:column>
		        	<div class="btn-group">
		        	<button class="btn btn-default" onclick="$('#eOid').val('${row.Oid}');" name="method:edit">修改</button>
		        	<button class="btn btn-danger" onclick="$('#eOid').val('${row.Oid}');return confirm('請問是否刪除');" name="method:delete">刪除</button>
		        	</div>
		        </display:column>
			</display:table>
		</div>	
		
		</c:if>
		
		
		<c:if test="${!empty order}">
		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">  
			<div class="panel panel-primary">	    
			    <div class="panel-heading " role="tab" id="heading">
			      <h4 class="panel-title">訂單內容</h4>
			    </div>
	    
				<ul class="list-group">
				    <li class="list-group-item">		    
				    <select name="eStatus" class="selectpicker form-control">
				    	<option <c:if test="${empty order.id}">selected</c:if> value="">未確認</option>
						<c:forEach items="${code_product_status}" var="c">
		  					<option <c:if test="${order.id eq c.id}">selected</c:if> value="${c.id}">${c.name}</option>					   
					    </c:forEach>
					    
				  	</select>
				    
				    </li>
				    <li class="list-group-item">訂單編號: ${order.Oid}</li>
				    <li class="list-group-item">訂購人:${order.username}</li>
				    <li class="list-group-item">電話: ${order.tel}</li>
				    <li class="list-group-item">電子郵件: ${order.email}</li>
				    <li class="list-group-item">地址: ${order.addr}</li>
				    <li class="list-group-item">訂購日期: ${order.order_date}</li>
				</ul>
		
				<table class="table">
					<tr>
						<td>類別</td>
						<td>名稱</td>
						<td>金額</td>
						<td>數量</td>
					</tr>
					<c:forEach items="${order.products}" var="p">
					<tr>
						<td>${p.cname}</td>
						<td>${p.name}</td>
						<td>${p.price}</td>
						<td>${p.cnt}</td>
					</tr>
					</c:forEach>
				</table>
				<div class="panel-body">
					<div class="btn-group">
					<button class="btn btn-default" name="method:save">修改</button>
					<button class="btn btn-danger" name="method:delete">刪除</button>
					
					</div>
					<button class="btn btn-default" name="method:search">返回</button>
				</div>
			</div>
		
		</div>
		</c:if>
		
		
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