//하트
var isHeartChecked = false;

if (isHeartChecked == false)
{
    $(this).attr('class', 'bi bi-heart');
} else if (isHeartChecked == true)
{
    $(this).attr('class', 'bi bi-heart-fill');
}

$('[name=heart]').on('click', function () {
    isHeartChecked = !isHeartChecked;
    if (isHeartChecked == false)
    {
        $(this).attr('class', 'bi bi-heart');
    } else if (isHeartChecked == true)
    {
        $(this).attr('class', 'bi bi-heart-fill');
    }
});


//지도 하트

$(function(){
// 하트 class 초기화
heartItems = document.getElementsByClassName('bi-heart');
for(i = 0; i < likeItems.length; i++){
    heartValue = JSON.parse(heartItems[i].getAttribute('value'));

    if(heartValue == true){
        heartItems[i].attr('class', 'bi bi-heart-fill');
    }else{
        heartItems[i].attr('class', 'bi bi-heart');
    }
}
});

function onClickHeart(id){
    heartValue = JSON.parse($('#'+id).attr('value'));
    heartValue = !heartValue;
    // 여기에 AJAX로 DB 업데이트하는 코드 있어야함!!

    $('#'+id).attr('value', ''+heartValue);
    if(heartValue == true){
        $('#'+id).attr('class', 'bi bi-heart-fill');
    }else{
        $('#'+id).attr('class', 'bi bi-heart');
    }
}




//좋아요 싫어요
var islikeChecked = false;
var isdislikeChecked = false;


if (islikeChecked == false)
{
    $(this).attr('class', 'bi bi-hand-thumbs-up');
} else if (islikeChecked == true)
{
    $(this).attr('class', 'bi bi-hand-thumbs-up-fill');
}
if(isdislikeChecked == false){

    $('[name=like]').on('click', function () {
        islikeChecked = !islikeChecked;
        if (islikeChecked == false)
        {
            $(this).attr('class', 'bi bi-hand-thumbs-up');
        } else if (islikeChecked == true)
        {
            $(this).attr('class', 'bi bi-hand-thumbs-up-fill');
        }
    });
}



    if (isdislikeChecked == false)
    {
        $(this).attr('class', 'bi bi-hand-thumbs-down');
    } else if (isdislikeChecked == true)
    {
        $(this).attr('class', 'bi bi-hand-thumbs-down-fill');
    }
    
if(islikeChecked == false){

    $('[name=dislike]').on('click', function () {
        isdislikeChecked = !isdislikeChecked;
        if (isdislikeChecked == false)
        {
            $(this).attr('class', 'bi bi-hand-thumbs-down');
        } else if (isdislikeChecked == true)
        {
            $(this).attr('class', 'bi bi-hand-thumbs-down-fill');
        }
    });

}



//게시판 좋아요

var isboardlikeChecked = false;

if (isboardlikeChecked == false)
{
    $(this).attr('class', 'btn btn-secondary active');
} else if (isboardlikeChecked == true)
{
    $(this).attr('class', 'btn btn-primary active');
}

$('#boardLike').on('click', function () {
    isboardlikeChecked = !isboardlikeChecked;
    if (isboardlikeChecked == false)
    {
        $(this).attr('class', 'btn btn-secondary active');
    } else if (isboardlikeChecked == true)
    {
        $(this).attr('class', 'btn btn-primary active');
    }
});



//별점
var drawStar = (target) => {
    document.querySelector('.restar span').style.width = `${target.value * 10}%`;
}


//더보기
$(function () {
    isHidden = false;
    $('.reviewlist').slice(0, 2).show();
    if ($('div:hidden').length == 0)
    {
        document.getElementById('seeMore').innerText = '리뷰없음';
    }
    $('#seeMore').click(function (e) {
        if (isHidden == true)
        {
            document.getElementById('seeMore').innerText = '리뷰더보기';
            $('.reviewlist').slice(0, 2).hide();
        } else
        {
            document.getElementById('seeMore').innerText = '리뷰감추기';
            $('.reviewlist').show();
        }
        isHidden = !isHidden;
    });
});



//글자수 
$(function () {
    $('[name=reWrite]').keydown(function () {
        var inputTextLength = $(this).val().length;//글자수
        if (inputTextLength > 1000)
        {
            $(this).val($(this).val().substring(0, 1000));
        }
        var inputPossible = 1000 - ($(this).val().length);
        $('.textLength').html(inputPossible);
    });
}); 

//박물관 댓글 글자수 
$(function () {
    $('#mrwrite').keydown(function () {
        var inputTextLength = $(this).val().length;//글자수
        if (inputTextLength > 1000)
        {
            $(this).val($(this).val().substring(0, 1000));
        }
        var inputPossible = 1000 - ($(this).val().length);
        $('.textLength').html(inputPossible);
    });
}); 


