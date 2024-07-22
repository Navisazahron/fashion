<template>
  <div class="about-me">
    <div class="container mt-5">
      <h2 class="text-center pastel-text">Tentang Kami - Zahron Fashion</h2>
      <div class="row mt-4">
        <div class="col-md-4 text-center">
          <img src="/assets/kucing.jpg" alt="My Photo" class="img-fluid rounded-circle about-me-photo shadow-lg">
        </div>
        <div class="col-md-8">
          <p class="lead pastel-text mb-4">
            Selamat datang di Zahron Fashion, tempat di mana gaya bertemu dengan kualitas dan kenyamanan. Kami adalah toko baju yang berdedikasi untuk memberikan Anda pilihan fashion terbaru yang selalu mengikuti tren. Dengan berbagai koleksi pakaian yang stylish dan berkualitas tinggi, kami siap memenuhi kebutuhan fashion Anda untuk setiap kesempatan.
          </p>
          <p class="pastel-text mb-4">
            Di Zahron Fashion, kami percaya bahwa setiap orang berhak tampil menawan tanpa harus mengorbankan kenyamanan. Oleh karena itu, kami selektif dalam memilih bahan yang lembut dan nyaman dipakai sehari-hari. Setiap produk yang kami tawarkan telah melalui proses pemilihan yang ketat untuk memastikan Anda mendapatkan yang terbaik.
          </p>
          <p class="pastel-text mb-4">
            Kami juga berkomitmen untuk memberikan pelayanan terbaik kepada pelanggan kami. Tim kami siap membantu Anda menemukan pilihan yang paling sesuai dengan gaya dan kebutuhan Anda. Dengan pengalaman berbelanja yang menyenangkan dan mudah, kami berharap Anda merasa puas dan selalu ingin kembali ke Zahron Fashion.
          </p>
          <p class="pastel-text mb-4">
            Terima kasih telah memilih Zahron Fashion sebagai destinasi fashion Anda. Kami bangga dapat menjadi bagian dari perjalanan gaya Anda. Selamat berbelanja dan temukan inspirasi fashion Anda bersama kami!
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.about-me {
  padding: 60px 0;
  background-color: #f0f4f8; 
}

.about-me-photo {
  width: 180px;
  height: 180px;
  object-fit: cover;
  border: 5px solid #2d3e50; 
}

.pastel-text {
  color: #2d3e50; 
  font-family: 'Arial', sans-serif; 
}

.text-center {
  text-align: center;
}

.lead {
  font-size: 1.25rem;
  font-weight: 400;
}

.shadow-lg {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
}

.mb-4 {
  margin-bottom: 1.5rem; 
}

p {
  font-size: 1rem;
  line-height: 1.6; 
}

@media (max-width: 768px) {
  .about-me-photo {
    width: 150px;
    height: 150px;
  }
}
</style>
