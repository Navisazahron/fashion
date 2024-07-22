<template>
  <div class="footer-container">
    <div class="footer-content">
      <div class="footer-section">
        <img src="/img/logo1-removebg-preview.png" alt="Collection Item 3" class="logo-image">
        <p class="footer-description">
          Zahron Fashion adalah pusat fashion online terkemuka yang menawarkan berbagai produk, mulai dari internasional hingga lokal. Kami berkomitmen untuk memberikan pengalaman belanja terbaik. Bersama kami, temukan gaya dan produk yang tepat untuk Anda.
        </p>
      </div>
      <div class="footer-section">
        <h3>Kontak Kami</h3>
        <p>Email: <a href="mailto:customer@zahronfashion.com">customer@zahronfashion.com</a></p>
        <p>WhatsApp: <a href="tel:+6285311111010">+62 853 1111 1010</a></p>
      </div>
      <div class="footer-section">
        <h3>Layanan</h3>
        <ul>
          <li><a href="/bantuan">Bantuan</a></li>
          <li><a href="/pengembalian-produk">Pengembalian Produk</a></li>
          <li><a href="/status-pesanan">Status Pesanan</a></li>
          <li><a href="/hubungi-kami">Hubungi Kami</a></li>
        </ul>
      </div>
      <div class="footer-section">
        <h3>Tentang Kami</h3>
        <ul>
          <li><a href="/profil-perusahaan">Profil Perusahaan</a></li>
          <li><a href="/karir">Karir</a></li>
          <li><a href="/kebijakan-privasi">Kebijakan Privasi</a></li>
          <li><a href="/ketentuan-dan-persyaratan">Ketentuan & Persyaratan</a></li>
        </ul>
      </div>
      <div class="footer-subscribe">
        <h3>Berlangganan</h3>
        <p>Daftar newsletter kami untuk mendapatkan berita dan penawaran terbaru dari Zahron Fashion.</p>
        <div class="subscribe-form">
          <input type="email" placeholder="Email Anda">
          <button>Daftar</button>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <p>© 2024 Zahron Fashion. Semua Hak Cipta Dilindungi.</p>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.logo-image {
  max-width: 130px; 
  height: auto; 
}

.footer-container {
  width: 100%;
  background-color: #121b24;
  color: white;
  padding: 20px;
  margin-top: 50px;
  display: flex;
  flex-direction: column;
}

.footer-content {
  max-width: 1200px;
  margin: 0 auto;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: flex-start; 
}

.footer-section {
  flex: 1 1 200px;
  margin: 10px;
  display: flex;
  flex-direction: column;
  justify-content: flex-start; 
}

.footer-section h3 {
  margin-bottom: 10px;
}

.footer-section ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.footer-section ul li {
  margin-bottom: 8px;
}

.footer-section p {
  margin: 0;
}

.footer-subscribe {
  flex: 1 1 300px;
  margin: 10px;
  display: flex;
  flex-direction: column;
  align-items: center; 
}

.subscribe-form {
  display: flex;
  flex-direction: column;
  align-items: center; 
}

.footer-description {
  font-size: 14px;
  line-height: 1.6;
}

.footer-section h3, .footer-subscribe h3 {
  font-size: 16px;
  margin-bottom: 10px;
  text-align: center; 
}

.subscribe-form input[type="email"] {
  padding: 8px;
  margin: 10px 0;
  width: 300px;
  box-sizing: border-box;
}

.subscribe-form button {
  padding: 8px;
  background-color: #5a8bbd;
  color: white;
  border: none;
  cursor: pointer;
  width: 200px; 
}

.footer-section a {
  color: #5a8bbd;
  text-decoration: none;
}

.footer-section a:hover {
  text-decoration: underline; 
}

.footer-bottom {
  text-align: center; 
  margin-top: 20px;
}

.footer-bottom p {
  margin: 5px 0;
  font-size: 12px;
}
</style>
