<%@ page import="com.myproject.domain.productVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>공지사항 작성</title>
	<style type="text/css">
	
	a:link { color: black; text-decoration: none;}
	a:visited { color: black; text-decoration: none;}
	a:hover { color: black; text-decoration: none;}
	
	.board_label{
	font-family: sans-serif;
	font-size: 15px;
	}
	
	#board_title, #board_content, #admin {
	font-family: sans-serif;
	font-size: 14px;
	}
	
	</style>	
</head>
<!-- 헤더 -->
<header>
<%@ include file="../include/header.jsp" %>
</header>

<!-- body -->
<body>
<br><br><br><br><br><br><br><br><br><br><br>
<div class="container">
	<h1 style="font-family: sans-serif; font-weight: bold; font-size: 35px">공지사항</h1>
	<h3>logotest 공지사항입니다.</h3>
	<hr><br>
	
		<form onsubmit="return check()" name="f" action='/board/boardInsert' method="post">
		
        <div class="form-group">
            <label class="board_label" for="board_title">제목</label>
            <input type="text" class="form-control" id="board_title" name="board_title" placeholder="Title">
        </div> 
         
        <div class="form-group">
            <label class="board_label">작성자</label>
            <input type="text" id="admin" class="form-control" value="관리자" readonly="readonly">
        </div>
        
        <div class="form-group">
            <label class="board_label" for="board_content">내용</label>
            <textarea style="height: 450px;" class="form-control" id="board_content" name="board_content" rows="10"></textarea>
        </div>
        
        <div style="float: right;">
	        <button type="submit" class="btn btn-dark btn-lg">등록하기</button>
	        <button onclick="location.href='/board/boardList'" type="button" class="btn btn-dark btn-lg">목록으로</button>
        </div>
        
   		</form>



        
		
	<br><br><br><br>
	
	

</div>
<script type="text/javascript">

//공백체크
function check() {	
	
	if(f.board_title.value == "" || f.board_title.value == null) {
	   alert("제목을 입력해 주세요.");
	   f.board_title.focus();
	   return false;
	}
	
	else if(f.board_content.value == "" || f.board_content.value == null) {
	   alert("내용를 선택해주세요.");
	   f.board_content.focus();
	   return false;
	}	

  else return true;

}
</script>

</body>
<br><br><br><br><br><br><br><br>

<!-- footer -->
<footer>
<%@ include file="../include/footer.jsp" %>
</footer>
</html>