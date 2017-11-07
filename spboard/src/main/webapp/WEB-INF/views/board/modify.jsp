<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="/resources/assets/css/custom.css?ver=3" />

	<span class='fr'><a href="/board/list?page=${cri.page}" class="button small">List</a></span><br>
	<form id='modForm' method='post'>		
		<h5>Title:</h5>
		<input type="text" name="title" id="title" placeholder="Title" value='${board.title}'>
		<input type='hidden' name='bno' value='${board.bno}'>
		<input type='hidden' name='page' value='${cri.page}'>
	</form>
	
	<br>
	<h5>File:</h5>
	<div class='uploadDiv'>
	  <form id='uploadForm'>
	    <input type="button" class="button small" value="File +" onclick=document.all.file.click();>
				<input type="file" name="file" id="file" style="display: none;"/>
	    <input type='submit' class="button icon fa-upload small special" value='Upload'>
	  </form>
	</div>
	
	<div class="box" style="margin-bottom: 0;">
		<ul class='imgList fileul'> 
    	</ul>

	</div>
	<div class="box">
		<ul class='fileList fileul'> 
    	</ul>
	</div>

	<ul class="actions fr">
		<li><a href="#" data-oper='del' class="button btn Default">Delete</a></li>
		<li><a href="#" data-oper='mod' class="button btn special">Modify</a></li>
		<li><a href="#" data-oper='cancel' class="button btn special">Cancel</a></li>
	</ul>
	
	<form id='actionForm' method="get">
	</form>
	
	<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>
  
  <script>
  
  	var actionForm = $("#actionForm");
  	$(".btn").click(function(e) {
		e.preventDefault();
	});
  	
  	$(".btn[data-oper='del']").click(function(e) {
		actionForm.append("<input type='hidden' name='bno' value='${board.bno}'>");
		actionForm.attr("method", "post").attr("action","/board/remove").submit();
	});
  	
  	$(".btn[data-oper='mod']").click(function(e) {
  		e.preventDefault();
  		var modForm = $("#modForm");
		var title = modForm.find("input[name='title']").val();
		if(title.length === 0){
			alert("제목을 입력하세요!");
			return;
		}
		modForm.submit();
	});
  	
  	$(".btn[data-oper='cancel']").click(function(e) {
  		actionForm.append("<input type='hidden' name='bno' value='${board.bno}'>");
  		actionForm.append("<input type='hidden' name='page' value='${cri.page}'>");
  		actionForm.attr("action","/board/view").submit();
	});
  
  </script>
<%@include file="/WEB-INF/views/include/footer.jsp"%>