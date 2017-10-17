<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	<link rel="stylesheet" href="/eis/inc/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="/eis/inc/bootstrap/css/bootstrap-theme.css" />
	<link rel="stylesheet" href="/eis/inc/css/advance.css" />
	<style class="cp-pen-styles">body {
  background: #eee !important;
}

.wrapper {
  margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0, 0, 0, 0.1);
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 30px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  font-size: 16px;
  height: auto;
  padding: 10px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="text"] {
  margin-bottom: -1px;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 20px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>
	<body>
	<%@ include file="mheader.jsp" %>
	
	
	company:${com}
        
        
        
        
        
        
        
        
        
        

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header modal-header-primary">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">訊息</h4>
      </div>
      <div class="modal-body">
       
       
       
       
       
       
       
       
       
       <div class="wrapper">
    <form action="login.vx" class="form-signin">       
      <h2 class="form-signin-heading">帳戶登入</h2>
      <input type="text" class="form-control" name="username" placeholder="登入名稱" required="" ="" />
      <input type="password" class="form-control" name="password" placeholder="密碼" required=""/>      
      <label class="checkbox">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> 記得登入名稱
      </label>
      <button class="btn btn-lg btn-primary btn-block" name="method:login" type="submit">登入</button>   
    </form>
  </div>
       
       
       
       
       
       
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
        <button type="button" class="btn btn-primary">需要協助</button>
      </div>
    </div>
  </div>
</div>
	
	<script src="/eis/inc/js/jquery.js"></script>
	<script src="/eis/inc/bootstrap/js/bootstrap.js"></script>
    <script>
    $('#myModal').modal('show')
    </script>
  	</body>
</html>