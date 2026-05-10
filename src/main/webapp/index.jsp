<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop - Premium Store</title>

  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #020617;
      --card: #111827;
      --surface: #1e293b;
      --primary: #ffffff;
      --secondary: #94a3b8;
      --accent: #7c3aed;
      --accent-light: #8b5cf6;
      --success: #22c55e;
      --danger: #ef4444;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: linear-gradient(to bottom, #020617, #0f172a);
      color: var(--primary);
      min-height: 100vh;
      overflow-x: hidden;
    }

    .container {
      width: 90%;
      max-width: 1280px;
      margin: auto;
    }

    header {
      position: sticky;
      top: 0;
      z-index: 100;
      backdrop-filter: blur(14px);
      background: rgba(2, 6, 23, 0.7);
      border-bottom: 1px solid rgba(255,255,255,0.08);
    }

    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 18px 0;
    }

    .logo {
      font-size: 28px;
      font-weight: 700;
    }

    .logo span {
      color: var(--accent-light);
    }

    .nav-links {
      display: flex;
      gap: 28px;
      list-style: none;
    }

    .nav-links a {
      color: white;
      text-decoration: none;
      transition: 0.3s ease;
      font-weight: 500;
    }

    .nav-links a:hover {
      color: var(--accent-light);
    }

    .search-box {
      display: flex;
      align-items: center;
      background: rgba(255,255,255,0.06);
      border: 1px solid rgba(255,255,255,0.08);
      padding: 12px 18px;
      border-radius: 999px;
      width: 320px;
    }

    .search-box input {
      background: transparent;
      border: none;
      outline: none;
      color: white;
      width: 100%;
      font-size: 15px;
    }

    .search-box input::placeholder {
      color: var(--secondary);
    }

    .hero {
      min-height: 92vh;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      padding: 80px 20px;
      background:
        linear-gradient(rgba(2,6,23,0.75), rgba(15,23,42,0.92)),
        url('https://images.unsplash.com/photo-1523381210434-271e8be1f52b?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
    }

    .hero-content h1 {
      font-size: 68px;
      line-height: 1.1;
      margin-bottom: 24px;
      max-width: 900px;
    }

    .hero-content p {
      max-width: 760px;
      margin: auto;
      color: #cbd5e1;
      font-size: 18px;
      line-height: 1.7;
    }

    .hero-buttons {
      margin-top: 36px;
      display: flex;
      justify-content: center;
      gap: 18px;
      flex-wrap: wrap;
    }

    .btn {
      padding: 14px 28px;
      border-radius: 14px;
      border: none;
      cursor: pointer;
      font-size: 15px;
      font-weight: 600;
      transition: 0.3s ease;
    }

    .btn-primary {
      background: linear-gradient(135deg, var(--accent), var(--accent-light));
      color: white;
      box-shadow: 0 10px 30px rgba(124,58,237,0.4);
    }

    .btn-primary:hover {
      transform: translateY(-4px);
    }

    .btn-secondary {
      background: rgba(255,255,255,0.08);
      border: 1px solid rgba(255,255,255,0.1);
      color: white;
    }

    section {
      padding: 80px 0;
    }

    .section-title {
      text-align: center;
      margin-bottom: 60px;
    }

    .section-title h2 {
      font-size: 42px;
      margin-bottom: 12px;
    }

    .section-title p {
      color: var(--secondary);
    }

    .categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
      gap: 24px;
    }

    .category-card {
      background: rgba(255,255,255,0.04);
      border: 1px solid rgba(255,255,255,0.06);
      border-radius: 22px;
      padding: 36px 20px;
      text-align: center;
      transition: 0.35s ease;
      backdrop-filter: blur(12px);
    }

    .category-card:hover {
      transform: translateY(-10px);
      border-color: rgba(124,58,237,0.6);
    }

    .category-card i {
      font-size: 42px;
      color: var(--accent-light);
      margin-bottom: 18px;
    }

    .products {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 28px;
    }

    .product-card {
      background: rgba(17,24,39,0.9);
      border-radius: 24px;
      overflow: hidden;
      border: 1px solid rgba(255,255,255,0.06);
      transition: 0.35s ease;
    }

    .product-card:hover {
      transform: translateY(-10px);
      box-shadow: 0 20px 50px rgba(0,0,0,0.45);
    }

    .product-card img {
      width: 100%;
      height: 260px;
      object-fit: cover;
      transition: 0.4s ease;
    }

    .product-card:hover img {
      transform: scale(1.08);
    }

    .product-info {
      padding: 24px;
    }

    .product-info h3 {
      margin-bottom: 12px;
      font-size: 20px;
    }

    .price {
      color: var(--accent-light);
      font-size: 22px;
      font-weight: 700;
      margin: 14px 0;
    }

    .rating {
      color: gold;
      margin-bottom: 18px;
    }

    .add-cart {
      width: 100%;
      background: linear-gradient(135deg, var(--accent), var(--accent-light));
      border: none;
      padding: 14px;
      border-radius: 14px;
      color: white;
      font-weight: 600;
      cursor: pointer;
      transition: 0.3s ease;
    }

    .add-cart:hover {
      transform: scale(1.03);
    }

    .deal-banner {
      background: linear-gradient(135deg, rgba(124,58,237,0.15), rgba(15,23,42,0.9));
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: 30px;
      overflow: hidden;
      display: grid;
      grid-template-columns: 1fr 1fr;
      align-items: center;
    }

    .deal-banner img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-content {
      padding: 50px;
    }

    .deal-content h2 {
      font-size: 48px;
      margin-bottom: 20px;
    }

    .deal-content p {
      color: var(--secondary);
      line-height: 1.7;
      margin-bottom: 24px;
    }

    .newsletter {
      background: rgba(255,255,255,0.05);
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: 28px;
      padding: 60px 40px;
      text-align: center;
      backdrop-filter: blur(14px);
    }

    .newsletter h2 {
      font-size: 42px;
      margin-bottom: 18px;
    }

    .newsletter p {
      color: var(--secondary);
      margin-bottom: 28px;
    }

    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 14px;
      flex-wrap: wrap;
    }

    .newsletter-form input {
      width: 380px;
      max-width: 100%;
      padding: 16px 20px;
      border-radius: 14px;
      border: none;
      background: rgba(255,255,255,0.08);
      color: white;
      outline: none;
    }

    footer {
      padding: 50px 0;
      text-align: center;
      border-top: 1px solid rgba(255,255,255,0.08);
      margin-top: 60px;
      color: var(--secondary);
    }

    @media(max-width: 992px) {
      .hero-content h1 {
        font-size: 48px;
      }

      .deal-banner {
        grid-template-columns: 1fr;
      }
    }

    @media(max-width: 768px) {
      .navbar {
        flex-direction: column;
        gap: 20px;
      }

      .nav-links {
        flex-wrap: wrap;
        justify-content: center;
      }

      .search-box {
        width: 100%;
      }

      .hero-content h1 {
        font-size: 38px;
      }

      .section-title h2 {
        font-size: 32px;
      }
    }
  </style>
