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
						<select name="searchType">
							<option value="n"
								<c:out value="${cri.searchType == null?'selected':''}"/>>
							Search Type</option>
							<option value="t"
								<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							title</option>
							<option value="w"
								<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
							writer</option>
							<option value="tw"
								<c:out value="${cri.searchType eq 'tw'?'selected':''}"/>>
							title + writer</option>
						</select>
				</li>
				<li>		
					<input  type="text" name="keyword" value = '${cri.keyword}' id="query" placeholder="Search" />				
				</li>
				<li>		
					<span id="searchBtn" class="button special icon fa-search"></span>				
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
									
				<form id='actionForm' method="get">	
				</form>
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
		
		$("#searchBtn").on("click",function(e){
			var actionForm = $("#actionForm");
			var searchType = $("select[name='searchType']").val();
			var keyword = $("input[name='keyword']").val();
			
			if(searchType === null || searchType === 'n'){
				alert("검색 분류를 설정하세요!");
				return;
			}
			if(keyword.length === 0){
				alert("검색 키워드를 입력하세요!");
				return;
			}
			var str = '';
			str += "<input type='hidden' name='page' value='1'>"; // criteria에 따로 설정 해놓았기 때문에 굳이 안 넣어져도 된다.. 
			str += "<input type='hidden' name='searchType' value='"+searchType+"'>";
			str += "<input type='hidden' name='keyword' value='"+keyword+"'>";
			actionForm.append(str);
			actionForm.submit();
		});
</script>
<%@include file="/WEB-INF/views/include/footer.jsp"%>