function changesSettAnimation(target, option, value){
	if (typeof value !== 'undefined'){
	    $(target).removeClass(bdSettings[option]).addClass(bdSettings[option] = value);
	}
}
function callButtonsClicked(target) {
	var buttonsClicked = $(target).find('.btn-clicked'),
	// var buttonsClicked = Array.prototype.slice.call(document.querySelectorAll('.btn-clicked')),
	totalButtonsClicked = buttonsClicked.length;
	// console.log(totalButtonsClicked)

	// buttonsClicked.forEach(function (el, i) {
	// el.addEventListener('click', activate, false);
	buttonsClicked.each(function (el, i) {
		$(this).on('click', activate);
	});

	function activate() {
		var $t = $(this),
			activatedClass = 'btn-activated';

		// if ($(this).hasClass('btn-validate')) {
		//     // if it is the first of the two btn-7h then activatedClass = 'btn-error';
		//     // if it is the second then activatedClass = 'btn-success'
		//     activatedClass = buttonsClicked.indexOf(this) === totalButtonsClicked - 2 ? 'btn-error' : 'btn-success';
		// }
		if ($t.hasClass('disabled')) {
			return false;
		}

		if (!$t.hasClass(activatedClass)) {
			$t.addClass(activatedClass);
			setTimeout(function () {
				$t.removeClass(activatedClass);
			}, 1000);
		}
	}
}

// NOT NEEDED ON READY SOLUTION
function updateCartLinks(){
	bdSettings.cartView === 'popup' ?
		$('.btn-cart-alert, .shop-cart').attr('data-target', '#modal_cart')
	:	$('.btn-cart-alert, .shop-cart').attr('data-target', '#cart-alert');
}
// END OF!

// Подставка иконок выбора ягодного селекта
$.fn.filterClassPrefix = function (prefix) {
	if (!prefix)
		return this;

	var sel = '[class^="' + prefix + '"], [class*="' + prefix + '"]';
	return this.filter(sel);
};
function copyClassCurSel(el) {
	$(el).each(function () {
		var $block = $(this),
			$current = $block.find('li.selected a'),
			$currVis = $block.find('span.filter-option'),
			currVisClass = $currVis.attr('class'),
			classCur = $current.attr('class');

		if ($currVis.filterClassPrefix('ico-')) {
			$currVis.removeClass(function (index, css) {
				return (css.match(/\ico-\S+/g) || []).join(' ');
			});
			$currVis.addClass(classCur);
		}
	});
}

$doc.on('change', '.sel-berry', function () {
	$('select option:selected').each(function () {
		copyClassCurSel('.bootstrap-select');
	});
});



$shopping_list=[];
$(document).ready(function() {
	
	if(Cookies.get("shop-data")!=null){
		$shopping_list=Cookies.getJSON("shop-data");
		readList();
	}
	
	
	
	/*$(selection).find('.btn-remove').on('click', function () {
		$shopping_list.splice($(this).attr("arId"), parseInt($(this).attr("arId"))+1);
		Cookies.set("shop-data", JSON.stringify($shopping_list));
		readList();
	});*/
	
	
	
});

function removeItem(id){
	
	//$(".btn-remove").click(function(){
		//alert($(this).attr("arId"));
		$shopping_list.splice(id, parseInt(id)+1);
		//$shopping_list.splice($(this).attr("arId"), parseInt($(this).attr("arId"))+1);
		//Cookies.set("shop-data", JSON.stringify($shopping_list));
		//Cookies.set("shop-data", JSON.stringify($shopping_list, {expires:7}));
		readList();
	//})
	
}


