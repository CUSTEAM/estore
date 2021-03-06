<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Uncomment section below to enable self-hosting video -->
          <!-- <section id="s-video" class="s-video hidden-xs"><div id="container"><video class="video-section" autoplay loop="loop" muted><source src="video/cookies.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"'><source src="video/cookies.ogv" type='video/ogg; codecs="theora, vorbis"'><source src="video/cookies.webm" type='video/webm; codecs="vp8, vorbis"'></video><div class="video-info"><div class="wrap">
          <h2 class="b-title">Video about our work</h2><div class="name">Strawberry dessert with coconut and chocolate cream</div><div class="text"> <span>Our customers should know all about our work. So we made some juicy and informative videos about our work for you.</span> <br> <span class="hidden-xs">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis temporibus commodi officiis quo magni, sapiente ratione ut facere incidunt enim dolor animi asperiores quidem, cupiditate. Cumque, minima quisquam debitis! Optio reiciendis, quia doloremque. Obcaecati, fugiat.</span></div></div></div></div></section> -->
          <!-- Uncomment section below to enable Youtube video -->
          <section id="s-video" class="s-video" style="">
            <div class="poster" style="background-image: url(img/video-blank.jpg); position: absolute; left: 0;top: 0;bottom: 0;right: 0; z-index: 1">
            </div>
            <div class="container pos-re video-text" style="position: relative; z-index: 1;">
              <div class="row">
                <div class="video-info">
                  <div class="wrap">
                    <div class="b-title" id="video-start"> 
                      <span class="title-text">Video about our work
                      </span>
                    </div>
                    <div class="name">Strawberry dessert with coconut and chocolate cream
                    </div>
                    <div class="text"> 
                      <span>Our customers should know all about our work. So we made some juicy and informative videos about our work for you.
                      </span> 
                      <br> 
                      <span class="hidden-xs">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis temporibus commodi officiis quo magni, sapiente ratione ut facere incidunt enim dolor animi asperiores quidem, cupiditate. Cumque, minima quisquam debitis! Optio reiciendis, quia doloremque. Obcaecati, fugiat.
                      </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="ytpl" data-src="${video}" data-loop="true">
            </div>
          </section>