<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- nav class="navbar navbar-toggleable-md navbar-light bg-faded">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">${site_name}</a>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="manager.vx">概觀 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="productManager.vx">商品管理</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="orderManager.vx">訂單管理</a>
      </li>
    </ul>
    <span class="navbar-text">
      登出
    </span>
  </div>
</nav-->

<nav class="navbar navbar-default navbar-static-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="manager.vx">${site_name}</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">     
      	<li class="nav-item">
        <a class="nav-link" href="productManager.vx">商品管理</a>
      	</li>
      	<li class="nav-item">
        <a class="nav-link" href="orderManager.vx">訂單管理</a>
      	</li>
      	</li>
      	<li class="nav-item">
        <a class="nav-link" href="bodyManager.vx">內容管理</a>
      	</li>
        <!--li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li-->
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="商品名稱、編號，或訂單編號">
        </div>
        <button type="submit" class="btn btn-default">快速查詢</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">登出</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>