function readList(){
	var date = new Date();	
	date.setTime(date.getTime() + (99999*60*1000));
	//alert(date);
	Cookies.set("shop-data", JSON.stringify($shopping_list), {expires: date});
	//$.cookie('the_cookie', 'the_value', { expires: 7 });
	var m=0;
	var chartInfo="";
	for(i=0; i<$shopping_list.length; i++){
		m+=parseInt($shopping_list[i].itemPrice)*$shopping_list[i].quant;
		//console.log($shopping_list[i].itemName);
		
		
		
		chartInfo+="<tr class='ci-item'>"+
		"								<td class='col-sm-1 col-md-1 col-xs-2'>"+
		"									<div class='media'>"+
		"										<a class='link-item' href='item-detail.html' data-toggle='modal' data-target='#modal_detailed' data-remote='false'> <img class='media-object' src='"+$shopping_list[i].pic+"' alt=''></a>"+
		"									</div>"+
		"								</td>"+
		"								<td class='ci-text hidden-xs col-sm-4 col-md-3'>"+$shopping_list[i].itemName+"</td>"+
		"								<td class='col-sm-1 col-md-2 col-xs-7 text-center'>"+
		"									<a href='item-detail.html' class='ci-text link-item visible-xs' data-toggle='modal' data-target='#modal_detailed' data-remote='false'>Pigeons's milk</a>"+
		"									<div class='ib input-group counter-badge'>"+
		"										<div class='input-group-btn'>"+
		"											<button type='button' class='btn btn-v2 btn-v2-h2 btn-number btn-minus'>-</button>"+
		"										</div>"+
		"										<input type='text' class='form-control input-number ci-count' value='"+$shopping_list[i].quant+"' data-min='1' data-max='100'>"+
		"										<div class='input-group-btn'>"+
		"											<button type='button' class='btn btn-v2 btn-v2-h2 btn-number btn-plus'>+</button>"+
		"										</div>"+
		"									</div></td>"+
		"								<td class='ci-num hidden-xs col-sm-1 col-md-2 text-center'>"+
		"									<strong class='ci-sum-single'>"+$shopping_list[i].itemPrice+"</strong>"+
		"								</td>"+
		"								<td class='ci-num hidden-xs col-sm-1 col-md-2 text-center'><strong>$</strong>"+
		"									<strong class='ci-sum-item'>"+$shopping_list[i].itemPrice*$shopping_list[i].quant+"</strong></td>"+
		"								<td class='col-sm-1 col-md-2 col-xs-3 text-center'>"+
		"									<div class='ci-num visible-xs'><strong></strong></div> <a style='cursor:pointer;' onClick='removeItem("+i+")' arId='"+i+"' class='btn-remove'></a>"+
		"								</td>"+
		"							</tr>"
		
		
		
		
		
	} 
	$(".count").html($shopping_list.length);
	$(".total").html(m);
	
	
	
	$("#cartList").html(chartInfo);
	
}

// **send to the cart animation
function addToCart(selection){
	
	$(selection).find(".btn-buy").on('click', function () {			
		$shopping_list.push({
			pic: $("#pic"+this.getAttribute("data-buy-id")).val(),
			itemId: $("#id"+this.getAttribute("data-buy-id")).val(),  
	    	itemPrice: $("#price"+this.getAttribute("data-buy-id")).html(),  
	    	quant:$("#quant"+this.getAttribute("data-buy-id")).val(),
	        itemName: $("#name"+this.getAttribute("data-buy-id")).html()   
	    });	    
		     
	    //Cookies.set("shop-data", JSON.stringify($shopping_list));
		//Cookies.set("shop-data", JSON.stringify($shopping_list, {expires:7}));
	    readList();
		
		//var date = new Date();
		//date.setTime(date.getTime() + (5 * 24 * 60 * 60 * 1000));		
        //$.cookie('shop-data', 'myValue', { path:'/', expires: date });
		//$(".count").html($shopping_list.length);
		
		//var m=0;
		//for(i=0; i<$shopping_list.length; i++){
			//m+=parseInt($shopping_list[i].itemPrice)
			
		//}
		//$(".total").html(m);
		
		var cart = $('#main-header').hasClass('affix') ? $('.shop-cart.sticky') : $('.shop-cart').eq(0),
			cartOffset = cart.offset(),
			cartOffsetTop = cartOffset.top,
			cartOffsetLeft = cartOffset.left;

		var imgtodrag = $(this).parents('.item').find("img").eq(0),
			imgWidth = imgtodrag.width(),
			imgHeight = imgtodrag.height(),
			imgOffset = imgtodrag.offset(),
			imgOffsetTop = imgOffset.top,
			imgOffsetLeft = imgOffset.left;

		if (imgtodrag) {
			var imgclone = imgtodrag.clone().addClass('anim-to-cart')
				.css({
					'width': imgWidth,
					'height': imgHeight,
					'-webkit-transform': 'translate3d(' + imgOffsetLeft + 'px, ' +imgOffsetTop+ 'px, 0)',
					'transform': 'translate3d(' + imgOffsetLeft + 'px, ' +imgOffsetTop+ 'px, 0)',
			}).appendTo($body)
			.delay(100)
			.queue( function(next){
				$(this).css({
					'width': imgWidth / 10,
					'height': imgHeight / 10,
					'-webkit-transform': 'translate3d(' + cartOffsetLeft + 'px, ' +cartOffsetTop+ 'px, 0)',
					'transform': 'translate3d(' + cartOffsetLeft + 'px, ' +cartOffsetTop+ 'px, 0)',
					'opacity': 0
				});
				next();
			})
			.on("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function(e){
				$(this).detach();
				$(this).off(e);
			});
		}
		
	});

	var cartAlert = $('.cart-alert');
	cartAlert.addClass('closed');

	$doc.off('click.btnbuy').on('click.btnbuy', '.btn-buy', function () {
		cartAlert.removeClass('closed');
		return false;
	});
}