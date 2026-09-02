<!doctype html>
<html lang="en"> 
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Gaming E-Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="" crossorigin="anonymous">
    <style>
@import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap');
:root{--bg:#f6f7fb;--surface:#fff;--text:#171923;--muted:#747b8c;--accent:#5b4bdb;--accent2:#eeebff;--line:#e4e6ed;--danger:#e34b61;--radius:16px;--container:1240px;--shadow:0 10px 30px rgba(24,28,45,.08)}
*{box-sizing:border-box}html{scroll-behavior:smooth}body{margin:0;font-family:"DM Sans",system-ui,sans-serif;color:var(--text);background:var(--bg);line-height:1.55;-webkit-font-smoothing:antialiased}a{color:inherit;text-decoration:none}button,input{font:inherit}.container{width:100%;max-width:var(--container);margin:auto;padding:0 24px}
header{position:sticky;top:0;z-index:50;background:rgba(255,255,255,.93);border-bottom:1px solid var(--line);backdrop-filter:blur(16px)}
.header-inner{min-height:74px;display:flex;align-items:center;gap:24px}.brand{font:700 21px "Space Grotesk",sans-serif;letter-spacing:-.03em;white-space:nowrap}.brand .accent{color:var(--accent)}
.main-nav{flex:1}.main-nav ul{display:flex;justify-content:center;gap:3px;list-style:none;margin:0;padding:0}.main-nav li a{display:flex;align-items:center;gap:7px;padding:9px 12px;border-radius:9px;color:#626979;font-size:14px;font-weight:600;transition:.2s}.main-nav li a:hover{color:var(--accent);background:var(--accent2)}
.search{width:245px;display:flex;align-items:center;gap:8px;background:#f4f5f8;border:1px solid transparent;border-radius:10px;padding:9px 12px}.search:focus-within{background:#fff;border-color:#cfc9ff;box-shadow:0 0 0 3px rgba(91,75,219,.08)}.search input{width:100%;border:0;outline:0;background:transparent;color:var(--text);font-size:13px}.search input::placeholder{color:#9298a7}
.icon-btn{background:none;color:#697081;border:0;cursor:pointer;transition:.2s}.icon-btn:hover{color:var(--accent)}.header-actions{display:flex;align-items:center;gap:12px}.cart{position:relative;padding:7px}.cart-count{position:absolute;right:-7px;top:-5px;width:19px;height:19px;display:grid;place-items:center;border-radius:50%;background:var(--accent);color:#fff;font-size:10px;font-weight:800}.mobile-toggle{display:none;background:none;color:var(--text);font-size:20px;cursor:pointer}
.hero{min-height:510px;display:flex;align-items:center;position:relative;overflow:hidden;background:linear-gradient(90deg,rgba(20,21,30,.96) 5%,rgba(20,21,30,.80) 48%,rgba(20,21,30,.42)),url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover no-repeat;color:#fff}.hero:after{content:"";position:absolute;width:420px;height:420px;right:-130px;bottom:-180px;border-radius:50%;border:1px solid rgba(255,255,255,.18);box-shadow:0 0 0 55px rgba(255,255,255,.025),0 0 0 110px rgba(255,255,255,.018)}.hero .container{position:relative;z-index:1}.hero h1{max-width:760px;margin:0 0 18px;font:700 clamp(40px,6vw,68px)/1.03 "Space Grotesk",sans-serif;letter-spacing:-.045em}.hero p{max-width:650px;margin:0 0 28px;color:#d5d7df;font-size:16px}
.btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;min-height:44px;padding:11px 19px;border-radius:9px;font-weight:700;cursor:pointer;transition:.2s}.btn-primary{background:var(--accent);color:#fff;box-shadow:0 10px 24px rgba(91,75,219,.25)}.btn-primary:hover{background:#4939c6;transform:translateY(-2px)}.btn-ghost{margin-left:8px;background:rgba(255,255,255,.1);border:1px solid rgba(255,255,255,.25);color:#fff}.btn-ghost:hover{background:#fff;color:#171821}
.section{padding:64px 0}.section .title{margin-bottom:26px}.section h2,.section h3{font-family:"Space Grotesk",sans-serif;letter-spacing:-.025em}.section h2{font-size:28px;margin:0 0 6px}.title p{margin:0}.muted{color:var(--muted)}.grid{display:grid;gap:18px}
.categories{grid-template-columns:repeat(6,1fr)}.cat-card{position:relative;overflow:hidden;background:var(--surface);border:1px solid var(--line);border-radius:var(--radius);padding:21px 17px;cursor:pointer;box-shadow:0 5px 20px rgba(24,28,45,.04);transition:.22s}.cat-card:before{content:"";position:absolute;left:0;top:0;width:100%;height:3px;background:var(--accent);transform:scaleX(0);transform-origin:left;transition:.22s}.cat-card:hover{transform:translateY(-5px);border-color:#d5d0ff;box-shadow:0 18px 45px rgba(24,28,45,.14)}.cat-card:hover:before{transform:scaleX(1)}.cat-card .icon{width:46px;height:46px;display:grid;place-items:center;margin-bottom:15px;border-radius:12px;background:var(--accent2);color:var(--accent);font-size:20px}.cat-card h4{margin:0 0 4px;font-size:14px}
.products{grid-template-columns:repeat(4,1fr)}.product{position:relative;overflow:hidden;display:flex;flex-direction:column;background:var(--surface);border:1px solid var(--line);border-radius:var(--radius);box-shadow:0 5px 20px rgba(24,28,45,.045);transition:.22s}.product:hover{transform:translateY(-6px);box-shadow:0 18px 45px rgba(24,28,45,.14);border-color:#d5d0ff}.product img{width:100%;height:210px;object-fit:cover;display:block}.product-body{flex:1;display:flex;flex-direction:column;gap:8px;padding:16px}.product h5{margin:0;font-size:15px}.price-row{display:flex;align-items:center;justify-content:space-between;gap:8px;margin-top:auto}.price{font-weight:800;font-size:17px}.old-price{color:#9ba0ad;text-decoration:line-through;font-size:12px}.rating{color:#e6a900;font-size:12px}.product-footer{display:flex;gap:8px;padding:0 16px 16px}.add-btn{flex:1;padding:10px;border-radius:8px;background:#f1f2f6;border:1px solid #e2e4eb;color:var(--text);cursor:pointer;font-weight:700;transition:.2s}.add-btn:hover{background:var(--accent);border-color:var(--accent);color:#fff}.wish-btn{padding:9px 11px;border-radius:8px;background:#f7f7f9;border:1px solid #e2e4eb;color:#7f8594;cursor:pointer}.wish-btn:hover{color:var(--danger);border-color:#f1b8c2}
.deal{display:flex;overflow:hidden;background:var(--surface);border:1px solid var(--line);border-radius:18px;box-shadow:var(--shadow)}.deal img{width:52%;min-height:340px;object-fit:cover}.deal .content{flex:1;padding:38px}.deal .content h3{margin:0 0 7px;font-size:30px}.timer{display:flex;gap:10px;flex-wrap:wrap;margin:22px 0}.time-box{min-width:74px;padding:11px 13px;text-align:center;background:#f7f7fa;border:1px solid var(--line);border-radius:10px}.time-box>div:first-child{font:700 22px "Space Grotesk",sans-serif;color:var(--accent)}.deal .price{font-size:27px}.deal-discount{background:var(--accent)!important;color:#fff!important}
.testimonials{display:grid;grid-template-columns:repeat(2,1fr);gap:16px}.testimonial{background:var(--surface);border:1px solid var(--line);border-radius:var(--radius);padding:21px;box-shadow:0 5px 20px rgba(24,28,45,.04)}
.newsletter{position:relative;overflow:hidden;padding:42px;text-align:center;color:#fff;background:linear-gradient(135deg,#1b1d2a,#2b2650);border-radius:18px;box-shadow:var(--shadow)}.newsletter h3{margin:0 0 7px;font-size:27px}.newsletter input{width:320px;max-width:100%;padding:12px 14px;border-radius:8px;border:1px solid rgba(255,255,255,.16);background:rgba(255,255,255,.09);color:#fff;outline:0}.newsletter input::placeholder{color:#c6c7d0}
footer{margin-top:10px;padding:42px 0;background:#fff;border-top:1px solid var(--line);font-size:14px}
@media(max-width:1100px){.categories{grid-template-columns:repeat(3,1fr)}.products{grid-template-columns:repeat(3,1fr)}.main-nav{display:none}.mobile-toggle{display:block}}
@media(max-width:800px){.header-inner{flex-wrap:wrap;padding:13px 0}.search{order:3;width:100%}.hero{min-height:480px}.products{grid-template-columns:repeat(2,1fr)}.deal{flex-direction:column}.deal img{width:100%;height:240px;min-height:240px}}
@media(max-width:560px){.container{padding:0 16px}.section{padding:48px 0}.hero h1{font-size:38px}.hero p{font-size:15px}.products,.categories,.testimonials{grid-template-columns:1fr}.deal .content{padding:25px}.newsletter{padding:32px 20px}}
</style>

   
</head>

<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:18px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><em class="fas fa-bars"></em></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><em class="fas fa-th-large"></em> Categories <em class="fas fa-chevron-down" style="font-size:12px;"></em></a>
                    </li>
                    <li><a href="#"><em class="fas fa-fire"></em> Trending</a></li>
                    <li><a href="#deals"><em class="fas fa-tag"></em> Deals</a></li>
                    <li><a href="#about"><em class="fas fa-info-circle"></em> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:14px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><em class="fas fa-search"></em></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
                    <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <em class="fas fa-shopping-cart"></em>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu (hidden on desktop) -->
        <div id="mobileMenu" style="display:none; background:var(--bg); border-top:1px solid rgba(10,37,64,0.04);">
            <div class="container" style="padding:12px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:8px;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero" role="img" aria-label="Hero banner">
            <div class="container">
                <h1>New Winter Collection  Premium Picks</h1>
                <p>Discover the latest trends in fashion, technology and accessories — curated just for you. Enjoy limited-time deals and free shipping on selected items.</p>
                <div>
                    <button class="btn btn-primary" id="shopNow">Shop Now <em class="fas fa-arrow-right"></em></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2 class="section-title">Shop by Category</h2>
                <p class="muted">Browse through our wide range of products across curated categories.</p>
            </div>

            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2>Trending Products</h2>
                <p class="muted">Popular picks based on recent activity.</p>
            </div>

            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2>Flash Sale</h2>
                <p class="muted">Limited-time offers — don't miss out!</p>
            </div>

            <div class="deal" style="align-items:stretch;">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                <div class="content">
                    <h3>MacBook Air M2</h3>
                    <p class="muted">Thin, light and powerful — now with M2 performance.</p>

                    <div class="timer" aria-hidden="false">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div style="font-size:12px;opacity:.85">Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div style="font-size:12px;opacity:.85">Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div style="font-size:12px;opacity:.85">Minutes</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div style="font-size:12px;opacity:.85">Seconds</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:12px;">
                        <div class="price">$999 <span class="old-price" style="font-size:16px">$1,199</span></div>
                        <div class="deal-discount" style="background:#ff4757;color:white;padding:6px 10px;border-radius:8px;font-weight:700">-17%</div>
                    </div>

                    <p style="margin-top:10px;">Only <strong>12</strong> items left at this price!</p>
                    <div style="margin-top:18px;">
                        <button class="btn btn-primary" id="buyDeal">Buy Now</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2>What our customers say</h2>
                <p class="muted">Real reviews from verified buyers.</p>
            </div>

            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Ava Martin</div>
                            <div class="muted" style="font-size:13px">Verified buyer</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Great selection and the checkout was smooth. Will shop again."</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:40px;height:40px;border-radius:50%;object-fit:cover">
                        <div>
                            <div style="font-weight:700">Michael Lee</div>
                            <div class="muted" style="font-size:13px">Frequent buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <h3 id="news-title">Stay in the loop</h3>
                <p>Subscribe to get exclusive offers & new arrivals</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:8px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
                    <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:10px;font-size:14px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;align-items:flex-start;justify-content:space-between">
            <div style="max-width:360px">
                <div style="font-weight:700;font-size:18px">NexusShop</div>
                <p class="muted" style="margin-top:8px">A modern e-commerce demo built with HTML, CSS & JavaScript.</p>
                <div style="margin-top:14px;display:flex;gap:10px">
                    <a class="icon-btn" href="#" title="Facebook"><em class="fab fa-facebook"></em></a>
                    <a class="icon-btn" href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                    <a class="icon-btn" href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                </div>
            </div>

            <div style="display:flex;gap:40px;flex:1;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Company</div>
                    <div class="muted" style="line-height:1.8">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div style="font-weight:700;margin-bottom:8px">Support</div>
                    <div class="muted" style="line-height:1.8">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>

        <div style="text-align:center;margin-top:22px;color:var(--muted);font-size:13px">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
    
        // --- Sample data (can be replaced by server-side data or API) ---
        const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

        // --- Render categories & products ---
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');

        let cartCount = 0;

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><em class="fas ${cat.icon}"></em></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:13px;margin-top:6px">Explore ${cat.name}</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({
                        top: document.getElementById('prod-title').offsetTop - 60,
                        behavior: 'smooth'
                    });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<div style="position:absolute;margin:12px"><span style="background:${p.badge.startsWith('-')? '#ff4757' : 'var(--success)'};color:white;padding:6px 8px;border-radius:8px;font-weight:700;font-size:12px">${p.badge}</span></div>` : ''}
                    <img src="${p.img}" alt="${escapeHtml(p.title)}">
                    <div class="product-body">
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="muted">${p.category}</div>
                        <div class="price-row">
                            <div>
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">${p.oldPrice ? '$'+p.oldPrice.toLocaleString() : ''}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="font-size:12px;color:var(--muted)">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><em class="fas fa-cart-plus"></em> Add</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><em class="far fa-heart"></em></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // attach listeners to add buttons
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        // --- Utilities ---
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            // Simple feedback
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = 'Added ✓';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.disabled = false;
                }, 1200);
            }
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p => {
                const category = CATEGORIES.find(c => c.id === p.category);
                const categoryName = category ? category.name.toLowerCase() : p.category.toLowerCase();
                return p.title.toLowerCase().includes(q) ||
                    p.category.toLowerCase().includes(q) ||
                    categoryName.includes(q);
            });
            renderProducts(filtered);
        }

        // --- Search handling ---
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // --- Mobile menu toggle ---
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
        });

        // --- Simple dropdown (desktop) ---
        const catMenuBtn = document.getElementById('catMenuBtn');
        catMenuBtn && catMenuBtn.addEventListener('click', (e) => {
            e.preventDefault();
            alert('Use the category tiles below to filter — this is a demo.');
        });

        // --- Newsletter subscribe (demo) ---
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'Please enter a valid email address.';
                msg.style.color = '#ffb3b3';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = '#cce7ff';
            msg.textContent = 'Thanks! You are subscribed.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // --- Countdown timer for deal ---
        (function setupDealTimer() {
            // Target: 1 day from now (demo)
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000); // 24h36m
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        // --- Small UI bindings ---
        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
            top: document.getElementById('prod-title').offsetTop - 60,
            behavior: 'smooth'
        }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            alert('Deal added to cart (demo).');
        });

        // --- Initialization ---
        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html> 
