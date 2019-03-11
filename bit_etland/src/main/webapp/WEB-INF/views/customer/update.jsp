<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="grid-item" id="navi_bar">
	<jsp:include page="../employee/nav.jsp"/>
</div>
<div class="grid-item" id="side_menu">
 	<img src="${img}/default_image.png" />
</div>
<form id="update_form">
<div class="grid-item">
	<div>
	검색한 사람의 정보<br />
	<!-- 1번 각각 hidden으로 값을 전부 보냄 -->
	<!-- 2번 id만 hidden으로 보냄 -->
	아이디 : <input type="hidden" name="customerId" value="${cust.customerId}" readonly/>
	이름 : <input type="hidden" name="customerName" value="${cust.customerName}" readonly/>
	성별 : <input type="hidden" name="ssn" value="${cust.ssn}" readonly/>
	임시 비밀번호 : <input type="text" name="password" value="임시 비밀번호"/><br />
	전화번호 : <input type="text" name="phone" value="${cust.phone}"/><br />
	주소 : <input type="text" name="city" value="${cust.city}"/><br />
	상세주소 : <input type="text" name="address" value="${cust.address}"/><br />
	우편번호 : <input type="text" name="postalCode" value="${cust.postalCode}"/>
	<input type="hidden" name="cmd" value="cust_update" />
	<input type="hidden" name="page" value="detail" />
	</div>
	<div>
		<span id="confirm_btn" class="label label-success">확인</span>
		<span id="cancel_btn" class="label label-danger">취소 </span>
	</div>
</div>
</form>
<script>
$('#confirm_btn').click(function(){
	$('#update_form')
	.attr('action','${ctx}/customer/update')
	.attr('method','post')
	.submit();
});
$('#cancel_btn').click(function(){
	alert('취소');
});

</script>