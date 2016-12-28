<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="overlay overlay-simplegenie" id="modal_cart" aria-hidden="true" data-backdrop="true" data-keyboard="true" tabindex="-1">
	<button type="button" class="overlay-close hidden-xs" data-dismiss="modal">&#215;</button>
	<div class="modal-content detail-popup" id="cartView-popup">
		<button type="button" class="overlay-close inner visible-xs" data-dismiss="modal">×</button>
		<form action="index.html">
			<div class="b-title text-center c-white">Your Cart</div>
			<div class="wrap-cart-window clearfix">
				<div class="cart-items">
					<div class="visible-xs ci-thead-mob ci-info">
						<span class="ct2">: </span>&nbsp; <span class="ci-length count">0</span> 
						<span class="ct2 pl20">Total: </span>&nbsp;<strong>$</strong> 
						<span class="ci-sum-final total">$0 </span>
					</div>



					<table class="table">
						<thead class="ci-head hidden-xs">
							<tr>
								<th class="ci-info pl25" colspan="2">
								<span class="ci-length count">0</span><span class="ct2">項商品</span>
								<span class="ci-sum-final total">0</span><span class="ct2">元</span>
								</th>
								<th class="text-center">數量</th>
								<th class="text-center">售價</th>
								<th class="text-center">小計</th>
								<th class="text-center"></th>
							</tr>
						</thead>
						<tbody id="cartList">
							
							
							
							
							
						</tbody>
					</table>













					<!-- div class="ci-bottom text-left clearfix">
						<div class="ci-sum-all">
							<div class="name">總計:</div>
							<div class="dtab">
								<div class="media-left pr10">
									<div class="line">Amount:</div>
									<div class="line">Your discount:</div>
									<div class="line">Total:</div>
								</div>
								<div class="media-left">
									<div class="line">
										<strong class="ci-length">3</strong>
									</div>
									<div class="line">
										<strong class="ci-sum-promo">$4.5</strong>
									</div>
									<div class="line">
										<strong>$</strong> 
										<strong class="ci-sum-final">0</strong>
									</div>
								</div>
							</div>
						</div-->
						<!--div class="ci-promo form-group">
							<div class="dtab">
								<div class="media-left media-middle">
									<div class="name mr30">
										Do you know promotion <br>discount code?
									</div>
								</div>
								<div class="media-left media-middle">
									<div class="input-group input-with-btn">
										<input type="text" class="form-control input-sm"
											placeholder="Redeem code">
										<button type="button" class="btn btn-send btn-h2"></button>
									</div>
								</div>
							</div>
						</div-->
					</div>
				</div>
				<div class="form-req mt35">
					<div class="form-group">
						<label for="f01">訂購人 <span class="c-req">* </span>:
						</label> <input type="text" class="form-control" id="f01" data-min="2"
							required>
					</div>
					<div class="form-group">
						<label for="f03">連絡電話 <span class="c-req">*</span>:
						</label> 
						<input type="text" class="form-control form-tel" id="f03" data-notice="Invalid mobile phone number" required>
					</div>
					<div class="form-group">
						<label for="f02">E-mail: </label> <input type="email"
							class="form-control" id="f02">
					</div>
					<div class="form-group">
						<label for="f04">配送地址 <span class="c-req">*
						</span>:
						</label>
						<textarea class="" id="f04" required></textarea>
					</div>
					<div class="description">
						( <span class="c-req">* </span>) 為必填欄位
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-icon btn-clicked btn--sendord flaticon-delivery55 mt45">送出訂單</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>