<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="main-header" id="main-header">
	<div class="container">
		<div class="row main-header-top">
			
			
			<div class="call-up pull-left">
				<div>
					<a href="tel:1234567790"> <i class="flaticon-phone72"></i>${site_name}</a>
				</div>
			</div>
			<!-- div class="logo-main">
				<a href="index.html" class="brand"> <img src="img/logo.png" alt="Best Dessert"></a>
			</div-->
			
			
			<a href="#" class="shop-cart pull-right" id="shop-cart" data-toggle="modal" data-target="#modal_cart" data-remote="false">
				<span class="line"><b class="count">0</b> 項商品 </span> 
				<span class="line"><b class="total">0</b> 元</span> 
				<i class="flaticon-trolley7"><span class="count">0</span></i>
			</a>
			<button type="button" class="mob-toggle" data-toggle="modal" data-target="#main-nav"></button>
		</div>
		<nav class="row" id="main-nav" role="navigation" aria-labelledby="main-nav" aria-hidden="true" data-keyboard="true" tabindex="-1" data-backdrop="true">
			<a href="#" class="shop-cart pull-right sticky hide" data-toggle="modal" data-target="#modal_cart" data-remote="false">
				<i class="flaticon-trolley7"> <span class="count">0 </span></i>
			</a>
			<div class="listing">
				<ul class="nav navbar-nav main-nav">
					<li><a href="#main-slider" data-dismiss="modal">選單</a></li>
					<li><a href="#s-list" data-dismiss="modal"> 商品分類 </a></li>
					
					<c:if test="${body_discount!=null}"><li><a href="#s-discounts" data-dismiss="modal">限時折扣</a></li></c:if>
					
					<!--  
					<li><a href="#s-why" data-dismiss="modal">Why Us?</a></li>
					<li><a href="#s-video" data-dismiss="modal">Video about us</a></li>
					<li><a href="#s-how-work" data-dismiss="modal">How itworks</a></li>
					<li><a href="#s-shopnum" data-dismiss="modal">The Store in Figures</a></li>
					<li><a href="#s-deliv" data-dismiss="modal">Shipping</a></li>
					<li><a href="#s-clients" data-dismiss="modal">Reviews</a></li>
					<li><a href="#s-address" data-dismiss="modal">Contacts</a></li>
					<li><a href="#s-contacts" data-dismiss="modal">Feedback</a></li>
					-->
				</ul>
				<a href="#" class="arr-nav prev disabled">&#9679; &#9679;
					&#9679;</a> <a href="#" class="arr-nav next">&#9679; &#9679;
					&#9679;</a>
			</div>
			<!-- .listing -->
			<!-- .container -->
		</nav>
		<!-- #main-nav -->
		<!-- .row -->
	</div>
	<!-- .container -->
</header>