//사이드바

$(function () {
    $(".left_sub_menu").hide();
    $(".has_sub").click(function () {
        $(".left_sub_menu").fadeToggle(300);
    });

    // 외부 클릭 시 좌측 사이드 메뉴 숨기기
    $('.overlay').on('click', function () {
        $('.left_sub_menu').fadeOut();
        $('.hide_sidemenu').fadeIn();
    });
});



//지도 검색

var cnt = new Array();
cnt[0] = new Array('전체');
cnt[1] = new Array('전체', '강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구');
cnt[2] = new Array('전체', '강서구', '금정구', '남구', '동구', '동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구', '기장군');
cnt[3] = new Array('전체', '남구', '달서구', '동구', '북구', '서구', '수성구', '중구', '달성군');
cnt[4] = new Array('전체', '계양구', '남구', '남동구', '동구', '부평구', '서구', '연수구', '중구', '강화군', '옹진군');
cnt[5] = new Array('전체', '광산구', '남구', '동구', '북구', '서구');
cnt[6] = new Array('전체', '대덕구', '동구', '서구', '유성구', '중구');
cnt[7] = new Array('전체', '남구', '동구', '북구', '중구', '울주군');
cnt[8] = new Array('전체');
cnt[9] = new Array('전체', '고양시', '과천시', '광명시', '구리시', '군포시', '남양주시', '동두천시', '부천시', '성남시', '수원시', '시흥시', '안산시', '안양시', '오산시', '의왕시', '의정부시', '평택시', '하남시', '가평군', '광주시', '김포시', '안성시', '양주군', '양평군', '여주군', '연천군', '용인시', '이천군', '파주시', '포천시', '화성시');
cnt[10] = new Array('전체', '강릉시', '동해시', '삼척시', '속초시', '원주시', '춘천시', '태백시', '고성군', '양구군', '양양군', '영월군', '인제군', '정선군', '철원군', '평창군', '홍천군', '화천군', '황성군');
cnt[11] = new Array('전체', '제천시', '청주시', '충주시', '괴산군', '단양군', '보은군', '영동군', '옥천군', '음성군', '진천군', '청원군');
cnt[12] = new Array('전체', '공주시', '보령시', '서산시', '아산시', '천안시', '금산군', '논산군', '당진군', '부여군', '서천군', '연기군', '예산군', '청양군', '태안군', '홍성군');
cnt[13] = new Array('전체', '군산시', '김제시', '남원시', '익산시', '전주시', '정읍시', '고창군', '무주군', '부안군', '순창군', '완주군', '임실군', '장수군', '진안군');
cnt[14] = new Array('전체', '광양시', '나주시', '목포시', '순천시', '여수시', '여천시', '강진군', '고흥군', '곡성군', '구례군', '담양군', '무안군', '보성군', '신안군', '여천군', '영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군', '화순군');
cnt[15] = new Array('전체', '경산시', '경주시', '구미시', '김천시', '문겅시', '상주시', '안동시', '영주시', '영천시', '포항시', '고령군', '군위군', '봉화군', '성주군', '영덕군', '영양군', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군');
cnt[16] = new Array('전체', '거제시', '김해시', '마산시', '밀양시', '사천시', '울산시', '진주시', '진해시', '창원시', '통영시', '거창군', '고성군', '남해군', '산청군', '양산시', '의령군', '창녕군', '하동군', '함안군', '함양군', '합천군');
cnt[17] = new Array('전체', '서귀포시', '제주시', '남제주군', '북제주군');
function change(add) {
    sel = document.form.county
    /* 옵션메뉴삭제 */
    for (i = sel.length - 1; i >= 0; i--)
    {
        sel.options[i] = null
    }
    /* 옵션박스추가 */
    for (i = 0; i < cnt[add].length; i++)
    {
        sel.options[i] = new Option(cnt[add][i], cnt[add][i]);
    }
}




//평균 별점

var rating = $('.rating');

rating.each(function () {
    var $this = $(this);
    var targetScore = $this.attr('data-rate');
    var firstdigit = targetScore.split('.');

    if (firstdigit.length > 1)
    {
        for (var i = 0; i < firstdigit[0]; i++)
        {
            $this.find('.star').eq(i).css({ width: '100%' });
        }
        $this.find('.star').eq(firstdigit[0]).css({ width: firstdigit[1] + '0%' });
    } else
    {
        for (var i = 0; i < targetScore; i++)
        {
            $this.find('.star').eq(i).css({ width: '100%' });
        }
    }

});


// reply삭제

$(document).ready(function(){
    $('.trashbtn').click(function(){
        $(this).closest('.reviewlist').remove()
    });
});



// 찜 삭제

$(document).ready(function(){
    $('.ai-trash').click(function(){
        $(this).closest('.favoriteImg').remove()
    });
});