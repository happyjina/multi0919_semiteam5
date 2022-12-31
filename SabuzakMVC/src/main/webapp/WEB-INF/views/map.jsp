<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>



 <link rel="stylesheet" href="${path}/resources/css/map.css">
 
 
 <!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>사부작 - 지도보기</title>

    <link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/img/sabuzak_logo_black.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/img/sabuzak_logo_black.png">

    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
    <link rel="stylesheet" media="screen" href="${path}/resources/css/map.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script src="${path}/resources/js/jquery-3.6.3.min.js"></script>
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/js/theme.min.js"></script>
</head>
<body>

    <!--지도-->

    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

    <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
    <div class="custom_zoomcontrol radius_border">
        <span onclick="zoomIn()"><img class="pt-2" src="${path}/resources/img/plus.png" alt="확대"></span>
        <span onclick="zoomOut()"><img class="pt-2" src="${path}/resources/img/minus.png" alt="축소"></span>
    </div>





    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b74c68ca9c842d7f49d121fdec713bf1&libraries=services,clusterer,drawing"></script>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(37.52393691802903, 126.98023693278213), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);


        // 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
        function zoomIn()
        {
            map.setLevel(map.getLevel() - 1);
        }

        // 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
        function zoomOut()
        {
            map.setLevel(map.getLevel() + 1);
        }




        // 마커가 표시될 위치입니다 
        var markerPosition = new kakao.maps.LatLng(37.52393691802903, 126.98023693278213);

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);


    </script>







    <!--사이드바-->


    <div id="wrapper">
        <div class="topbar" style="position: absolute; top:0;">
            <!-- 왼쪽 메뉴 -->
            <div class="left side-menu">
                <div class="sidebar-inner">
                    <div id="sidebar-menu">
                        <ul>
                            <li class="has_sub">
                                <a href="museumSearch.html"><i class="ai-home"></i></a>
                                <a href="javascript:void(0);" class="waves-effect">
                                    <i class="ai-menu"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


            <!-- 지도검색 -->
            <div class="left_sub_menu">
                <div class="sub_menu">

                    <div class="map_search">
                        <i class="ai-map-pin" id="mapicon"></i>

                        <div class="mb-3">
                            <form name=form method=post action="">
                                <select class="form-select" id="mapCity" name='city'
                                    onchange="change(this.selectedIndex);" class="input" data-style="btn-form-control">
                                    <option value='전체'>전체</option>
                                    <option value='서울'>서울특별시</option>
                                    <option value='부산'>부산광역시</option>
                                    <option value='대구'>대구광역시</option>
                                    <option value='인천'>인천광역시</option>
                                    <option value='광주'>광주광역시</option>
                                    <option value='대전'>대전광역시</option>
                                    <option value='울산'>울산광역시</option>
                                    <option value='세종'>세종특별자치시</option>
                                    <option value='경기'>경기도</option>
                                    <option value='강원'>강원도</option>
                                    <option value='충북'>충청북도</option>
                                    <option value='충남'>충청남도</option>
                                    <option value='전북'>전라북도</option>
                                    <option value='전남'>전라남도</option>
                                    <option value='경북'>경상북도</option>
                                    <option value='경남'>경상남도</option>
                                    <option value='제주'>제주도</option>
                                </select>
                                <select class="form-select" name='county' class="select" id="mapCounty">
                                    <option value='전체'>전체</option>
                                </select>
                                <div class="row align-items-center">
                                    <div class="col-6 col-lg-4 mb-3 mb-lg-0">
                                        <button class="btn btn-primary" type="search" id="searchbtn">검 색</button>
                                    </div>
                                    <div class="col-6 col-lg-4 mb-3 mb-lg-0" id="resetbtn">
                                        <button class="btn btn-outline-primary" type="reset" id="resetbtn">초기화</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>


                    <!-- 검색 결과 리스트-->
                    <div class="searchlist">

                        <div class="card border-light mb-4 animate-up-5" id="museumlist">
                            <div class="row no-gutters align-items-center">
                                <div class="mu_list">
                                    <a href="museumDetails.html">
                                        <h4 class="h5" id="museName">국립중앙박물관</h4>
                                    </a>
                                    <!-- <i class="bi bi-heart" id="museumHeart1" value="true" onclick="onClickHeart('museumHeart1');"></i> -->
                                    <i class="bi bi-heart" id="museumHeart1" value="false" onclick="onClickHeart('museumHeart1');"></i>
                                    <div class="d-flex">
                                        <div class="rating" data-rate="5">
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                        </div>
                                        <span class="badge bg-primary" id="staravg">5.0</span>

                                    </div>
                                    <ul class="list-group mb-1">
                                        <li class="list-group-item small p-0">
                                            <sapn class="ai-map-pin" id="museRdnmadr" style="font-size: 1.2rem;"></sapn> 서울특별시
                                        </li>
                                        <li class="list-group-item small p-1" id="musePhone"><span class="bi bi-telephone-fill"></span>
                                            02-000-0000</li>
                                    </ul>
                                    <div class="d-flex justify-content-between">
                                        <div class="col pl-0">
                                            <span class="text-muted font-small d-block mb-1" >운영시간</span>
                                            <span class="h5 text-dark font-weight-bold" id="museWeekOpen">10:00 ~ 18:00</span>
                                        </div>
                                        <div class="col">
                                            <span class="text-muted font-small d-block mb-1">입장료</span>
                                            <span class="h5 text-dark font-weight-bold" id="museCharge">무료</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="card border-light mb-4 animate-up-5" id="museumlist">
                            <div class="row no-gutters align-items-center">
                                <div class="mu_list">
                                    <a href="museumDetails.html">
                                        <h4 class="h5" id="museName">국립중앙박물관</h4>
                                    </a>
                                    <i class="bi bi-heart" id="museumHeart2" value="false" onclick="onClickHeart('museumHeart2');"></i>
                                    <div class="d-flex">
                                        <div class="rating" data-rate="4.5">
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                        </div>
                                        <span class="badge bg-primary" id="staravg">4.5</span>
                                    </div>
                                    <ul class="list-group mb-1">
                                        <li class="list-group-item small p-0">
                                            <sapn class="ai-map-pin" style="font-size: 1.2rem;" id="museRdnmadr"></sapn> 서울특별시
                                        </li>
                                        <li class="list-group-item small p-1" id="musePhone"><span class="bi bi-telephone-fill"></span>
                                            02-000-0000</li>
                                    </ul>
                                    <div class="d-flex justify-content-between">
                                        <div class="col pl-0">
                                            <span class="text-muted font-small d-block mb-1">운영시간</span>
                                            <span class="h5 text-dark font-weight-bold" id="museWeekOpen">10:00 ~ 18:00</span>
                                        </div>
                                        <div class="col">
                                            <span class="text-muted font-small d-block mb-1">입장료</span>
                                            <span class="h5 text-dark font-weight-bold"  id="museCharge">무료</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="card border-light mb-4 animate-up-5" id="museumlist">
                            <div class="row no-gutters align-items-center">
                                <div class="mu_list">
                                    <a href="museumDetails.html">
                                        <h4 class="h5" id="museName">국립중앙박물관</h4>
                                    </a>

                                    <i class="bi bi-heart" id="museumHeart3" value="false" onclick="onClickHeart('museumHeart3');"></i>



                                    <div class="d-flex">
                                        <div class="rating" data-rate="4">
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                        </div>
                                        <span class="badge bg-primary" id="staravg">4.0</span>
                                    </div>
                                    <ul class="list-group mb-1">
                                        <li class="list-group-item small p-0">
                                            <sapn class="ai-map-pin" style="font-size: 1.2rem;" id="museRdnmadr"></sapn> 서울특별시
                                        </li>
                                        <li class="list-group-item small p-1" id="musePhone"><span class="bi bi-telephone-fill"></span>
                                            02-000-0000</li>
                                    </ul>
                                    <div class="d-flex justify-content-between">
                                        <div class="col pl-0">
                                            <span class="text-muted font-small d-block mb-1">운영시간</span>
                                            <span class="h5 text-dark font-weight-bold" id="museWeekOpen">10:00 ~ 18:00</span>
                                        </div>
                                        <div class="col">
                                            <span class="text-muted font-small d-block mb-1">입장료</span>
                                            <span class="h5 text-dark font-weight-bold"  id="museCharge">무료</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="card border-light mb-4 animate-up-5" id="museumlist">
                            <div class="row no-gutters align-items-center">
                                <div class="mu_list">
                                    <a href="museumDetails.html">
                                        <h4 class="h5" id="museName">국립중앙박물관</h4>
                                    </a>
                                    <i class="bi bi-heart" id="museumHeart4" value="false" onclick="onClickHeart('museumHeart4');"></i>
                                    <div class="d-flex ">
                                        <div class="rating" data-rate="3.5">
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                        </div>
                                        <span class="badge bg-primary" id="staravg">3.5</span>
                                    </div>
                                    <ul class="list-group mb-1">
                                        <li class="list-group-item small p-0">
                                            <sapn class="ai-map-pin" style="font-size: 1.2rem;" id="museRdnmadr"></sapn> 서울특별시
                                        </li>
                                        <li class="list-group-item small p-1" id="musePhone"><span class="bi bi-telephone-fill"></span>
                                            02-000-0000</li>
                                    </ul>
                                    <div class="d-flex justify-content-between">
                                        <div class="col pl-0">
                                            <span class="text-muted font-small d-block mb-1">운영시간</span>
                                            <span class="h5 text-dark font-weight-bold" id="museWeekOpen">10:00 ~ 18:00</span>
                                        </div>
                                        <div class="col">
                                            <span class="text-muted font-small d-block mb-1">입장료</span>
                                            <span class="h5 text-dark font-weight-bold"  id="museCharge">무료</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card border-light mb-4 animate-up-5" id="museumlist">
                            <div class="row no-gutters align-items-center">
                                <div class="mu_list">
                                    <a href="museumDetails.html">
                                        <h4 class="h5" id="museName">국립중앙박물관</h4>
                                    </a>
                                    <i class="bi bi-heart" id="museumHeart5" value="false" onclick="onClickHeart('museumHeart5');"></i>
                                    <div class="d-flex ">
                                        <div class="rating" data-rate="3">
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                            <div class="star-wrap">
                                                <div class="star"><i class="ai-star-filled"></i></div>
                                            </div>
                                        </div>
                                        <span class="badge bg-primary" id="staravg">3.0</span>
                                    </div>
                                    <ul class="list-group mb-1">
                                        <li class="list-group-item small p-0">
                                            <span class="ai-map-pin" style="font-size: 1.2rem;" id="museRdnmadr"></span> 서울특별시
                                        </li>
                                        <li class="list-group-item small p-1" id="musePhone"><span class="bi bi-telephone-fill"></span>
                                            02-000-0000</li>
                                    </ul>
                                    <div class="d-flex justify-content-between">
                                        <div class="col pl-0">
                                            <span class="text-muted font-small d-block mb-1">운영시간</span>
                                            <span class="h5 text-dark font-weight-bold" id="museWeekOpen">10:00 ~ 18:00</span>
                                        </div>
                                        <div class="col">
                                            <span class="text-muted font-small d-block mb-1">입장료</span>
                                            <span class="h5 text-dark font-weight-bold"  id="museCharge">무료</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>


            <script src="${path}/resources/js/sabuzak_5.js"></script>
</body>


</html>