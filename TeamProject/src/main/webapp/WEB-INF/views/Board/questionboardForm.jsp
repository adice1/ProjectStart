<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.ko{
     background: #FFFFFF;
}
.fo{
    height: 20px;
    font-size: 32px;
    font-weight: 700;
    color: #fff;
}
.go{
    
    height: 200px;
    background: #333B3D;
}
.ho{
   padding: 12px 0 8px 24px;
    color: #148200;
    font-size: 25px;
}
.you{
   margin-top: 20px;
}
.to{
    margin-bottom: 30px;
    margin-top: 10px;
   
}
.vo{
    margin-top: 20px;
    margin-bottom: 30px;
    border-style: dotted;
    border-width: thin;
    border-radius: 10px;
    background: #FFFFFF;
    width: 670px;
}
.pon{
    margin-bottom: 30px;
    margin-top: 40px;
}
.pos{

   width: 670px;
   height: 250px;
   background: #EBEBEB;
   margin-top: 50px;
}
.pos.pos1{

   width: 670px;
   height: 250px;
   background: #EBEBEB;
}

.hedder{
   margin-top: 20px;
   width: 670px;
   height: 50px;
   background: #e6e8da;
}
.foter{
  height: 200px;
  background-color: #333B3D;
}
</style>
<c:url var="home" value="/"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("div.title").css("cursor", "pointer").click(function(){
		let no = $(this).attr("id");
		$("#writeNo").val(no);
		$("#frm").attr("action", "${home }QuestionBoard/detailRead");
		$("#frm").submit();
	})
	$("#allSelect").click(function() {
		console.log(this.checked);
		$(".chkbox").prop('checked', this.checked);
		console.log($(".chkbox").length);
	})
	$(".chkbox").click(function() {
		console.log($(".chkbox").length);
		console.log($(".chkbox:checked").length);
		if($(".chkbox").length == $(".chkbox:checked").length)
			$("#allSelect").prop('checked', true);
		else
			$("#allSelect").prop('checked', false);
		
		let chked = $(".chkbox").length == $(".chkbox:checked").length;
		$("#allSelect").prop('checked', chked);
	})
});
</script>
<script type="text/javascript">
function proc(cmd){
	document.getElementById('frm').action=cmd;
	document.getElementById('frm').submit();

</script>
<html>
<body class="ko"><br/>
<div class="go"><h2 align="center" class="fo">????????? ?????? ???????????? ???????????????.</h2></div>
<center>
<div class="pos">
<div class="hedder"><h1 class="ho">Q&A</h1>
<div class="pos1">
<ul>
<li>??????</li>
<li>?????????</li>
<li>??????</li>
<li>??????</li>
<li>??????, ??????</li>
<li>??????</li>
<li>??????</li>
<li>??????</li>
<li>??????</li>
<li>???????????????</li>
<li>??????</li>
<li>??????</li>
<li>????????????</li>
<li>??????Q&A</li>
<li>??????&????????????</li>
<li>??????????????????,??????</li>
</ul>

</div>
</div>
</div>


<h2 class="pon">?????? ??????</h2>
<div class="vo">
<form id="frm" action="${home }QuestionBoard/QuestionWrite" method="post">
<input type="hidden" id="writeNo" name="writeNo"/>
<table style="width: 650px; ">
	<thead>
	<tr>
		<th style="width: 40px; height:20px;" align="center">??????</th>
		<th style="width: 330px; height:20px;" align="center">??? ???</th>
		<th style="width: 80px; height:20px;" align="center">?????????</th>
		<th style="width: 120px; height:20px;" align="center">?????????</th>
		<th style="width: 80px; height:20px;" align="center">?????????</th>
	</tr>
	
	<tr>
		<td style="width: 40px; height:20px;" align="center"><hr/></td>
		<td style="width: 330px; height:20px;" align="center"><hr/></td>
		<td style="width: 80px; height:20px;" align="center"><hr/></td>
		<td style="width: 120px; height:20px;" align="center"><hr/></td>
		<td style="width: 80px; height:20px;" align="center"><hr/></td>
	</tr>
	<c:forEach var="board" items="${boardLst }">
	<tr>
		<td style="width: 40px; height:40px;" align="center">
		<input type="checkbox" name="chkbox" value="${board.no }" class="chkbox"/></td>
		<td style="width: 330px; height:40px;" align="center"><pre>
		<div class="title" id="${board.no }">${board.title }</div></pre></td>
		<td style="width: 80px; height:40px;" align="center">${board.id }</td>
		<td style="width: 120px; height:40px;" align="center">${board.writedate }</td>
		<td style="width: 80px; height:40px;" align="center">${board.hit }</td>
	</tr>
	</c:forEach>
	<tr><td colspan=5><hr/></td></tr>
	<tr>
		<td colspan=2><input id="allSelect" type="checkbox"/>????????????</td>
		<td colspan=3 align="right">
			<button style="width: 100px; ">?????????</button>
			<button formaction="${home }QuestionBoard/deletes" style="width: 100px; ">??????</button>
		</td>
	</tr>
	<tr><td colspan=5><hr/></td></tr>
</table>
</form>
<div class="you">
${navi }
</div>
<table>
<tr>
<td>
<form class="to" id="frm" action="${home}QuestionBoard/boardProc" method="post">
	<select name="searchName">
		<option value="all">??????</option>
		<option value="title">??????</option>
		<option value="id">?????????</option>
	</select>
	<input type=text name='searchWord'/>
	<input type="submit" name='searchBtn' value='??????' style="width: 80px; "/>
	</form>
	</div>
</td>
</tr>
</table>
</center>
<div class="foter">
</div>
</body>
</html>