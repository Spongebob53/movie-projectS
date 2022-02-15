// 약관 모두 체크하기
function checkAll(checkAll) {
    const checkboxes = document.querySelectorAll('input[type="checkbox"]');
    checkboxes.forEach((checkbox) => {
        checkbox.checked = checkAll.checked
    });
};

// 회원가입 양식 확인 후 제출 버튼 활성화
function confirm(checkId, checkPw, checkEmail){
    const btn = $(".btn_join");
    let text;
    if (checkId && checkPw && checkEmail) {
        text = "가입하기";
        btn.attr("disabled", false);
    } else if (!checkId) {
        text = "중복된 아이디가 존재합니다";
    } else if (!checkPw) {
        text = "비밀번호가 일치하지 않습니다";
    } else if (!checkEmail) {
        text = "올바른 이메일 형식이 아닙니다";
    }
    btn.text(text);
}

$(function () {
    let checkId = false;
    let checkPw = false;
    let checkEmail = false;

    // 아이디 입력값 중복 여부 확인하기
    $("input[name=customer_id]").blur(function () {
        const customer_id = $(this).val();
        $.ajax({
            url: "checkId",
            type: "post",
            data: {customer_id: customer_id},
            dataType: "text",
            success: function (data) {
                if (data == "1" && (customer_id.trim() == customer_id)) {
                    checkId = true;
                } else {
                    checkId = false;
                }
                confirm(checkId, checkPw, checkEmail);
            },
            error: function (err) {
                alert("에러에러에러" + err);
            }
        });
    });

    // 패스워드 입력값 1, 2차 일치 확인하기
    $("input[type=password]").blur(function () {
        const customer_pw = $("input[name=customer_pw]").val();
        const customer_chpw = $("input[name=customer_chpw]").val();
        if (customer_pw != customer_chpw) {
            checkPw = false;
        } else {
            checkPw = true;
        }
        confirm(checkId, checkPw, checkEmail);
    });

    // 이메일 입력값 양식 확인하기
    $("input[type=email]").blur(function () {
        const customer_email = $(this).val();
        const email = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (email.test(customer_email)) {
            checkEmail = true;
        }
        confirm(checkId, checkPw, checkEmail);
    });
});

