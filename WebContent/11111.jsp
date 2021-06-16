

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@page import="java.util.Set"%>
<html lang="en">

<% request.setCharacterEncoding("utf-8"); %>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>치킨의 민족 카테고리</title>
    <meta name="description" content="Portfolio for world-renowned software engineer Ellie" />
    <meta name="author" content="Ellie" />
    <link rel="icon" type="image/png" href="imgs/favicon.png" />
    <script src="https://kit.fontawesome.com/9eb162ac0d.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="category_style.css" />
</head>

<body>
    <!-- Navbar -->
    <nav id="navbar">
        <div class="navbar__logo">
            <i class="fab fa-diaspora"></i>
            <a href="#">치킨의 민족</a>
        </div>
        <ul class="navbar__menu">
            <li class="navbar__menu__item active" data-link="#home">Home</li>
            <li class="navbar__menu__item" data-link="#about">로그아웃</li>
            <li class="navbar__menu__item" data-link="#skills">주문표</li>
            <li class="navbar__menu__item" data-link="#work">마이페이지</li>
            <li class="navbar__menu__item" data-link="#testimonials">채팅상담</li>
            <li class="navbar__menu__item" data-link="#contact">Contact</li>
        </ul>
        <!-- Toggle button -->
        <button class="navbar__toggle-btn">
        <i class="fas fa-bars"></i>
      </button>
    </nav>

    <!-- Searchbar-->

    <section id="searchbar">
        <div class="searchbar__blank"></div>
        <div class="searchbar__container">
            <ul class="searchbar__menu nav nav-tabs" role="tab">
                <li class="searchbar__menu__item nav-item">
                    <a class="nav-link acitve" data-toggle="tab" href="#Store_BBQ">
              BBQ</a
            >
          </li>
          <li class="searchbar__menu__item nav-item">
            <a role="tab" data-toggle="tab" href="#Store_BHC">BHC</a>
                </li>
            </ul>
        </div>
    </section>

    <!-- Work -->
    <section id="work" class="section">
        <div class="section__container">
            <h1>치킨의 민족 신메뉴</h1>
            <h3>New Collection</h3>
            <div class="work__projects">
                <a href="https://m.bbq.co.kr/main.asp" class="project" target="blank" data-type="front-end">
                    <img src="newmenu/bbq__newmenu.jpg" alt="Youtube" class="project__img" />
                    <div class="project__description">
                        <h3>BBQ</h3>
                        <span>세상에서 가장 맛있는 치킨</span>
                    </div>
                </a>
                <a href="https://www.bhc.co.kr/" class="project" data-type="front-end" target="blank">
                    <img class="project__img" src="newmenu/bhc__newmenu.jpg" alt="navbar" />
                    <div class="project__description">
                        <h3>BHC</h3>
                        <span>깨끗한 치킨 BHC</span>
                    </div>
                </a>
                <a href="https://m.bbq.co.kr/main.asp" class="project" data-type="front-end" target="blank">
                    <img class="project__img" src="newmenu/gn_newmenu.jpg" alt="navbar" />
                    <div class="project__description">
                        <h3>굽네치킨</h3>
                        <span>Real flavor, True Story</span>
                    </div>
                </a>
                <a href="https://www.bhc.co.kr/" class="project" data-type="back-end">
                    <img class="project__img" src="newmenu/nene_newmenu.png" alt="" />
                    <div class="project__description">
                        <h3>네네치킨</h3>
                        <span>네네,봄 할인하나 봄</span>
                    </div>
                </a>
                <a href="https://m.bbq.co.kr/main.asp" class="project" data-type="back-end">
                    <img class="project__img" src="newmenu/mexi_newmenu.jpg" alt="" />
                    <div class="project__description">
                        <h3>멕시카나</h3>
                        <span>치킨이 커피를 만나, 달콤하게 달라졌다.</span>
                    </div>
                </a>

                <a href="https://m.bbq.co.kr/main.asp" class="project" data-type="mobile">
                    <img class="project__img" src="newmenu/pura_newmenu.jpg" alt="" />
                    <div class="project__description">
                        <h3>푸라닭</h3>
                        <span>푸라닭은 고객님께 가치를 전달합니다.</span>
                    </div>
                </a>

                <a href="https://m.bbq.co.kr/main.asp" class="project" data-type="mobile">
                    <img class="project__img" src="newmenu/60k_newmenu.jpg" alt="" />
                    <div class="project__description">
                        <h3>60계</h3>
                        <span>매운 맛에 자주 끌린다</span>
                    </div>
                </a>
                <a href="https://www.bhc.co.kr/" class="project" data-type="mobile">
                    <img class="project__img" src="img/sale__banner.png" alt="" />
                    <div class="project__description">
                        <h3>치킨의 민족</h3>
                        <span>오늘의 할인!!</span>
                    </div>
                </a>
            </div>
        </div>
    </section>

    <div class="tab-content">
        <div id="Store_BBQ" role="tabpanel" class="tab-pane fade">
            <section id="about " class="section section__container">
                <div class="about__stores__name">
                    <p>파워광고</p>
                </div>
                <div class="about__stores">
                    <div class="store">
                        <img src="logo/bhc.jpg " alt="bhc " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BHC 삼전점</p>
                            <span class="store__period">4.4</span>
                            <span class="store__period">| 리뷰 110</span>
                            <span class="store__period">| 사장님 댓글 130</span>
                            <p>
                                <span class="store__period">여기서 치킨</span>
                                <span class="store__period">10,000원 이상 배달</span>
                            </p>
                        </div>
                    </div>

                    <div class="store">
                        <img src="logo/bhc.jpg " alt="bhc " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BHC 삼전점</p>
                            <span class="store__period">4.4</span>
                            <span class="store__period">| 리뷰 110</span>
                            <span class="store__period">| 사장님 댓글 130</span>
                            <p>
                                <span class="store__period">여기서 치킨</span>
                                <span class="store__period">10,000원 이상 배달</span>
                            </p>
                        </div>
                    </div>

                    <div class="store">
                        <img src="logo/bhc.jpg " alt="bhc " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BHC 삼전점</p>
                            <span class="store__period">4.4</span>
                            <span class="store__period">| 리뷰 110</span>
                            <span class="store__period">| 사장님 댓글 130</span>
                            <p>
                                <span class="store__period">여기서 치킨</span>
                                <span class="store__period">10,000원 이상 배달</span>
                            </p>
                        </div>
                    </div>

                    <div class="store">
                        <img src="logo/bhc.jpg " alt="bhc " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BHC 삼전점</p>
                            <span class="store__period">4.4</span>
                            <span class="store__period">| 리뷰 110</span>
                            <span class="store__period">| 사장님 댓글 130</span>
                            <p>
                                <span class="store__period">여기서 치킨</span>
                                <span class="store__period">10,000원 이상 배달</span>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div id="Store_BHC" role="tabpanel" class="tab-pane fade">
            <section id="about " class="section section__container">
                <div class="about__stores__name">
                    <p>파워광고</p>
                </div>
                <div class="about__stores">
                    <div class="store">
                        <img src="logo/bbq.jpg " alt="bbq " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BBQ 잠실새내점</p>
                            <span class="store__period">4.0</span>
                            <span class="store__period">| 리뷰 211</span>
                            <span class="store__period">| 사장님 댓글 130</span>
                            <p>
                                <span class="store__period">여기서 치킨</span>
                                <span class="store__period">15,000원 이상 배달</span>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

    <!-- Contact -->
    <section id="contact " class="section">
        <div class="company">
            <img src="logo_woohaha/logo3.png " alt="logo__woohaha " class="brand__logo" />

            <div>
                <p class="contact__rights">
                    (주)우하하남매들<br /> 서울특별시 강남구 테헤란로1길 10 세경빌딩 3층 | 대표자 : 김진희 | 사업자등록번호 : 211-29-99102 | 통신판매업신고:제 2018-서울강남-2635호 | 개인정보담당자 : privacy@woohaha.co.kr
                    <br />| 제휴문의 : partnership@woohaha.co.kr | 고객만족센터 : support@woohaha.co.kr | 호스팅 제공자: 앤디WS 주식회사
                </p>
            </div>
        </div>
        <div class="company__body">
            <div></div>
            <div>
                <p class="contact__bottom">
                    <br /> (주)우하하남매들은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품/ 거래정보 및 거래와 관련하여 치킨의민족에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해에 대해 (주)우하하남매은 책임을 지지 않습니다. 상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다. <br /> Copyright WOOHAHA. All Rights Reserved.
                </p>
            </div>
        </div>
    </section>
</body>

</html>

</html>