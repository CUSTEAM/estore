<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="s-list" class="s-list ">
	<h4 class="hidden">Items list</h4>
	<nav class="nav-items ta-center">
		<div class="container">
			<ul id="categories">
				<c:forEach items="${code_product_category}" var="c">
				<li>
					<a href="#${c.id}" data-toggle="tab"> 
						<span class="ico-cat">
							<img src="${c.icon}" height="36" width="36" alt=""> 
							<span class="sum">${c.product_cnt}</span>
						</span> 
						<span class="category-name">${c.name}</span>
					</a>
				</li>				
				</c:forEach>				
			</ul>
			<div id="categories-bar"></div>
		</div>
	</nav>
	<div class="container">
		<div class="tab-content">
			
			<c:forEach items="${code_product_category}" var="c" varStatus="i">
			<c:if test="${i.index==0}"><div class="tab-pane fade in active" id="${c.id}"></c:if>
			<c:if test="${i.index!=0}"><div class="tab-pane fade" id="${c.id}"></c:if>
			
			
			
			
				<div class="row items-place">					
					<c:forEach items="${c.products}" var="p">
					<div class="col-md-3 col-sm-4 col-xs-6">
						<article class="item fadeInDown animated wow" data-wow-duration="0.7s">
							<a href="item-detail.html" class="link-item" data-toggle="modal" data-target="#modal_detailed" data-remote="false">
								<h4 class="hidden" id="name${p.Oid}">${p.name}</h4>
								<input type="hidden" id="pic${p.Oid}" value="getFtpFile.act?path=estore/${p.Oid}&file=${p.pics[0].path}" />
							</a>
							<div class="wrap">
								<img class="stable full-w" src="getFtpFile.act?path=estore/${p.Oid}&file=${p.pics[0].path}" alt="">
								<div class="desc">
									<a class="name link-item" href="item-detail.html" data-toggle="modal" data-target="#modal_detailed" data-remote="false" id="s${p.Oid}">${p.name}</a>
									<div class="weight">1800 g</div>
									<div class="price"><b id="price${p.Oid}">${p.price}</b>元</div>
									<div class="changes">
										<div class="media-left media-middle">
											<div class="input-group counter-badge">
												<div class="input-group-btn">
													<button type="button" class="btn btn-v2 btn-v2-h2 btn-number" data-type="minus" data-field="quant[${p.Oid}]">-</button>
												</div>
												<input type="hidden"  id="id${p.Oid}"  value="${p.Oid}">
												
												<input type="text"  id="quant${p.Oid}" name="quant[${p.Oid}]" class="form-control input-number" value="1" data-min="1" data-max="100">
												
												
												<div class="input-group-btn">
													
													<button type="button" class="btn btn-v2 btn-v2-h2 btn-number" data-type="plus" data-field="quant[${p.Oid}]">+</button>
												</div>
											</div>
										</div>
										<div class="media-left media-middle ta-right">
											<button id="buy${p.Oid}" data-buy-id="${p.Oid}" class="btn btn-sm btn-buy btn-icon btn-clicked btn--moema flaticon-trolley7">加入</button>
										</div>
									</div>
								</div>
							</div>
						</article>
					</div>					
					
					
					<div id="item-detail-content${p.Oid}" class="item-detailed-content hidden">
						<button type="button" class="overlay-close inner visible-xs" data-dismiss="modal">×</button>
						
							<div class="text-center"><h1>${p.name}</h1></div>
							<div class="item-detail">
								
								<div class="swiper-container it-gallery">
									<div class="swiper-wrapper">
										<!-- 實際大小圖 -->
										<c:forEach items="${p.pics}" var="pic">
										<div class="it-big swiper-slide">
											<img class="zoom-img" src="getFtpFile.act?path=estore/${p.Oid}&file=${pic.path}" alt="" data-zoom-image="getFtpFile.act?path=estore/${p.Oid}&file=${pic.path}" />
										</div>
										</c:forEach>										
									</div>
								</div>
								<div class="it-gallery-thumbs">
									<div class="it-gallery-thumbs-wrap">
										<!-- 縮圖 -->
										<c:forEach items="${p.pics}" var="pic">
										<div class="it-thumb">
											<div class="wrap"><img src="getFtpFile.act?path=estore/${p.Oid}&file=${pic.path}" alt=""></div>
										</div>
										</c:forEach>										
									</div>
								</div>								
								<div class="clearfix">
									<div class="it-info">
										<div class="text-list">
											<div class="name">商品說明:</div>
											<div class="text">${p.descript}</div>
										</div>
										
										<!--div class="text-list">
											<div class="name">
												Weight: <span class="fw-n">1800 g</span>
											</div>
										</div>
										<div class="text-list">
											<div class="name">Ingredients:</div>
											<div class="text">Eggs, milk, cream, sugar, wheat
												flour, salt, vanilla extract, corn starch, mascarpone
												cheese, cofee liqueur, apple vinegear, lemon juice, fresh
												and frozen blueberry.</div>
										</div>
										<div class="text-list">
											<div class="name">Nutrition facts (for 100g of product):</div>
											<div class="text">
												<div class="line"><strong>Calories:</strong> 218.3 kcal</div>
												<div class="line"><strong>Protein:</strong> 6.8 g</div>
												<div class="line"><strong>Total Fat:</strong> 13.9 g</div>
												<div class="line"><strong>Carbohydrate:</strong> 16.7 g</div>
											</div>
										</div-->
										
									</div>
									<div class="composition">
										<div class="form-group">
											
											<!--div class="text-list mb20">
												<div class="name">Choose berries:</div>
												<select class="selectpicker sel-berry bs-select-hidden">
													<option class="icon-comp ico-cher" value="1">Blueberry</option>
													<option class="icon-comp ico-vish" value="2">Cherry</option>
													<option class="icon-comp ico-klub" value="3">Strawberry</option>
													<option class="icon-comp ico-mal" value="4">Raspberry</option>
													<option class="icon-comp ico-ej" value="5">Blackberry</option>
												</select>
											</div>
											
											<div class="text-list">
												<div class="name">Choose weight:</div>
												<select class="selectpicker bs-select-hidden">
													<option class="" value="1">Standard (1,8 kg)</option>
													<option class="" value="2">More (2,8 kg)</option>
													<option class="" value="3">Less (0,8 kg)</option>
												</select>
											</div-->
											
											<div class="it-price">
												<div class="it-sum">
													<input type="hidden" value="650"><strong>${p.price}元</strong>
												</div>
												數量
												<div class="ib input-group counter-badge">
													<div class="input-group-btn">
														<button type="button" class="btn btn-v2 btn-v2-h2 btn-number" data-type="minus" data-field="quant[${p.Oid}]">-</button>
													</div>
													<input type="text" class="form-control input-number" id="quant-bg${p.Oid}" name="quant[${p.Oid}]" value="1" data-min="1" data-max="100">
													<div class="input-group-btn">
														<button type="button" class="btn btn-v2 btn-v2-h2 btn-number" data-type="plus" data-field="quant[${p.Oid}]">+</button>
													</div>
												</div>
											</div>
											
										</div>
										
										<button data-dismiss="modal" onClick="$('#buy${p.Oid}').trigger('click');" class="btn btn-buy btn-icon btn-clicked btn--moema flaticon-trolley7">加入?</button>
									</div>
								</div>
							</div>
						
					</div>
					
					</c:forEach>					
				</div>				
				
				<!-- div class="row text-center">
					<button type="button" class="btn btn-clicked btn--moema refresh-waypoints">更多</button>
				</div-->
				
			</div>
			
			</c:forEach>
			
			
			
			
			
			<!--div class="tab-pane fade" id="piroj">				
				<div class="row items-place">					
					<div class="col-md-3 col-sm-4 col-xs-6">
						<article class="item fadeInDown animated" data-wow-duration="0.7s">
							<a href="item-detail.html" class="link-item" data-toggle="modal" data-target="#modal_detailed" data-remote="false">
								<h4 class="hidden">Blueberries with cream Pancake</h4>
							</a>
							<div class="wrap">
								<img class="stable full-w" src="img/blank-item2.jpg" alt="">
								<div class="desc">
									<a class="name link-item" href="item-detail.html" data-toggle="modal" data-target="#modal_detailed" data-remote="false">Blueberries with cream Pancake</a>
									<div class="weight">1800 g</div>
									<div class="price">
										<b>$16</b>
									</div>
									<div class="changes">
										<div class="media-left media-middle">
											<div class="input-group counter-badge">
												<div class="input-group-btn">
													<button type="button" class="btn btn-v2 btn-v2-h2 btn-number" data-type="minus" data-field="quant[1]">-</button>
												</div>
												<input type="text" name="quant[1]" class="form-control input-number" value="10" data-min="1" data-max="100">
												<div class="input-group-btn">
													<button type="button" class="btn btn-v2 btn-v2-h2 btn-number" data-type="plus" data-field="quant[1]">+</button>
												</div>
											</div>
										</div>
										<div class="media-left media-middle ta-right">
											<button class="btn btn-sm btn-buy btn-icon btn-clicked btn--moema flaticon-trolley7">Buy
											</button>
										</div>
									</div>
								</div>
							</div>
						</article>
					</div>					
				</div>
				<div class="row text-center">
					<button type="button" class="btn btn-clicked btn--moema refresh-waypoints">更多</button>
				</div>
			</div>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			<div class="tab-pane fade" id="muffin">
				<div class="row items-place"></div>
				<div class="row text-center">
					<button type="button" class="btn btn-clicked btn--moema refresh-waypoints">更多</button>
				</div>
			</div>
			
			
			<div class="tab-pane fade" id="vipech">
				<div class="row items-place"></div>
				<div class="row text-center">
					<button type="button" class="btn btn-clicked btn--moema refresh-waypoints">更多</button>
				</div>
			</div-->
			
			
			
			
		</div>
	</div>
</section>
