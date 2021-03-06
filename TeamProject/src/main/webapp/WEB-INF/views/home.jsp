<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:url var="home" value="/"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.1/gsap.min.js"></script>
<html lang="ko">
<style>
html, body, ul, li, button {
   margin: 0;
   padding: 0;
}
img {
   display: block;
   border: 0;
   
   
}
button {
   border: 0;
   background: none;
}
.slide{
   width:600px;
   overflow: hidden;
   margin: 0 auto;
}
.slide ul{
   width: 3300px;
   list-style: none;
   font-size: 0;
}
.slide ul li{
   display: inline-block;
}
.slide button.prev{
   position: absolute;
   left: 420;
   top: 860px;
}
.slide button.next{
   position: absolute;
   right: 390;
   top: 860px;
}
.tableBox table {
   margin:auto;
   text-align: center;
   border-spacing: 4;
}

.tableBox{
   background-color: #162050;
   margin:auto;
   padding: 20px;
   text-align: center;
   color: #ffffff;
}
.square {
 width: 300px;
 height: 60px;
 background: pink;
 border-radius: 30px;
 transform: translate(12%, 0%);
 display:table-cell;vertical-align:middle;
 font-size: 25px;
}
p {
   font-size: 20px;
}
body{
	padding-bottom: 116px;
}
</style>
<head>
<script type="text/javascript">

(function(){
   var current = 0;
   var max =0;
   var container;
   function init() {
      container = jQuery(".slide ul");
      max = container.children().length;
      
      events();
   }
   function events(){
      jQuery("button.prev").on("click", prev);
      jQuery("button.next").on("click", next);
   }
   
   function prev(e) {
      current--;
      if(current < 0) current = max-1;
      animate();
   }
   function next(e) {
      current++;
      if(current > max-1) current = 0;
      animate();
   }
   function animate(){
      var moveX = current * 654;
      TweenMax.to( container, 0.8, { marginLeft:-moveX, ease:Expo.easeOut});   
   }
   jQuery( document).ready(init);
})();
</script>
</head>
<body>
   <h1 style="text-align: center; font-size: 60px;">????????? ???????????? ??? ???????????????</h1>
   <p style="text-align: right;"><a style="text-align: center; font-size: 15px; font-weight: bold;" href="${home}/login/loginProc?id=admin&pw=123">????????? ?????????</a></p>
   <img style="width: 80%; height: 350px; margin : 0 auto ; padding-bottom: 130px;" src="${home }/resources/homeImg.png"" alt="">

   <div class="slide">
      <button class="prev" type="button"><img src="${home }/resources/left.png" alt=""></button>
      <ul>
         <li><img style="width: 600px; height: 250px;" src="${home }/resources/home1.png" alt=""></li>
         <li><img style="width: 600px; height: 250px;" src="${home }/resources/home2.png" alt=""></li>
         <li><img style="width: 600px; height: 250px;" src="${home }/resources/home3.png" alt=""></li>
      </ul>
      <button class="next" type="button"><img src="${home }/resources/right.png" alt=""></button>
   </div>
<br/><br/><br/>
<div class="tableBox">
<h1 style="font-size: 50px;">????????? ?????? ?????? ??????</h1><br/><br/>
<table style="width: 100%;" >
          <tr style="">
             <td><table style="background-color: #9FA4B9; width: 400px;">
                <tr>
                   <td height="90px;">
                      <div class="square"><b style="color :#ffffff">Part1 ????????? ????????????</b></div>
                   </td>
                </tr>
                
                <tr>
                   <td height="150px;">
                   <p>* ????????? ????????? ???????????? ??????
                  <p>* <b>?????? ?????????</b> ?????? <b>?????? ??????</b>
                  <p>* <b>?????? ?????????</b> ?????? ??????</p>
                   </td>
                </tr>
                
                </table></td>
          
             <td><table style="background-color: #9FA4B9; width: 400px;">
                <tr>
                   <td height="90px;">
                      <div class="square"><b style="color :#ffffff">Part2 ????????? ??????</b></div>
                   </td>
                </tr>
                
                <tr>
                   <td height="150px;">
                   <p>* ????????? ???????????? ?????? ??????!
                  <p>* ????????? ????????? ????????? ??????</p>
                   </td>
                   
                </tr>
                </table></td>
          
             <td><table style="background-color: #9FA4B9; width: 400px;">
                <tr>
                   <td height="90px;">
                      <div class="square"><b style="color :#ffffff">Part3 Q&A ?????? ?????????</b></div>
                   </td>
                </tr>
                <tr>
                   <td height="150px;">
                   <p>* <b>????????? ??????</b>??? ???????????? ??????!
                   <p>* ????????? ?????? <b>??????</b> ??????</p>
                   </td>
                </tr>
                </table></td>
          </tr>
       </table>
</div>
</body>
</html>