</head>
<body>

<header>
  <div class="container navbar">
    <div class="logo">Nexus<span>Shop</span></div>

    <ul class="nav-links">
      <li><a href="#">Home</a></li>
      <li><a href="#categories">Categories</a></li>
      <li><a href="#products">Products</a></li>
      <li><a href="#deals">Deals</a></li>
      <li><a href="#contact">Contact</a></li>
    </ul>

    <div class="search-box">
      <i class="fas fa-search"></i>
      <input type="text" placeholder="Search products...">
    </div>
  </div>
</header>

<section class="hero">
  <div class="hero-content">
    <h1>Premium Shopping Experience For Modern Lifestyle</h1>
    <p>Discover exclusive fashion, gadgets, electronics and luxury accessories with stunning deals and ultra-fast delivery.</p>

    <div class="hero-buttons">
      <button class="btn btn-primary">Shop Now</button>
      <button class="btn btn-secondary">Explore Deals</button>
    </div>
  </div>
</section>

<section id="categories">
  <div class="container">
    <div class="section-title">
      <h2>Shop By Category</h2>
      <p>Explore our premium collections</p>
    </div>

    <div class="categories">
      <div class="category-card">
        <i class="fas fa-mobile-alt"></i>
        <h3>Smartphones</h3>
      </div>

      <div class="category-card">
        <i class="fas fa-laptop"></i>
        <h3>Laptops</h3>
      </div>

      <div class="category-card">
        <i class="fas fa-headphones"></i>
        <h3>Audio</h3>
      </div>

      <div class="category-card">
        <i class="fas fa-watch"></i>
        <h3>Accessories</h3>
      </div>
    </div>
  </div>
</section>

<section id="products">
  <div class="container">
    <div class="section-title">
      <h2>Trending Products</h2>
      <p>Most loved premium products</p>
    </div>

    <div class="products">
      <div class="product-card">
        <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=800&q=80" alt="iPhone">
        <div class="product-info">
          <h3>iPhone 15 Pro Max</h3>
          <div class="rating">★★★★★</div>
          <div class="price">$1299</div>
          <button class="add-cart">Add To Cart</button>
        </div>
      </div>

      <div class="product-card">
        <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=80" alt="MacBook">
        <div class="product-info">
          <h3>MacBook Pro M3</h3>
          <div class="rating">★★★★★</div>
          <div class="price">$2499</div>
          <button class="add-cart">Add To Cart</button>
        </div>
      </div>

      <div class="product-card">
        <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80" alt="Shoes">
        <div class="product-info">
          <h3>Nike Air Max</h3>
          <div class="rating">★★★★☆</div>
          <div class="price">$199</div>
          <button class="add-cart">Add To Cart</button>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="deals">
  <div class="container">
    <div class="deal-banner">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal">

      <div class="deal-content">
        <h2>Flash Sale</h2>
        <p>Get premium electronics and accessories at unbeatable prices for a limited time only.</p>
        <button class="btn btn-primary">Grab Deal</button>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="newsletter">
      <h2>Stay Updated</h2>
      <p>Subscribe to receive exclusive offers and latest arrivals.</p>

      <div class="newsletter-form">
        <input type="email" placeholder="Enter your email">
        <button class="btn btn-primary">Subscribe</button>
      </div>
    </div>
  </div>
</section>

<footer id="contact">
  <div class="container">
    <h3>NexusShop</h3>
    <p>Modern premium e-commerce UI</p>
    <br>
    <p>© 2026 NexusShop. All Rights Reserved.</p>
  </div>
</footer>

<script>
  const buttons = document.querySelectorAll('.add-cart');

  buttons.forEach(button => {
    button.addEventListener('click', () => {
      const original = button.innerHTML;
      button.innerHTML = 'Added ✓';
      button.style.background = '#22c55e';

      setTimeout(() => {
        button.innerHTML = original;
        button.style.background = 'linear-gradient(135deg, #7c3aed, #8b5cf6)';
      }, 1500);
    });
  });
</script>

</body>
</html>
