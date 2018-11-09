
/*submit 하기전 입력 체크*/
function termsCheck(form){
  if( $("#terms1").is(":checked")==false || $("#terms2").is(":checked")==false ){
      alert("모든 약관에 동의해주세요");
      return false;
  }
  else if ($(form).children("input").val()==""){
    alert("모든 정보를 입력해주세요");
    return false;
  }
  else if ($("#password").val()!=$("#confirm_password").val()){
    alert("페스워드가 일치하지 않습니다.");
    return false;
  }
  return true;
}
