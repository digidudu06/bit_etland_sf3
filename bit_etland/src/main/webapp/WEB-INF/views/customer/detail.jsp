<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="grid-item" id="navi_bar">
	<jsp:include page="../employee/nav.jsp"/>
</div>
<div class="grid-item" id="side_menu">
	<form id="file_form">
 		<img src="${img}/${image.imgName}.${image.imgExtention}"/><br />
 		<input type="file" name="file_upload" />
 		<input type="submit" id="file_upload_btn" />
	</form>
 	<span id="photo_btn" class="label label-primary">프로필 변경</span>
</div>
<div class="grid-item">
	<div>
	검색한 사람의 정보<br />
	<div>아이디 : ${cust.customerId}</div>
	<div>이름 : ${cust.customerName}</div>
	<div>성별 : 남</div>
	<div>전화번호 : ${cust.phone}</div>
	<div>주소 : ${cust.city}</div>
	<div>상세주소 : ${cust.address}</div>
	<div>우편번호 : ${cust.postalCode}</div>
	</div>
	<div>
		<span id="update_btn" class="label label-success">수정</span>
		<span id="delete_btn" class="label label-danger">회원탈퇴</span>
	</div>
</div>
<script>
$('#update_btn').click(function(){
	location.assign('${ctx}/move/customer/update');
});

$('#file_upload_btn').click(function(){
	$('#file_form')
	.attr('method','post')
	.attr('action','${ctx}/customer.do?cmd=cust_file_upload&page=detail&customer_id=${cust.customerId}')
	.attr('enctype','multipart/form-data')
	.submit();
});

$('#delete_btn').click(function(){
	location.assign('${ctx}/customer.do?cmd=cust_delete&dir=home&page=main&customer_id=${cust.customerId}');
});
</script>