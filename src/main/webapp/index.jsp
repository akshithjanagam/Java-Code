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
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Orbitron:wght@500;600;700;800&display=swap');

        :root {
            --bg: #070812;
            --primary: #e8ecff;
            --accent: #00f5ff;
            --accent2: #a855f7;
            --muted: #8e95ad;
            --card: #101322;
            --surface: #0b0e1b;
            --success: #39ff88;
            --danger: #ff3b81;
            --radius: 14px;
            --container: 1200px;
            --line: rgba(0,245,255,.16);
        }

        * { box-sizing: border-box; }

        html { scroll-behavior: smooth; }
        html, body { min-height: 100%; }

        body {
            margin: 0;
            font-family: Inter, system-ui, -apple-system, 'Segoe UI', Roboto, Arial, sans-serif;
            color: var(--primary);
            background:
                radial-gradient(circle at 10% 0%, rgba(168,85,247,.13), transparent 28%),
                radial-gradient(circle at 90% 10%, rgba(0,245,255,.10), transparent 28%),
                linear-gradient(180deg, #070812 0%, #090b15 100%);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
        }

        body::before {
            content: "";
            position: fixed;
            inset: 0;
            pointer-events: none;
            opacity: .08;
            background-image:
                linear-gradient(rgba(255,255,255,.05) 1px, transparent 1px),
                linear-gradient(90deg, rgba(255,255,255,.05) 1px, transparent 1px);
            background-size: 36px 36px;
            mask-image: linear-gradient(to bottom, black, transparent 85%);
        }

        a { color: inherit; text-decoration: none; }
        button, input { font: inherit; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            position: sticky;
            top: 0;
            z-index: 40;
            background: rgba(7,8,18,.88);
            border-bottom: 1px solid var(--line);
            backdrop-filter: blur(14px);
            box-shadow: 0 8px 30px rgba(0,0,0,.25);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 14px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: Orbitron, sans-serif;
            font-weight: 800;
            font-size: 20px;
            letter-spacing: .04em;
        }

        .brand .accent { color: var(--accent); text-shadow: 0 0 14px rgba(0,245,255,.7); }

        nav.main-nav { display: flex; align-items: center; gap: 18px; }
        nav.main-nav ul {
            display: flex; gap: 8px; list-style: none; margin: 0; padding: 0; align-items: center;
        }

        nav.main-nav li a {
            display: flex; gap: 8px; align-items: center;
            padding: 8px 10px; border-radius: 8px;
            color: #c9cde0; font-weight: 600; transition: .2s ease;
        }

        nav.main-nav li a:hover {
            background: rgba(0,245,255,.07);
            color: var(--accent);
            text-shadow: 0 0 10px rgba(0,245,255,.55);
        }

        .search {
            display: flex; align-items: center; gap: 8px;
            background: #0d1020;
            border: 1px solid rgba(0,245,255,.12);
            padding: 8px 12px; border-radius: 999px; min-width: 240px;
            box-shadow: inset 0 0 18px rgba(0,0,0,.3);
        }

        .search:focus-within { border-color: rgba(0,245,255,.55); box-shadow: 0 0 18px rgba(0,245,255,.12); }

        .search input {
            border: 0; background: transparent; outline: none; width: 100%;
            font-size: 14px; color: var(--primary);
        }

        .search input::placeholder { color: #686f88; }

        .icon-btn {
            background: transparent; color: #c9cde0; border: 0; cursor: pointer;
            font-size: 16px; transition: .2s ease;
        }

        .icon-btn:hover { color: var(--accent); transform: translateY(-1px); }

        .header-actions { display: flex; align-items: center; gap: 10px; }

        .cart {
            position: relative; display: inline-flex; align-items: center; gap: 8px;
            padding: 6px 8px; border-radius: 8px;
        }

        .cart-count {
            position: absolute; top: -6px; right: -6px;
            background: var(--danger); color: white; font-size: 11px; font-weight: 800;
            width: 20px; height: 20px; border-radius: 50%;
            display: inline-grid; place-items: center;
            box-shadow: 0 0 12px rgba(255,59,129,.65);
        }

        .mobile-toggle { display: none; border: 0; background: transparent; color: var(--primary); font-size: 20px; cursor: pointer; }

        .hero {
            display: flex; align-items: center; justify-content: center; text-align: center;
            position: relative; overflow: hidden;
            background:
                linear-gradient(135deg, rgba(7,8,18,.90), rgba(16,10,38,.78)),
                url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            color: white; min-height: 470px; padding: 64px 20px;
            border-bottom: 1px solid var(--line);
        }

        .hero::after {
            content: ""; position: absolute; inset: auto 0 0;
            height: 2px; background: linear-gradient(90deg, transparent, var(--accent), var(--accent2), transparent);
            box-shadow: 0 0 20px rgba(0,245,255,.7);
        }

        .hero h1 {
            font-family: Orbitron, sans-serif; font-size: clamp(30px, 5vw, 48px);
            margin: 0 0 14px; letter-spacing: .02em;
            text-shadow: 0 0 24px rgba(0,245,255,.25);
        }

        .hero p { margin: 0 auto 24px; opacity: .88; max-width: 820px; color: #cbd1e8; }

        .btn {
            display: inline-flex; align-items: center; gap: 10px;
            padding: 11px 19px; border-radius: 8px; font-weight: 800;
            cursor: pointer; border: 1px solid transparent; transition: .2s ease;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent), #4dfcff);
            color: #031116;
            box-shadow: 0 0 20px rgba(0,245,255,.22);
        }

        .btn-primary:hover { transform: translateY(-2px); box-shadow: 0 0 28px rgba(0,245,255,.42); }

        .btn-ghost {
            background: rgba(255,255,255,.04);
            border: 1px solid rgba(255,255,255,.18);
            color: white;
        }

        .btn-ghost:hover { border-color: var(--accent); color: var(--accent); }

        .section { padding: 54px 0; }
        .section .title { text-align: center; margin-bottom: 22px; }
        .section h2, .section h3 { font-family: Orbitron, sans-serif; letter-spacing: .03em; }
        .grid { display: grid; gap: 20px; }

        .categories { grid-template-columns: repeat(6, 1fr); }

        .cat-card {
            background: linear-gradient(145deg, rgba(16,19,34,.98), rgba(11,14,27,.98));
            border: 1px solid rgba(0,245,255,.10);
            border-radius: var(--radius); padding: 20px; text-align: center;
            box-shadow: 0 10px 30px rgba(0,0,0,.28);
            transition: transform .2s ease, border-color .2s ease, box-shadow .2s ease;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            border-color: rgba(0,245,255,.55);
            box-shadow: 0 0 24px rgba(0,245,255,.12), 0 18px 40px rgba(0,0,0,.4);
        }

        .cat-card .icon {
            font-size: 28px; color: var(--accent); margin-bottom: 8px;
            text-shadow: 0 0 16px rgba(0,245,255,.55);
        }

        .cat-card h4 { margin: 6px 0 0; font-size: 15px; }

        .products { grid-template-columns: repeat(4, 1fr); }

        .product {
            position: relative;
            background: linear-gradient(145deg, #111525, #0c0f1d);
            border: 1px solid rgba(168,85,247,.12);
            border-radius: var(--radius); overflow: hidden;
            display: flex; flex-direction: column;
            box-shadow: 0 10px 30px rgba(0,0,0,.3);
            transition: transform .2s ease, border-color .2s ease, box-shadow .2s ease;
        }

        .product:hover {
            transform: translateY(-5px);
            border-color: rgba(168,85,247,.5);
            box-shadow: 0 0 28px rgba(168,85,247,.13), 0 18px 40px rgba(0,0,0,.42);
        }

        .product img { width: 100%; height: 200px; object-fit: cover; display: block; }
        .product > div[style*="position:absolute"] { z-index: 2; }
        .product-body { padding: 14px; display: flex; flex-direction: column; gap: 10px; flex: 1; }
        .product h5 { margin: 0; font-size: 15px; }
        .price-row { display: flex; align-items: center; justify-content: space-between; gap: 8px; }
        .price { font-weight: 800; color: #f2f5ff; }
        .old-price { color: var(--muted); text-decoration: line-through; font-weight: 500; font-size: 13px; }
        .rating { color: #ffd43b; font-size: 13px; text-shadow: 0 0 8px rgba(255,212,59,.25); }
        .product-footer { padding: 12px; display: flex; gap: 10px; }

        .add-btn {
            flex: 1; background: linear-gradient(135deg, #171d35, #111629);
            color: var(--accent); border: 1px solid rgba(0,245,255,.28);
            padding: 10px; border-radius: 8px; cursor: pointer; font-weight: 800;
            transition: .2s ease;
        }

        .add-btn:hover { background: rgba(0,245,255,.10); box-shadow: 0 0 16px rgba(0,245,255,.14); }
        .wish-btn { background: transparent; color: #aab0c7; border: 1px solid rgba(255,255,255,.08); padding: 8px; border-radius: 8px; cursor: pointer; }
        .wish-btn:hover { color: var(--danger); border-color: rgba(255,59,129,.4); }

        .deal {
            display: flex; gap: 18px; background: linear-gradient(135deg, #111525, #0b0f1d);
            border: 1px solid rgba(0,245,255,.16); border-radius: var(--radius);
            overflow: hidden; align-items: center; box-shadow: 0 12px 40px rgba(0,0,0,.35);
        }

        .deal img { width: 50%; height: 320px; object-fit: cover; display: block; }
        .deal .content { padding: 28px; flex: 1; }
        .timer { display: flex; gap: 12px; margin: 18px 0; flex-wrap: wrap; }

        .time-box {
            background: #070a14; color: var(--accent); padding: 12px 16px; border: 1px solid rgba(0,245,255,.25);
            border-radius: 8px; min-width: 76px; text-align: center;
            box-shadow: inset 0 0 14px rgba(0,245,255,.06), 0 0 12px rgba(0,245,255,.08);
        }

        .deal .price { font-size: 26px; }
        .testimonials { display: flex; gap: 14px; overflow-x: auto; padding: 12px 4px; }

        .testimonial {
            min-width: 320px; background: #101322; padding: 18px;
            border: 1px solid rgba(168,85,247,.13); border-radius: var(--radius);
            box-shadow: 0 8px 24px rgba(0,0,0,.28);
        }

        .newsletter {
            background: linear-gradient(135deg, #11152a, #17102a);
            color: white; border: 1px solid rgba(168,85,247,.25);
            border-radius: var(--radius); padding: 34px; text-align: center;
            box-shadow: 0 0 30px rgba(168,85,247,.08);
        }

        .newsletter input {
            padding: 12px 14px; border-radius: 8px; border: 1px solid rgba(0,245,255,.18);
            background: #090c18; color: white; width: 320px; max-width: 100%; margin-right: 8px; outline: none;
        }

        .newsletter input:focus { border-color: var(--accent); box-shadow: 0 0 14px rgba(0,245,255,.12); }

        footer { margin-top: 24px; padding: 36px 0; border-top: 1px solid var(--line); color: var(--muted); font-size: 14px; background: #060710; }
        .muted { color: var(--muted); }
        .text-center { text-align: center; }

        @media (max-width:1200px) {
            .categories { grid-template-columns: repeat(3, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }

        @media (max-width:900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .categories { grid-template-columns: repeat(2, 1fr); }
            .deal img { height: 220px; width: 40%; }
        }

        @media (max-width:600px) {
            .header-inner > div:last-child { flex: 1; }
            .search { min-width: 0; }
            .hero h1 { font-size: 28px; }
            .products, .categories { grid-template-columns: 1fr; }
            .deal { flex-direction: column; }
            .deal img { width: 100%; height: 220px; }
        }
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
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
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
