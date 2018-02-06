function infoConfirm() {
	if (document.reg_frm.name.value.length == 0) {
		alert("이름은 필수 사항입니다.");
		reg_frm.name.focus();
		return false;
	}
	if (document.reg_frm.id.value.length == 0) {
		alert("아이디는 필수 사항입니다.");
		reg_frm.id.focus();
		return false;
	}
	if (document.reg_frm.id.value.length <= 3) {
		alert("아이디는 3글자 이상이어야 합니다.");
		reg_frm.id.focus();
		return false;
	}
	if (document.reg_frm.pw.value.length == 0) {
		alert("비밀번호는 필수 사항입니다.");
		reg_frm.pw.focus();
		return false;
	}
	if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("비밀번호가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return false;
	}
	if (document.reg_frm.address.value.length == 0) {
		alert("주소는 필수 사항입니다.");
		reg_frm.address.focus();
		return false;
	}
	if (document.reg_frm.eMail1.value.length == 0) {
		alert("이메일은 필수 사항입니다.");
		reg_frm.eMail1.focus();
		return false;
	}
	if (document.reg_frm.eMail2.value.length == 0) {
		alert("이메일은 필수 사항입니다.");
		reg_frm.eMail2.focus();
		return false;
	}

	document.reg_frm.submit();

}

function updateInfoConfirm() {

	if (document.reg_frm.pw.value == " "
			|| document.reg_frm.pw.value.length == 0) {
		alert("패스워드를 입력하세요");
		reg_frm.pw.focus();
		return false;
	}

	if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("패스워드가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return false;
	}

	document.reg_frm.submit();

}

function eMailSend() {

	document.a.submit();
	window.opener.top.location.href = "DiseaseServlet?command=eMailCheck_Next"
	window.close()

}
function confirmemail(emailconfirm_value, authNum) {
	// 입력한 값이 없거나, 인증코드가 일지하지 않을 경우
	if (!emailconfirm_value || emailconfirm_value != authNum) {
		alert("다시 확인하세요");
		emailconfirm_value = " ";
		// 인증코드가 일치하는 경우
	} else if (emailconfirm_value == authNum) {
		alert("확인완료");
		emailconfirm_value = " ";

		self.close();
		open.document.a.emailconfirm_value.value = 1;

	}

}

function emailcheck(eMail1, eMail2) {
	// 유효성 검사
	if (!a.eMail1.value || !a.eMail2.value) {
		alert(emailerror);
		a.eMail1.focus();
		return;
	} else {
		if (a.eMail1.value) {
			if (a.eMail2.value == 0) {
				// 직접입력
				if (a.eMail1.value.indexOf("@") == -1) {
					alert(emailerror);
					a.eMail1.focus();
					return false;
				}
			} else {
				// 선택입력
				if (a.eMail1.value.indexOf("@") != -1) {
					alert(emailerror);
					a.eMail1.focus();
					return false;
				}
			}

		}
	}
	// 인증을 위해 새창으로 이동
	var url = "member/emailCheck.jsp?eMail1=" + eMail1 + "&eMail2=" + eMail2;
	open(url, "emailwindow",
			"statusbar=no, scrollbar=no, menubar=no, width=400, height=200");
}

function openCheck() {

	var url = "DiseaseServlet?command=eMailCheck&eMail1="
			+ document.reg_frm.eMail1.value + "&eMail2="
			+ document.reg_frm.eMail2.value;
	window.open(url, "eMailCheckform", " width=500, height=200");

}
function adminopen() {

	var url = "DiseaseServlet?command=admin_Loginform";
	window.open(url, "adminLoginform", "width=500, height=300");

}

function idcheck() {
	if (document.reg_frm.id.value == "") {
		alert('아이디를 입력해주세요');
		document.reg_frm.id.focus();
		return;
	}
	var url = "DiseaseServlet?command=id_check_form&id="
			+ document.reg_frm.id.value;
	window
			.open(url, "idCheckform",
					"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=400, height=400");
}

function checkid() {
	var frm = document.idfindscreen;
	var regExp = '/^([/\w/g\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/';
	if (!regExp.test(frm.email.value)) {
		alert('올바른 email을 입력해주세요.');
		frm.email.focus();
	}
}

function changeForm(val) {
	if (val == "1") {
		location.href = "DiseaseServlet?command=delete_member_form";
	}
}

// 비밀번호 미입력시 경고창
function checkValue() {
	if (!document.deleteform.pw.value) {
		alert("비밀번호를 입력하지 않았습니다.");
		return false;
	}
}
