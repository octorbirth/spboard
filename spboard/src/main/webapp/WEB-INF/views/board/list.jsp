<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="/resources/assets/css/pagination.css" />
<link rel="stylesheet" href="/resources/assets/css/custom.css?ver=3" />
				
	<header>
		<h2>게시판</h2>
	</header>
	
	<div>
	
			<ul class="actions">
				<li>
					<select >
					  <option value="volvo">Search Type</option>
					  <option value="saab">title</option>
					  <option value="audi">writer</option>
					  <option value="audi">title + writer</option>
					</select>	
				</li>
				<li>		
					<input  type="text" name="keyword" id="query" placeholder="Search" />				
				</li>
				<li>		
					<span class="button special icon fa-search"></span>				
				</li>		
			</ul>
		<div class='fr pt'>
			<a href="#" class="button default small">ALL List</a>	
			<a href="/board/register" class="button special small">Register</a>
		</div>
	</div><br>
	
									<div class="table-wrapper">
										<table class="alt">
											<thead>
												<tr>
													<th>Bno</th>
													<th>Title</th>
													<th>Regdate</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="item" items="${list}">
												<tr>
													<td>${item.bno}</td>
													<td><a href='/board/view?bno=${item.bno}'>${item.title}</a></td>
													<td><fmt:formatDate value="${item.regdate}"
			pattern="yyyy-MM-dd HH:mm" /></td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>
									<center>						
										<ul class="pagination">
											<li><span class="button disabled">Prev</span></li>
											<li><a href="#" class="page active">1</a></li>
											<li><a href="#" class="page">2</a></li>
											<li><a href="#" class="page">3</a></li>
											<li><a href="#" class="page">8</a></li>
											<li><a href="#" class="page">9</a></li>
											<li><a href="#" class="page">10</a></li>
											<li><a href="#" class="button">Next</a></li>
										</ul>
									</center>
								
<script>
		var msg = '${result}';
		if (msg === 'regsuccess') {
			alert("작업처리 완료");
		}
</script>
<%@include file="/WEB-INF/views/include/footer.jsp"%>