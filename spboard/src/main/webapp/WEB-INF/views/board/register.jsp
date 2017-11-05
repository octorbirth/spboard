<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="/resources/assets/css/custom.css?ver=3" />

	<br>
	<form method="post" id='mainForm'>		
		<h5>Title:</h5>
		<input type="text" name="title" id="title" placeholder="Title">
		<input type='hidden' name='writer' value ="UserID">
	</form>
	<br>
	<h5>File:</h5>
	<div class='uploadDiv'>
	  <form id='uploadForm'>
	    <input id='uploadFile' type='file' name='file'>
	    <input type='submit' class="button icon fa-upload" value='Upload'>
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
		<li><a href='#' class="button default">Cancel</a></li>
		<li><a id="createBoard" class="button special">Register</a></li>
	</ul>
	
	<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>
<script>

	var mainForm = $("#mainForm");
	
	$("#createBoard").on("click",function(e){
		e.preventDefault();
		
		var title = mainForm.find("input[name='title']").val();
		if(title.length === 0){
			alert("제목을 입력하세요!");
			return;
		}
		
		mainForm.submit();
		
		
	});

</script>
	
<%@include file="/WEB-INF/views/include/footer.jsp"%>