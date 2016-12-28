<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 購物車頁腳簡易顯示 -->
<div class="cart-alert closed" id="cart-alert" aria-hidden="true" data-backdrop="true" data-keyboard="true" tabindex="-1">
	<div class="cart-alert-wrap bg1">
		<div class="container">
			<div class="row">
				<div class="cart-menu">
					<div class="pull-left pos-re z-up hidden-xs">
						<div class="cart-info flaticon-trolley7">
							已選購 <strong class="count">0</strong> 項商品 <strong class="total">0</strong>元
						</div>
					</div>
					<div class="btn-wrap text-center">
						<button type="button" class="btn btn-cart-alert btn--moema" data-toggle="modal" data-target="#modal_cart">結帳</button>
					</div>
					<div class="pull-right pos-re z-up">
						<a href="#" class="cart-alert-close x">
						<span class="fade-name"> 
							<span class="name">關閉提示</span> 
							<span class="name name-x">Hide</span>
						</span> 
						<span class="lines"></span>
						</a>
					</div>
				</div>
				<div class="cart-alert-content" id="cartView-page"></div>
			</div>
		</div>
	</div>
</div>