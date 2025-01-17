const regexAlphaNum = /^[A-Z0-9]{2,8}$/;  // 2자리에서 8자리까지 허용

// 입력 값 검증 함수
const validateInput = (inputValue, length) => {
	if (!regexAlphaNum.test(inputValue) || inputValue.length !== length) {
		return false;
	}
	return true;
};

document.getElementById("submitBtn").addEventListener("click", (e) => {
	const firstInput = document.getElementById('firstInput').value;		// 8자리 영문 대문자와 숫자 입력 검증
	const secondInput = document.getElementById('secondInput').value;	// 4자리 영문 대문자와 숫자 입력 검증
	const thirdInput = document.getElementById('thirdInput').value;		// 2자리 영문 대문자와 숫자 입력 검증
	const isChecked = document.getElementById('saveIdCheckbox').checked;	// 아이디 저장 여부 체크
	
	if (!validateInput(firstInput, 8)) {
		alert("첫 번째 입력은 8자리 영문 대문자 및 숫자 조합만 가능합니다.");
		e.preventDefault();
		return;
	}
	if (!validateInput(secondInput, 4)) {
		alert("두 번째 입력은 4자리 영문 대문자 및 숫자 조합만 가능합니다.");
		e.preventDefault();
		return;
	}
	if (!validateInput(thirdInput, 2)) {
		alert("세 번째 입력은 2자리 영문 대문자 및 숫자 조합만 가능합니다.");
		e.preventDefault();
		return;
	}
	if (!isChecked) {
		alert("아이디 저장 체크박스를 확인해 주세요.");
		e.preventDefault();
		return;
	}
});
