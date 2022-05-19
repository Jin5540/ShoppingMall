function orderCheck() {


	var name = document.getElementById("name");
	var contry = document.getElementById("contry");
	var code = document.getElementById("code");
	var address = document.getElementById("address");

	
	// 이름 체크
	if (name.value.length < 2 || name.value.length > 11) {
		alert("[성명]\n최소 2자에서 최대 10자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	// 상품 가격 체크 || isNotaNumber 숫자이면 false || true
	if (contry.value.length < 2 || contry.value.length > 21) {
		alert("[국가]\n최소 2자에서 최대 20자까지 입력하세요");
		contry.select();
		contry.focus();
		return false;
	}

	if (!check(/[0-9]{4,11}$/, code,
			"[우편 번호]\n숫자를 5~12자까지 입력하세요"))
		return false;

	// 배송지
	if (address.value.length < 9 || address.value.length > 25) {
		alert("[주소]\n최소 10자에서 최대 24자까지 입력하세요");
		address.select();
		address.focus();
		return false;
	}

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	document.myform.submit()
}