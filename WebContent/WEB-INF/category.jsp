<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>ġŲ�� ���� ī�װ�</title>
<meta name="description"
	content="Portfolio for world-renowned software engineer Ellie" />
<meta name="author" content="Ellie" />
<link rel="icon" type="image/png" href="imgs/favicon.png" />
<script src="https://kit.fontawesome.com/9eb162ac0d.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css" />
</head>

<body>
	<!-- Navbar -->
	<nav id="navbar">
		<div class="navbar__logo">
			<i class="fab fa-diaspora"></i> <a href="#">ġŲ�� ����</a>
		</div>
		<ul class="navbar__menu">
			<li class="navbar__menu__item active" data-link="#home">Home</li>
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
		<!-- <div class="searchbar__outside">
            <img src="img/bg-top.png" alt="" />
             <ul class="searchbar_outtext">
                <li>ġŲ, ������ �Ծ�ô�?</li>
            </ul> 
        </div> -->
		<div class="searchbar__blank"></div>
		<div class="searchbar__container">
			<ul class="searchbar__menu">
				<li class="searchbar__menu__item" data-link="#home">BBQ</li>
				<li class="searchbar__menu__item" data-link="#about">BHC</li>
				<li class="searchbar__menu__item" data-link="#contact">����ġŲ</li>
				<li class="searchbar__menu__item" data-link="#work">����ġŲ</li>
				<li class="searchbar__menu__item" data-link="#contact">�׳�ġŲ</li>
				<li class="searchbar__menu__item" data-link="#contact">�߽�ī��</li>
				<li class="searchbar__menu__item" data-link="#testimonials">
					�丮ī��</li>
				<li class="searchbar__menu__item" data-link="#contact">Ǫ���</li>
				<li class="searchbar__menu__item" data-link="#skills">60��ġŲ</li>
			</ul>
		</div>
	</section>

	<!-- Work -->
	<section id="work" class="section">
		<div class="section__container">
			<h1>ġŲ�� ���� �Ÿ޴�</h1>
			<h3>New Collection</h3>
			<!-- <div class="work__categories">
                <button class="category__btn selected" data-filter="*">
         All <span class="category__count">8</span>
       </button>
                <button class="category__btn" data-filter="front-end">
         Front-end <span class="category__count">3</span>
       </button>
                <button class="category__btn" data-filter="back-end">
         Back-end <span class="category__count">3</span>
       </button>
                <button class="category__btn" data-filter="mobile">
         Mobile <span class="category__count">2</span>
       </button>
            </div> -->
			<div class="work__projects">
				<a href="https://m.bbq.co.kr/main.asp" class="project"
					target="blank" data-type="front-end"> <img
					src="newmenu/bbq__newmenu.jpg" alt="Youtube" class="project__img" />
					<div class="project__description">
						<h3>BBQ</h3>
						<span>���󿡼� ���� ���ִ� ġŲ</span>
					</div>
				</a> <a href="https://www.bhc.co.kr/" class="project"
					data-type="front-end" target="blank"> <img class="project__img"
					src="newmenu/bhc__newmenu.jpg" alt="navbar" />
					<div class="project__description">
						<h3>BHC</h3>
						<span>������ ġŲ BHC</span>
					</div>
				</a> <a href="https://www.goobne.co.kr/" class="project"
					data-type="front-end" target="blank"> <img class="project__img"
					src="newmenu/gn_newmenu.jpg" alt="navbar" />
					<div class="project__description">
						<h3>����ġŲ</h3>
						<span>Real flavor, True Story</span>
					</div>
				</a> <a href="https://nenechicken.com/" class="project"
					data-type="back-end"> <img class="project__img"
					src="newmenu/nene_newmenu.png" alt="" />
					<div class="project__description">
						<h3>�׳�ġŲ</h3>
						<span>�׳�,�� �����ϳ� ��</span>
					</div>
				</a> <a href="https://www.mexicana.co.kr:50010/main/" class="project"
					data-type="back-end"> <img class="project__img"
					src="newmenu/mexi_newmenu.jpg" alt="" />
					<div class="project__description">
						<h3>�߽�ī��</h3>
						<span>ġŲ�� Ŀ�Ǹ� ����, �����ϰ� �޶�����.</span>
					</div>
				</a> <a href="https://puradakchicken.com/main/index.asp" class="project"
					data-type="mobile"> <img class="project__img"
					src="newmenu/pura_newmenu.jpg" alt="" />
					<div class="project__description">
						<h3>Ǫ���</h3>
						<span>Ǫ����� ���Բ� ��ġ�� �����մϴ�.</span>
					</div>
				</a> <a href="https://www.instagram.com/60chicken/?hl=ko" class="project"
					data-type="mobile"> <img class="project__img"
					src="newmenu/60k_newmenu.jpg" alt="" />
					<div class="project__description">
						<h3>60��</h3>
						<span>�ſ� ���� ���� ������</span>
					</div>
				</a> <a href="  " class="project" data-type="mobile">
					<img class="project__img" src="img/sale__banner.png" alt="" />
					<div class="project__description">
						<h3>ġŲ�� ����</h3>
						<span>������ ����!!</span>
					</div>
				</a>
			</div>
		</div>
	</section>

	<!-- Home -->
	<!-- <section id="home">
        <div class="home__container">
            <img src="imgs/profile.jpg" alt="Ellie's profile photo" class="home__avatar" />
            <h1 class="home__title">Hello, <br />I'm Dream Coder</h1>
            <h2 class="home__description">
                A Software Engineer currently residing in Sydney, Australia.
            </h2>
            <button class="home__contact">Contact Me</button>
        </div>
    </section> -->

	<!-- About -->
	<section id="about" class="section section__container">
		<!-- <h1>About me</h1>
        <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure possimus rem sequi? Nihil, est impedit dignissimos consequatur totam, odit deserunt doloremque laudantium similique corrupti, iusto optio rerum in deleniti officia.
        </p>
        <div class="about__majors">
            <div class="major">
                <div class="major__icon">
                    <i class="fab fa-html5"></i>
                </div>
                <h2 class="major__title">Front-end</h2>
                <div class="major__description">
                    HTML, CSS, JavaScript, TypeScript,
                    <br />React, Vue, Web APIs
                </div>
            </div>

            <div class="major">
                <div class="major__icon">
                    <i class="fas fa-mobile"></i>
                </div>
                <h2 class="major__title">Mobile</h2>
                <p class="major__description">
                    Android, iOS, React Native, Flutter,
                    <br />Java, Swift, Kotlin
                </p>
            </div>
            <div class="major">
                <div class="major__icon">
                    <i class="fas fa-server"></i>
                </div>
                <h2 class="major__title">Back-end</h2>
                <p class="major__description">
                    Java, JavaScript, Go, NodeJS,
                    <br />Rest APIs, GraphGL
                </p>
            </div>

        </div> -->

		<div class="about__stores__name">
			<p>�Ŀ�����</p>
		</div>
		<div class="about__stores">
			<div class="store" onclick="location.href='backup.jsp'">
				<img src="logo/bhc.jpg" alt="bhc" class="store__logo" />
				<div class="store__description">
					<p class="store__name">BHC ������</p>
					<span class="store__period">4.4</span> <span class="store__period">|
						���� 110</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">10,000�� �̻� ���</span>
					</p>
				</div>
			</div>
			<div class="store">
				<img src="logo/60K.png" alt="60��" class="store__logo" />
				<div class="store__description">
					<p class="store__name">60�� ġŲ ��� 1ȣ��</p>
					<span class="store__period">4.3</span> <span class="store__period">|
						���� 45</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">16,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/60K.png" alt="60��" class="store__logo" />
				<div class="store__description">
					<p class="store__name">60�� ġŲ ������</p>
					<span class="store__period">4.1</span> <span class="store__period">|
						���� 32</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">16,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/bbq.jpg" alt="bbq" class="store__logo" />
				<div class="store__description">
					<p class="store__name">BBQ ��ǻ�����</p>
					<span class="store__period">4.0</span> <span class="store__period">|
						���� 211</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">15,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/pura.jpg" alt="pura" class="store__logo" />
				<div class="store__description">
					<p class="store__name">Ǫ��� ������</p>
					<span class="store__period">4.1</span> <span class="store__period">|
						���� 132</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">14,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/bhc.jpg" alt="bhc" class="store__logo" />
				<div class="store__description">
					<p class="store__name">BHC ��ǻ�����</p>
					<span class="store__period">4.0</span> <span class="store__period">|
						���� 51</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">19,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/goopne.jpg" alt="goop" class="store__logo" />
				<div class="store__description">
					<p class="store__name">����ġŲ �������1ȣ��</p>
					<span class="store__period">4.2</span> <span class="store__period">|
						���� 123</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">19,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/bbq.jpg" alt="bbq" class="store__logo" />
				<div class="store__description">
					<p class="store__name">BBQ ������ǻ�������</p>
					<span class="store__period">4.2</span> <span class="store__period">|
						���� 111</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">19,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/kyochon.jpg" alt="kyoch" class="store__logo" />
				<div class="store__description">
					<p class="store__name">����ġŲ ��õ����</p>
					<span class="store__period">3.7</span> <span class="store__period">|
						���� 126</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">19,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/peri.jpg" alt="peri" class="store__logo" />
				<div class="store__description">
					<p class="store__name">�丮ī�� ��ǻ�������</p>
					<span class="store__period">1.3</span> <span class="store__period">|
						���� 14</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">13,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/bbq.jpg" alt="bbq" class="store__logo" />
				<div class="store__description">
					<p class="store__name">BBQ ������</p>
					<span class="store__period">4.3</span> <span class="store__period">|
						���� 156</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">155,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/mexicana.png" alt="mexi" class="store__logo" />
				<div class="store__description">
					<p class="store__name">�߽�ī�� ġŲ ������</p>
					<span class="store__period">4.2</span> <span class="store__period">|
						���� 100</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">17,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/nene.jpg" alt="nene" class="store__logo" />
				<div class="store__description">
					<p class="store__name">�׳�ġŲ �����Ѿ�APT��</p>
					<span class="store__period">4.3</span> <span class="store__period">|
						���� 23</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">15,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/60K.png" alt="60��" class="store__logo" />
				<div class="store__description">
					<p class="store__name">60��ġŲ ��ǽ�õ��</p>
					<span class="store__period">4.3</span> <span class="store__period">|
						���� 149</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">17,000�� �̻� ���</span>
					</p>
				</div>
			</div>
			<div class="store">
				<img src="logo/60K.png" alt="60��" class="store__logo" />
				<div class="store__description">
					<p class="store__name">60��ġŲ ������</p>
					<span class="store__period">4.3</span> <span class="store__period">|
						���� 149</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">15,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/kyochon.jpg" alt="kyoch" class="store__logo" />
				<div class="store__description">
					<p class="store__name">����ġŲ ������</p>
					<span class="store__period">4.3</span> <span class="store__period">|
						���� 149</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">14,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/kyochon.jpg" alt="kyoch" class="store__logo" />
				<div class="store__description">
					<p class="store__name">����ġŲ ���������</p>
					<span class="store__period">4.3</span> <span class="store__period">|
						���� 149</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">15,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/mexicana.png" alt="mexi" class="store__logo" />
				<div class="store__description">
					<p class="store__name">�߽�ī�� ġŲ ����3ȣ��</p>
					<span class="store__period">4.5</span> <span class="store__period">|
						���� 10</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">15,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/bbq.jpg" alt="bbq" class="store__logo" />
				<div class="store__description">
					<p class="store__name">BBQ ���Ļ�����</p>
					<span class="store__period">4.3</span> <span class="store__period">|
						���� 149</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">16,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/goopne.jpg" alt="goop" class="store__logo" />
				<div class="store__description">
					<p class="store__name">����ġŲ ��ǽ�õ��</p>
					<span class="store__period">4.3</span> <span class="store__period">|
						���� 52</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">20,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/goopne.jpg" alt="goop" class="store__logo" />
				<div class="store__description">
					<p class="store__name">����ġŲ ��ǻ��� 2ȣ��</p>
					<span class="store__period">4.4</span> <span class="store__period">|
						���� 49</span> <span class="store__period">| ����� ��� 130</span>
					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">19,000�� �̻� ���</span>
					</p>
				</div>
			</div>

			<div class="store">
				<img src="logo/bbq.jpg" alt="bbq" class="store__logo" />
				<div class="store__description">
					<p class="store__name">
						BBQ �︮����Ƽ��/p> <span class="store__period">4.3</span> <span
							class="store__period">| ���� 149</span> <span class="store__period">|
							����� ��� 130</span>
					</p>

					<p>
						<span class="store__period">���⼭ ġŲ</span> <span
							class="store__period">15,000�� �̻� ���</span>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Contact -->
	<section id="contact" class="section">
		<div class="company">
			<img src="logo_woohaha/logo3.png" alt="logo__woohaha"
				class="brand__logo" />
			<!-- <h2 class="contact__title">Let's talk</h2>
            <h2 class="contact__email">andyairis@gmail.com</h2> -->
			<!-- <div class="contact__links">
                <a href="-1" target="_blank">
                    <i class="fab fa-github"></i>
                </a>
                <a href="#" target="_blank">
                    <i class="fa fa-linkedin-square"></i>
                </a>
            </div> -->

			<div>
				<p class="contact__rights">
					(��)�����ϳ��ŵ�<br /> ����Ư���� ������ �������1�� 10 ������� 3�� | ��ǥ�� : ������ | ����ڵ�Ϲ�ȣ
					: 211-29-99102 | ����Ǹž��Ű�:�� 2018-���ﰭ��-2635ȣ | ������������� :
					privacy@woohaha.co.kr <br />| ���޹��� : partnership@woohaha.co.kr |
					���������� : support@woohaha.co.kr | ȣ���� ������: �ص�WS �ֽ�ȸ��
				</p>
			</div>
		</div>
		<div class="company__body">
			<div></div>
			<div>
				<p class="contact__bottom">
					<br /> (��)�����ϳ��ŵ��� ����Ǹ��߰����̸� ����Ǹ��� ����ڰ� �ƴմϴ�. ���� ��ǰ/ �ŷ����� �� �ŷ���
					�����Ͽ� ġŲ�ǹ����� ��ϵ� �Ǹ����� ���� �Ǵ� ���Ƿ� �Һ��ڿ��� �߻��ϴ� ���ؿ� ���� (��)�����ϳ����� å���� ����
					�ʽ��ϴ�. ��ǰ �� �ŷ��� ���Ͽ� ���� ��Ȯ�� ������ �ش� �Ǹ��ڿ��� ���� Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�. <br />
					Copyright WOOHAHA. All Rights Reserved.
				</p>
			</div>
		</div>
	</section>

	<!-- Arrow up -->
	<button class="arrow-up">
		<i class="fas fa-arrow-up"></i>
	</button>
</body>

</html>