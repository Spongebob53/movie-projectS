function checkAll(checkAll) {
    const checkboxes = document.querySelectorAll('input[type="checkbox"]');
    checkboxes.forEach((checkbox) => {
        checkbox.checked = checkAll.checked
    });
};

function checkIdPw(checkId, checkPw){
    if(checkId && checkPw){
        $(".btn_join").text("가입하기");
        $(".btn_join").attr("disabled",false);
    }else if(!checkId){
        $(".btn_join").text("아이디를 확인해주세요");
    }else if(!checkPw){
        $(".btn_join").text("비밀번호를 확인해주세요");
    }
}

$(function (){
    let checkId = false;
    let checkPw = false;

    $("input[name=customer_id]").keyup(function (){
        let customer_id = $(this).val();
        $.ajax({
           url : "checkId",
            type : "post",
            data : {customer_id : customer_id},
            dataType : "text",
            success : function (data){
                if(data=="1"){
                    $(".checkId").text("사용 가능");
                    checkId = true;
                }else{
                    $(".checkId").text("사용 불가능");
                    checkId = false;
                }
                checkIdPw(checkId, checkPw);
            },
            error : function (err){
               alert("에러에러에러" + err);
            }
        });
    });

    $("input[type=password]").keyup(function(){
        let customer_pw = $("input[name=customer_pw]").val();
        let customer_chpw = $("input[name=customer_chpw]").val();
        if(customer_pw != customer_chpw){
            $(".checkPw").text("불일치");
            checkPw = false;
        }else{
            $(".checkPw").text("일치");
            checkPw = true;
        }
        checkIdPw(checkId, checkPw);
    });
});

