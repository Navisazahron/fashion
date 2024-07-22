<template>
  <div class="profile">
    <header>
      <h1>Profil Pengguna</h1>
      <img src="/assets/kucing.jpg" alt="Foto Profil">
    </header>

    <main>
      <section class="profile-info">
        <h2>Data Profil</h2>
        <ul>
          <li><strong>Nama:</strong> Zahron Navisa</li>
          <li><strong>Alamat:</strong> Bokor Tumpang, Malang</li>
          <li><strong>Kontak:</strong> zahron@example.com</li>
        </ul>
      </section>

      <section class="profile-description">
        <h2>Deskripsi</h2>
        <p>Saya seorang pelajar di SMKN 6 Malang yang tertarik dengan teknologi.</p>
      </section>
    </main>
  </div>
</template>

<style scoped>
.profile {
  font-family: Arial, sans-serif;
  background-color: #f0f8ff; 
  color: #121b24; 
  text-align: center;
  padding: 20px;
}

header {
  margin-bottom: 20px;
}

header img {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  border: 4px solid #87cefa; 
}

.profile-info, .profile-description {
  background-color: #ffffff; 
  border-radius: 8px;
  padding: 20px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  margin: 20px auto;
  max-width: 600px;
}

.profile-info h2, .profile-description h2 {
  color: #87cefa; 
}

.profile-info ul {
  list-style-type: none;
  padding-left: 0;
  margin: 0;
}

.profile-info ul li {
  margin-bottom: 10px;
  font-size: 1.1em;
  color: #121b24; 
}

.profile-description p {
  color: #121b24; 
}

.profile-info strong {
  color: #121b24; 
}
</style>
