<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!-- 
	@작성자 : 박은지 digidudu06@naver.com
	@작성일자 : 2019. 3. 12. 오전 9:53:22
	@파일명 : intro.jsp
	@기능 : 인트로 템플릿 페이지, 로그인, 회원가입화면
 -->
<<jsp:include page="common.jsp"/>
<body>
	<div id="wrapper" class="grid-container container-fluid">
		<div class="grid-item" id="header">
			<tiles:insertAttribute name="top" />
		</div>
			<tiles:insertAttribute name="nav" />
			
			<tiles:insertAttribute name="content" />
		<div class="grid-item" id="footer">
	        <tiles:insertAttribute name="bottom" />
		</div>
	</div> 
</body>
</html>