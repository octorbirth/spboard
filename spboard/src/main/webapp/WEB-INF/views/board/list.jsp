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
			<a href="/board/register?page=${cri.page}" class="button special small">Register</a>
		</div>
	</div><br>
	
									<div class="table-wrapper">
										<table class="alt">
											<thead>
												<tr>
													<th>Bno</th>
													<th>Title</th>
													<th>Regdate</th>
													<th>writer</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="item" items="${list}">
												<tr>
													<td>${item.bno}</td>
													<td><a href='/board/view?bno=${item.bno}&page=${cri.page}'>${item.title}</a></td>
													<td><fmt:formatDate value="${item.regdate}"	pattern="yyyy-MM-dd HH:mm" /></td>
													<td>${item.writer}</td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>
									<center>						
										<ul class="pagination">
											
										</ul>
									</center>
	<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>									
<script src="/resources/assets/js/pagefunc.js"></script>								
<script>
		var msg = '${result}';
		if (msg === 'regsuccess') {
			alert("작업처리 완료");
		}else if(msg === 'delsuccess'){
			alert("삭제처리 완료");
		}
		
		$(".pagination").on("click", "li", function(e){
			e.preventDefault();
			var pageNum = $(this).attr('data-page');
			
			if($(this).attr('data-page') !== 'none') {
				self.location="/board/list?page="+pageNum;
			}
		});
		
		var pageStr = makePage({
			total : ${cri.total},
	        current : ${cri.page},
	        pageSize : 10,
	        liCount : 10
	    });
		
		$(".pagination").html(pageStr);
</script>
<%@include file="/WEB-INF/views/include/footer.jsp"%>