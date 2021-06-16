

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@page import="java.util.Set"%>
<html lang="en">

<% request.setCharacterEncoding("utf-8"); %>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ġŲ�� ���� ī�װ�</title>
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
            <a href="#">ġŲ�� ����</a>
        </div>
        <ul class="navbar__menu">
            <li class="navbar__menu__item active" data-link="#home">Home</li>
            <li class="navbar__menu__item" data-link="#about">�α׾ƿ�</li>
            <li class="navbar__menu__item" data-link="#skills">�ֹ�ǥ</li>
            <li class="navbar__menu__item" data-link="#work">����������</li>
            <li class="navbar__menu__item" data-link="#testimonials">ä�û��</li>
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
            <h1>ġŲ�� ���� �Ÿ޴�</h1>
            <h3>New Collection</h3>
            <div class="work__projects">
                <a href="https://m.bbq.co.kr/main.asp" class="project" target="blank" data-type="front-end">
                    <img src="newmenu/bbq__newmenu.jpg" alt="Youtube" class="project__img" />
                    <div class="project__description">
                        <h3>BBQ</h3>
                        <span>���󿡼� ���� ���ִ� ġŲ</span>
                    </div>
                </a>
                <a href="https://www.bhc.co.kr/" class="project" data-type="front-end" target="blank">
                    <img class="project__img" src="newmenu/bhc__newmenu.jpg" alt="navbar" />
                    <div class="project__description">
                        <h3>BHC</h3>
                        <span>������ ġŲ BHC</span>
                    </div>
                </a>
                <a href="https://m.bbq.co.kr/main.asp" class="project" data-type="front-end" target="blank">
                    <img class="project__img" src="newmenu/gn_newmenu.jpg" alt="navbar" />
                    <div class="project__description">
                        <h3>����ġŲ</h3>
                        <span>Real flavor, True Story</span>
                    </div>
                </a>
                <a href="https://www.bhc.co.kr/" class="project" data-type="back-end">
                    <img class="project__img" src="newmenu/nene_newmenu.png" alt="" />
                    <div class="project__description">
                        <h3>�׳�ġŲ</h3>
                        <span>�׳�,�� �����ϳ� ��</span>
                    </div>
                </a>
                <a href="https://m.bbq.co.kr/main.asp" class="project" data-type="back-end">
                    <img class="project__img" src="newmenu/mexi_newmenu.jpg" alt="" />
                    <div class="project__description">
                        <h3>�߽�ī��</h3>
                        <span>ġŲ�� Ŀ�Ǹ� ����, �����ϰ� �޶�����.</span>
                    </div>
                </a>

                <a href="https://m.bbq.co.kr/main.asp" class="project" data-type="mobile">
                    <img class="project__img" src="newmenu/pura_newmenu.jpg" alt="" />
                    <div class="project__description">
                        <h3>Ǫ���</h3>
                        <span>Ǫ����� ���Բ� ��ġ�� �����մϴ�.</span>
                    </div>
                </a>

                <a href="https://m.bbq.co.kr/main.asp" class="project" data-type="mobile">
                    <img class="project__img" src="newmenu/60k_newmenu.jpg" alt="" />
                    <div class="project__description">
                        <h3>60��</h3>
                        <span>�ſ� ���� ���� ������</span>
                    </div>
                </a>
                <a href="https://www.bhc.co.kr/" class="project" data-type="mobile">
                    <img class="project__img" src="img/sale__banner.png" alt="" />
                    <div class="project__description">
                        <h3>ġŲ�� ����</h3>
                        <span>������ ����!!</span>
                    </div>
                </a>
            </div>
        </div>
    </section>

    <div class="tab-content">
        <div id="Store_BBQ" role="tabpanel" class="tab-pane fade">
            <section id="about " class="section section__container">
                <div class="about__stores__name">
                    <p>�Ŀ�����</p>
                </div>
                <div class="about__stores">
                    <div class="store">
                        <img src="logo/bhc.jpg " alt="bhc " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BHC ������</p>
                            <span class="store__period">4.4</span>
                            <span class="store__period">| ���� 110</span>
                            <span class="store__period">| ����� ��� 130</span>
                            <p>
                                <span class="store__period">���⼭ ġŲ</span>
                                <span class="store__period">10,000�� �̻� ���</span>
                            </p>
                        </div>
                    </div>

                    <div class="store">
                        <img src="logo/bhc.jpg " alt="bhc " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BHC ������</p>
                            <span class="store__period">4.4</span>
                            <span class="store__period">| ���� 110</span>
                            <span class="store__period">| ����� ��� 130</span>
                            <p>
                                <span class="store__period">���⼭ ġŲ</span>
                                <span class="store__period">10,000�� �̻� ���</span>
                            </p>
                        </div>
                    </div>

                    <div class="store">
                        <img src="logo/bhc.jpg " alt="bhc " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BHC ������</p>
                            <span class="store__period">4.4</span>
                            <span class="store__period">| ���� 110</span>
                            <span class="store__period">| ����� ��� 130</span>
                            <p>
                                <span class="store__period">���⼭ ġŲ</span>
                                <span class="store__period">10,000�� �̻� ���</span>
                            </p>
                        </div>
                    </div>

                    <div class="store">
                        <img src="logo/bhc.jpg " alt="bhc " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BHC ������</p>
                            <span class="store__period">4.4</span>
                            <span class="store__period">| ���� 110</span>
                            <span class="store__period">| ����� ��� 130</span>
                            <p>
                                <span class="store__period">���⼭ ġŲ</span>
                                <span class="store__period">10,000�� �̻� ���</span>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div id="Store_BHC" role="tabpanel" class="tab-pane fade">
            <section id="about " class="section section__container">
                <div class="about__stores__name">
                    <p>�Ŀ�����</p>
                </div>
                <div class="about__stores">
                    <div class="store">
                        <img src="logo/bbq.jpg " alt="bbq " class="store__logo" />
                        <div class="store__description">
                            <p class="store__name">BBQ ��ǻ�����</p>
                            <span class="store__period">4.0</span>
                            <span class="store__period">| ���� 211</span>
                            <span class="store__period">| ����� ��� 130</span>
                            <p>
                                <span class="store__period">���⼭ ġŲ</span>
                                <span class="store__period">15,000�� �̻� ���</span>
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
                    (��)�����ϳ��ŵ�<br /> ����Ư���� ������ �������1�� 10 ������� 3�� | ��ǥ�� : ������ | ����ڵ�Ϲ�ȣ : 211-29-99102 | ����Ǹž��Ű�:�� 2018-���ﰭ��-2635ȣ | ������������� : privacy@woohaha.co.kr
                    <br />| ���޹��� : partnership@woohaha.co.kr | ���������� : support@woohaha.co.kr | ȣ���� ������: �ص�WS �ֽ�ȸ��
                </p>
            </div>
        </div>
        <div class="company__body">
            <div></div>
            <div>
                <p class="contact__bottom">
                    <br /> (��)�����ϳ��ŵ��� ����Ǹ��߰����̸� ����Ǹ��� ����ڰ� �ƴմϴ�. ���� ��ǰ/ �ŷ����� �� �ŷ��� �����Ͽ� ġŲ�ǹ����� ��ϵ� �Ǹ����� ���� �Ǵ� ���Ƿ� �Һ��ڿ��� �߻��ϴ� ���ؿ� ���� (��)�����ϳ����� å���� ���� �ʽ��ϴ�. ��ǰ �� �ŷ��� ���Ͽ� ���� ��Ȯ�� ������ �ش� �Ǹ��ڿ��� ���� Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�. <br /> Copyright WOOHAHA. All Rights Reserved.
                </p>
            </div>
        </div>
    </section>
</body>

</html>

</html>