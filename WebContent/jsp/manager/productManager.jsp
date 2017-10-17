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
	
	
	<title>
	<c:forEach items="${paramater}" var="c">
	<c:if test="${c.company eq com && c.name eq 'site_name'}">${c.value}</c:if>
	</c:forEach>管理
	</title>
	
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
	<!--link rel="stylesheet" href="jsp/manager/css/bootstrap.min.css">
	<link href="/eis/inc/bootstrap/plugin/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
	<link href="jsp/manager/css/fileinput.min.css" rel="stylesheet"-->
	<link rel="stylesheet" href="/eis/inc/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="/eis/inc/bootstrap/css/bootstrap-theme.css" />
	<link rel="stylesheet" href="/eis/inc/css/advance.css" />
	<link href="/eis/inc/bootstrap/css/docs.min.css" rel="stylesheet"/>
	<link href="/eis/inc/bootstrap/plugin/silviomoreto-bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet"/>
	<link href="/eis/inc/bootstrap/plugin/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
	<link href="jsp/manager/css/bootstrap-magnify.min.css" rel="stylesheet">
	<body>
	<%@ include file="mheader.jsp" %>
	<br>
	<div class="container">
	<form action="productManager.vx" method="post" enctype="multipart/form-data">
	
		<c:if test="${empty product}">
		<input type="hidden" name="Oid" id="Oid" />
		<div class="list-group">
  			<div class="list-group-item list-group-item-action active">商品基本資料</div>
			<div class="list-group-item list-group-item-action">
				
				  	<select name="category" class="selectpicker form-control">
				  		<option value="">商品類別</option>
						<c:forEach items="${code_product_category}" var="c">
						<c:if test="${com eq c.company}">
    					<option <c:if test="${category eq c.id}">selected</c:if> value="${c.id}">${c.name}</option>					   
					    </c:if>
					    </c:forEach>
				  	</select>
				
			</div>
			<div class="list-group-item list-group-item-action">
			<div class="input-group">
				  	<span class="input-group-addon" id="basic-addon1">商品名稱</span>
				  	<input type="text" class="form-control form-control mb-2 mr-sm-2 mb-sm-0" name="name" value="${name}"/>
				  	</select>
				</div>
			</div>
			<div class="list-group-item list-group-item-action">
				<div class="btn-group" role="group" aria-label="...">
				<button class="btn btn-default" name="method:search">商品查詢</button>
				<button class="btn btn-danger" name="method:add">商品建立</button>
				</div>
			</div>
		</div>
		</c:if>
		<c:if test="${!empty products}">
		
		<div class="panel panel-primary">
		  <div class="panel-heading">查詢列表</div>
			<display:table name="${products}" id="row" class="table table-condensed" sort="list" excludedParams="*" >
			  	<display:column title="編號" property="Oid" sortable="true" />
			  	<display:column title="類別" property="category" sortable="true"/>
			  	<display:column title="名稱" property="name" sortable="true"/>
			  	<display:column title="價格" property="price" sortable="true"/>
			  				  	
			  	<display:column>
		        	<div class="btn-group">
		        	<button class="btn btn-default" onclick="$('#Oid').val('${row.Oid}');" name="method:edit">修改</button>
		        	<button class="btn btn-danger" onclick="$('#Oid').val('${row.Oid}');return confirm('請問是否刪除');" name="method:del">刪除</button>
		        	</div>
		        </display:column>
			</display:table>
		</div>		
		</c:if>
	
		<c:if test="${!empty product}">
		<style>		
		.mag {
		    width:200px;
		    margin: 0 auto;
		    float: none;
		}
		    
		.mag img {
		    max-width: 100%;
		}		
		.magnify {
		    position: relative;
		    cursor: none
		}
		.magnify-large {
		    position: absolute;
		    display: none;
		    width: 175px;
		    height: 175px;
		
		    -webkit-box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
		       -moz-box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
		            box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
		    
		    -webkit-border-radius: 100%;
		       -moz-border-radius: 100%;
		             border-radius: 100%
		}
		</style>
		
		<input type="hidden" name="Oid" value="${product.Oid}" />
		<div class="list-group">
  			<div class="list-group-item list-group-item-action active">商品基本資料</div>
			<div class="list-group-item list-group-item-action">
				
				  	<select name="category" class="selectpicker form-control">				  		
						<c:forEach items="${code_product_category}" var="c">
    					<option <c:if test="${product.id eq c.id}">selected</c:if> value="${c.id}">${c.name}</option>					   
					    </c:forEach>
				  	</select>
				
			</div>
			<div class="list-group-item list-group-item-action">
			<div class="input-group">
				  	<span class="input-group-addon" id="basic-addon1">名稱</span>
				  	<input type="text" class="form-control form-control mb-2 mr-sm-2 mb-sm-0" name="name" value="${product.name}" />
				  	</select>
				</div>
			</div>
			<div class="list-group-item list-group-item-action">
				<div class="input-group">
				  	<span class="input-group-addon" id="basic-addon1">售價</span>
				  	<input type="text" class="form-control form-control mb-2 mr-sm-2 mb-sm-0" name="price" value="${product.price}" />
				  	</select>
				</div>
			</div>
			<div class="list-group-item list-group-item-action">
				<textarea name="descript">${product.descript}</textarea>
			</div>
			
			<div class="list-group-item list-group-item-action">
				<input id="upload" name="fileUpload" multiple type="file" class="file-loading">
			</div>
			<div class="list-group-item list-group-item-action">
				<div class="btn-group" role="group" aria-label="...">
				<button class="btn btn-default" name="method:save">商品修改</button>
				<button class="btn btn-danger" name="method:del">商品刪除</button>
				</div>
				<button class="btn btn-default" name="method:search">返回</button>
			</div>
		</div>
		
			
		
		<div class="row">
		<c:forEach items="${product.pic}" var="p" varStatus="i">		  
		  <div class="col-md-3">		  
		  	<div class="mag"><img data-toggle="magnify" src="getFtpFile.act?path=estore/${p.product}&file=${p.path}" class="img-thumbnail" alt=""></div>
		  </div>		
		</c:forEach>
		</div>
		</c:if>
	</form>
    </div>
	
	
	<%@ include file="mfooter.jsp" %>
    
	
    
       
      
	<!--script src="jsp/manager/js/jquery-3.1.1.min.js"></script>
	<script src="jsp/manager/js/tether.min.js"></script>
	<script src="jsp/manager/js/bootstrap.min.js"></script>	
	<script src="http://192.192.230.167/CIS/inc/js/plugin/ckeditor/ckeditor.js"></script>
	<script src="/eis/inc/js/plugin/bootstrap-typeahead.js"></script>
	<script src="jsp/manager/js/fileinput.min.js"></script>
	<script src="/eis/inc/bootstrap/plugin/bootstrap-fileinput/js/fileinput.min.js"></script>
	<script src="/eis/inc/bootstrap/plugin/bootstrap-fileinput/js/fileinput_locale_zh-TW.js"></script-->
	
	
	<script src="/eis/inc/js/jquery.js"></script>
	<script src="/eis/inc/bootstrap/js/bootstrap.js"></script>
	<script src="/eis/inc/js/plugin/jquery.blockUI.js"></script>
	<link rel="stylesheet" href="/eis/inc/bootstrap/plugin/bootstrap-submenu/css/bootstrap-submenu.min.css">
	<script src="/eis/inc/bootstrap/plugin/bootstrap-submenu/js/bootstrap-submenu.min.js" defer></script>
	<script src="/eis/inc/bootstrap/plugin/silviomoreto-bootstrap-select/js/bootstrap-select.min.js"></script>
	<script src="/eis/inc/bootstrap/plugin/silviomoreto-bootstrap-select/js/i18n/defaults-zh_TW.min.js"></script>
	<script src="http://192.192.230.167/CIS/inc/js/plugin/ckeditor/ckeditor.js"></script>
	<script src="/eis/inc/js/plugin/bootstrap-typeahead.js"></script>	
	<link href="/eis/inc/bootstrap/plugin/bootstrap-fileinput/css/fileinput.min.css" rel="stylesheet">
	<script src="/eis/inc/bootstrap/plugin/bootstrap-fileinput/js/fileinput.min.js"></script>
	<script src="/eis/inc/bootstrap/plugin/bootstrap-fileinput/js/fileinput_locale_zh-TW.js"></script>
	<script src="jsp/manager/js/bootstrap-magnify.min.js"></script>
	
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
	
	CKEDITOR.replaceAll( function( textarea, config )
		{	//uiColor: '#14B8C4',
			config.toolbar= [
				[ 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink' ],
				[ 'FontSize', 'TextColor', 'BGColor']
			]			
		}
	);	
	
	$("#upload").fileinput({
		//uploadUrl: "#",
		multiple: true,
		uploadAsync: false,
		//previewFileIcon: '<i class="fa fa-file"></i>',
		//allowedPreviewTypes: null,
		language: "zh-TW",
		layoutTemplates: {
		    main1: "{preview}\n" +
		    "<div class=\'input-group {class}\'>\n" +
		    "   <div class=\'input-group-btn\'>\n" +
		    "       {browse}\n" +
		    //"       {upload}\n" +
		    "       {remove}\n" +
		    "   </div>\n" +
		    "   {caption}\n" +
		    "</div>"
		}
		,allowedFileExtensions: ["doc", "docx", "xls", "xlsx", "pdf", "jpg", "txt"]
	});
	</script>








      
      
  	</body>
</html>