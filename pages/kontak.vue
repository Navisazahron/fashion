<template>
  <div class="contact-container">
    <div class="container">
      <h1 class="text-center pastel-text">Kontak Kami</h1>
      <p class="text-center pastel-text mb-4">
        Untuk pertanyaan lebih lanjut atau informasi, silakan hubungi kami melalui formulir di bawah ini:
      </p>
      
      <form class="contact-form">
        <div class="mb-3">
          <label for="nama" class="form-label">Nama:</label>
          <input type="text" id="nama" name="nama" class="form-control" required>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email:</label>
          <input type="email" id="email" name="email" class="form-control" required>
        </div>
        <div class="mb-3">
          <label for="pesan" class="form-label">Pesan:</label>
          <textarea id="pesan" name="pesan" class="form-control" rows="5" required></textarea>
        </div>
        
        <button type="submit" class="btn btn-primary">Kirim Pesan</button>
      </form>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.contact-container {
  padding: 40px 0;
  background-color: #f0f8ff; 
}

.contact-form {
  background-color: #ffffff; 
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
}

.text-center {
  text-align: center;
}

.pastel-text {
  color: #121b24; 
}

.form-label {
  font-weight: bold;
}

.form-control {
  border-radius: 4px;
  border: 1px solid #ddd;
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}

.btn-primary {
  background-color: #1f6591; 
  border-color: #1f6591;
  color: white;
}

.btn-primary:hover {
  background-color: #0e65ac; 
  border-color: #0e65ac;
}

.mb-4 {
  margin-bottom: 1.5rem; 
}
</style>
