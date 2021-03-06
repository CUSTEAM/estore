<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="overlay overlay-simplegenie" id="modal_settings" aria-hidden="true" data-backdrop="true" data-keyboard="true" tabindex="-1">
	<button type="button" class="overlay-close hidden-xs" data-dismiss="modal">&#215;</button>
	<div class="modal-content detail-popup">
		<form action="#">
    <div class="b-title text-center">測試平台</div>
    <div class="form-settings">
        
        
        <div class="form-block">
            <div class="row mb45">
                <div class="title">類型</div>
                <div class="title">
                	<a target="_blank" href="into.vx?store=${param.store}"><span class="glyphicon glyphicon-globe" aria-hidden="true"></span> 前台測試</a>
                	<br><br>
                	<a target="_blank" href="manager.vx?com=${param.store}"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span> 後台測試</a>
                </div>
                <!-- div class="dtab">
                    <div class="media-left pr40" style="width: 300px;">
                        <div class="form-group">
                            <div class="form-title mb10"><strong>Customize background:</strong>
                            </div>
                            <div class="name">Choose color:</div>
                            <input type="text" class="form-control inp-colorpicker input-sm" value="#ffffff">
                        </div>
                        <div class="form-group">
                            <div class="name">Choose file:</div>
                            <div class="nav-bg mb10">
                                <a href=""><img src="img/blank-st-bg1.jpg" alt="">
                                </a>
                                <a href=""><img src="img/blank-st-bg2.jpg" alt="">
                                </a>
                                <a href=""><img src="img/blank-st-bg3.jpg" alt="">
                                </a>
                            </div>
                            <input type="file" class="filestyle" data-icon="false" data-buttonText="Browse" data-size="sm" data-buttonBefore="true">
                        </div>
                    </div>
                    <div class="media-left">
                        <div class="form-group ">
                            <div class="form-title mb10"><strong>Color scheme:</strong>
                            </div>
                            <div class="ib vat mr20">
                                <div class="name">Choose scheme:</div>
                                <div class="nav-mini nav-themes">
                                    <a href="#common" style="background-color: #E74C3C;"></a>
                                    <a href="#bgray_teal" style="background-color: #1BA39C;"></a>
                                    <a href="#blue_orange" style="background-color: #EB9532;"></a>
                                    <a href="#dark_blue_yellow" style="background-color: #9A12B3;"></a>
                                    <a href="#red_green" style="background-color: #F4D03F;"></a>
                                </div>
                            </div>
                            <div class="ib vat">
                                <div class="name">or choose custom color:</div>
                                <input type="text" class="form-control inp-colorpicker input-sm" value="#ffffff">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="name">or apply texture:</div>
                            <div class="nav-mini mb40">
                                <a href=""><img src="img/blank-texture1.jpg" alt="">
                                </a>
                                <a href=""><img src="img/blank-texture2.jpg" alt="">
                                </a>
                                <a href=""><img src="img/blank-texture3.jpg" alt="">
                                </a>
                                <a href=""><img src="img/blank-texture4.jpg" alt="">
                                </a>
                            </div>
                            <input type="file" class="filestyle" data-icon="false" data-buttonText="Browse" data-size="sm" data-buttonBefore="true">
                        </div>
                    </div>
                </div-->

            </div>
            <!-- div class="row">
                <div class="two-column">
                    <div class="col ib pr100">
                        <div class="title">Customize blocks</div>
                        <div class="form-group sett-width">
                            <div class="form-title">Blocks width:</div>
                            <div class="radio ib mr45">
                                <input type="radio" name="rad1" id="rb1" value="default" checked>
                                <label for="rb1">Full-page width</label>
                            </div>
                            <div class="radio ib">
                                <input type="radio" name="rad1" id="rb2" value="cut">
                                <label for="rb2">Fixed</label>
                            </div>
                            <p class="mt15"><i>You can remove unnecessary blocks or rearrange them. To do this, pull the block and drag the mouse to the desired location</i>
                            </p>
                        </div>
                        <div class="drag-sections mb50">
                            <div class="d-section d-dis">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch1" disabled checked>
                                <label for="s-ch1"></label>
                                <div class="d-name">Menu</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch2" checked>
                                <label for="s-ch2"></label>
                                <div class="d-name bg1">Banner</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch3" checked>
                                <label for="s-ch3"></label>
                                <div class="d-name">Goods</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch4" checked>
                                <label for="s-ch4"></label>
                                <div class="d-name bg-back">Promotions</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch5" checked>
                                <label for="s-ch5"></label>
                                <div class="d-name">Why us?</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch6" checked>
                                <label for="s-ch6"></label>
                                <div class="d-name bg2">Video</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch7" checked>
                                <label for="s-ch7"></label>
                                <div class="d-name">How it works?</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch8" checked>
                                <label for="s-ch8"></label>
                                <div class="d-name bg1">Company in figures</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch9" checked>
                                <label for="s-ch9"></label>
                                <div class="d-name bg-back">Shipping and payment</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch10" checked>
                                <label for="s-ch10"></label>
                                <div class="d-name bg2">Reviews</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch11" checked>
                                <label for="s-ch11"></label>
                                <div class="d-name">Contacts</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch12" checked>
                                <label for="s-ch12"></label>
                                <div class="d-name bg-map">Map</div>
                            </div>
                            <div class="d-section">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch13" checked>
                                <label for="s-ch13"></label>
                                <div class="d-name">Feedback</div>
                            </div>
                            <div class="d-section d-dis">
                                <div class="d-handle"></div>
                                <input type="checkbox" id="s-ch14" disabled checked>
                                <label for="s-ch14"></label>
                                <div class="d-name bg-back">Footer</div>
                            </div>
                        </div>
                    </div>
                    <div class="col ib pl50">
                        <div class="title">Customize animation</div>
                        <div class="form-group">
                            <div class="form-title">Cart view:</div>
                            <div class="radio ib mr45">
                                <input type="radio" name="cart-view" id="rb3" value="page">
                                <label for="rb3">On the page (slide up)</label>
                            </div>
                            <div class="radio ib">
                                <input type="radio" name="cart-view" id="rb4" value="popup" checked>
                                <label for="rb4">Popup (modal) window</label>
                            </div>
                        </div>
                        <div class="form-group gpt-sett hidden">
                            <div class="form-title">Goods pop-up window:</div>
                            <div class="radio ib mr45">
                                <input type="radio" name="rad3" id="rb5" value="ON" checked>
                                <label for="rb5">ON</label>
                            </div>
                            <div class="radio ib">
                                <input type="radio" name="rad3" id="rb6" value="OFF">
                                <label for="rb6">OFF</label>
                            </div>
                        </div>
                        <div class="form-group hidden">
                            <div class="form-title">Items view:</div>
                            <div class="radio ib mr45">
                                <input type="radio" name="rad4" id="rb7">
                                <label for="rb7">Slider</label>
                            </div>
                            <div class="radio ib">
                                <input type="radio" name="rad4" id="rb8" checked>
                                <label for="rb8">Ajax-loading</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-title">Slider animation effect:</div>
                            <select class="selectpicker fx-sl">
                                <option value="fxSoftScale">Soft scale</option>
                                <option value="fxPressAway">Press away</option>
                                <option value="fxSideSwing">Side Swing</option>
                                <option value="fxFortuneWheel">Fortune wheel</option>
                                <option value="fxSwipe">Swipe</option>
                                <option value="fxPushReveal">Push reveal</option>
                                <option value="fxSnapIn">Snap in</option>
                                <option value="fxLetMeIn">Let me in</option>
                                <option value="fxStickIt">Stick it</option>
                                <option value="fxArchiveMe">Archive me</option>
                                <option value="fxVGrowth">Vertical growth</option>
                                <option value="fxSlideBehind">Slide Behind</option>
                                <option value="fxSoftPulse">Soft Pulse</option>
                                <option value="fxEarthquake">Earthquake</option>
                                <option value="fxCliffDiving">Cliff diving</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="form-title">Reviews animation:</div>
                            <select class="selectpicker fx-cl">
                                <option value="default">default</option>
                                <option value="tooltip-sharp">sharp</option>
                                <option value="tooltip-round-1">round-1</option>
                                <option value="tooltip-round-2">round-2</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="form-title">Promotions block effects:</div>
                            <select class="selectpicker fx-disc">
                                <option value="fadeInDown">fadeInDown</option>
                                <option value="flipInX">flipInX</option>
                                <option value="bounceInDown">bounceInDown</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="form-title">Pop-up windows animation:</div>
                            <select class="selectpicker fx-modal">
                                <option value="overlay-corner">corner</option>
                                <option value="overlay-door">door</option>
                                <option value="overlay-hugeinc">hugeinc</option>
                                <option value="overlay-slidedown">slidedown</option>
                                <option value="overlay-scale">scale</option>
                                <option value="overlay-contentpush" selected>contentpush</option>
                                <option value="overlay-simplegenie">simplegenie</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="form-title">Goods appearance animation:</div>
                            <select class="selectpicker fx-item">
                                <option value="fadeInDown">fadeInDown</option>
                                <option value="zoomIn">zoomIn</option>
                                <option value="zoomInRight">zoomInRight</option>
                                <option value="slideInLeft">slideInRight</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group text-center mb25">
                    <div class="checkbox ib">
                        <input type="checkbox" name="check" id="chck1">
                        <label for="chck1">Save as default</label>
                    </div>
                </div>
                <div class="text-center">
                    <div class="ib">
                        <a href="" class="reset-btn mr25"><span>Reset settings</span></a>
                        <button type="submit" class="btn btn-clicked btn--moema">Apply</button>
                    </div>
                </div>
            </div>
        </div>
    </div-->
</form>
	</div>
</div>