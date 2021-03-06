<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section id="s-contacts" class="s-contacts ">
            <div class="container wow fadeIn shake ">
              <div class="text-center">
                <h2 class="b-title ct2">Any questions?</h2>
                <div class="sub-b-title">leave your request for a free consultation
                </div>
              </div>
              <form action="index.html" class="form-req mt35">
                <div class="form-group"> 
                  <label for="f1">Name
                    <span class="c-req">*
                    </span>:
                  </label> 
                  <input type="text" class="form-control" id="f1" data-min="2" required>
                </div>
                <div class="form-group">
                  <label for="f2">E-mail:
                  </label> 
                  <input type="email" class="form-control" id="f2" data-notice="Invalid e-mail">
                </div>
                <div class="form-group"> 
                  <label for="f3">Phone Number
                    <span class="c-req">*
                    </span>:
                  </label> 
                  <input type="text" class="form-control form-tel" id="f3" required data-notice="Please enter mobile phone number">
                </div>
                <div class="form-group"> 
                  <label for="f4">Describe your problem or ask a question:
                  </label> 
<textarea class="" id="f4"></textarea>
                </div>
                <div class="description">
                  <span class="c-req">*
                  </span> &ndash; required fields
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-icon btn-clicked btn-validate flaticon-email20">Submit request
                  </button>
                </div>
              </form>
            </div>
          </section>