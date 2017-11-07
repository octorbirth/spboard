<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="/resources/assets/css/slick-theme.css?ver=4"/>
<link rel="stylesheet" type="text/css" href="/resources/assets/css/slick.css"/>
<link rel="stylesheet" href="/resources/assets/css/custom.css?ver=6" />

<!-- Main -->
<div id="main">
	<div class="inner">
		<h1>${board.title}</h1>
		<div class="row">
			<div class="3u 12u$(medium)">
				<h4>${board.writer}</h4>
			</div>
			<div class="5u 12u$(medium)" style="text-align: end">
				<h4 class="icon fa-calendar-o"> <fmt:formatDate value="${board.regdate}"	pattern="yyyy-MM-dd HH:mm" /></h4>
			</div>
			<div class="2u 12u$(medium)" style="text-align: end">
				<h4 class="icon fa-eye"> 0</h4>
			</div>
			<div class="2u 12u$(medium)" style="text-align: end">
				<h4 class="icon fa-comments"> 0</h4>
			</div>
		</div>

		<hr style="margin-top: 0px;">
		<div class="row">						
			<div class="dropdown">
				<button class="button icon fa-save">Downloads</button>
				<div class="dropdown-content">
					<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
						3</a>
				</div>
			</div>
		</div>
		<br><br>
		<div align="center">
		<div class="images-div main" >
		   <div><img src='/resources/images/pic01.jpg' class='images'></div>
		    <div><img src='/resources/images/pic02.jpg' class='images'></div>
		    <div><img src='/resources/images/pic03.jpg' class='images'></div>
		</div>	
		</div>
		<br><br>
		<div class="12u$">
			<ul class="actions fr">
				<a href='/board/modify?bno=${board.bno}&page=${cri.page}'><li><button class="special button"/>Modify</li></a>
				<a href='/board/list?page=${cri.page}'><li><button class="default button"/>List</li></a>
			</ul>
		</div>
	</div>
	
	<form id="actionForm" action="" method="get">
	</form>
</div>

<div class="media">
  <div class="media-body">
    <span>Replyer1</span><span> | 2017-11-04</span><span class='fr'>삭제 | 수정</span><br>
    <p style="margin:0">vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
    <a>답글달기</a>

    <div class="media" style="padding-left: 1.75em; margin-top:0.75em">
      <div class="media-body">
        <span>Replyer1</span><span> | 2017-11-04</span><span class='fr'>삭제 | 수정</span><br>
		<p style="margin:0">vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
		<a>답글달기</a>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>	
<script type="text/javascript" src="/resources/assets/js/slick.min.js"></script>
<script>
	$('.images-div').slick({
	  dots: true,
	  infinite: true,
	  speed: 500,
	  fade: true,
	  cssEase: 'linear'
	});
	
	var msg = '${result}';
	if (msg === 'modsuccess') {
		alert("수정 완료");
	}
</script>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
