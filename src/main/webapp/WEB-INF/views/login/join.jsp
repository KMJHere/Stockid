<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<div class="login">
	<div>
		<form id="frm">
			<img class="logo" src="data:image/png;base64,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" />
			<p><input type="text" id="usrId" name="usrId" placeholder="아이디" maxlength="30" /></p>
			<p><input type="password" id="usrPw" name="usrPw" placeholder="비밀번호" maxlength="30" /></p>
			<p><input type="password" id="usrPwChk" name="usrPwChk" placeholder="비밀번호 확인" maxlength="30" /></p>
			<span class="pw-noti red hide"></span> <!-- 비밀번호 일치 여부에 따라 red 클래스 추가, 삭제 -->
			<p><input type="text" id="usrNm" name="usrNm" placeholder="이름" maxlength="10" /></p>
			<p><input type="text" id="usrNick" name="usrNick" placeholder="닉네임" maxlength="10" /></p>
			<p><input type="text" id="usrMobile" name="usrMobile" placeholder="전화번호" maxlength="20" /></p>
			<p><input type="text" id="usrEmail" name="usrEmail" placeholder="이메일" maxlength="50" /></p>
			<button type="button" id="joinBtn" class="btn-login">회원가입</button>
		</form>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function () {
	}).on("keyup","#usrPw, #usrPwChk",function(){ // 비밀번호, 비밀번호 확인 일치 여부 확인
		$(".pw-noti").removeClass("hide");
		var isEqual = compareStr( $("#usrPw").val(),$("#usrPwChk").val() ); // 일치 여부 확인
		if (!isEqual) {
			$(".pw-noti").addClass("red");
		} else {
			$(".pw-noti").removeClass("red");
		}
	}).on("click","#joinBtn",function(){ // 회원 가입
		if ( joinChk() ) {
			joinUsr();
		}
	})
	;
	
	// 1. 유효성 체크
	function joinChk() {
		var result = true;
		var $chkTarget = $("#frm input");
		
		$.each($chkTarget, function(idx, elem) {
		    if ( isTrimEmpty($(elem).val()) ) {
				alert($(elem).attr("placeholder") + " 란을 입력하세요");
				$(elem).focus();
				result = false;
				return false;
			}
	    });
	    
    	return result;
	}
	
	// 2. 회원 가입
	function joinUsr() {
		var formData = new FormData($('#frm')[0]);
		
		$.ajax({
			type: "POST",
			enctype: 'multipart/form-data',
			url: '/login/joinUsr.do',
			data: formData,
			processData: false,
			contentType: false,
			cache: false,
			timeout: 600000,
			success: function (data) {
				if (data.isSuccess) {
					alert(data.resultMsg);
					window.location = "/login/login.do";
				} else {
					alert(data.resultMsg);
				}
			},
			error: function (e) {
				console.log("ERROR : ", e);
			}
		});
	}
	
	// 테스트용 데이터 삽입
	function test() {
		$("#usrId").val("testID");
		$("#usrNm").val("테스트이름");
		$("#usrNick").val("테스트닉네임");
		$("#usrMobile").val("01023452345");
		$("#usrEmail").val("test@naver.com");
	}
</script>