<template>
  <div>
    <nav class="navbar navbar-expand-sm navbar-dark pastel-navbar">
      <div class="container-fluid">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
            <NuxtLink class="nav-link" to="/">Beranda</NuxtLink>
          </li>
          <li class="nav-item">
            <NuxtLink class="nav-link" to="/profil">Profil</NuxtLink>
          </li>
          <li class="nav-item">
            <NuxtLink class="nav-link" to="/produk/produk">Produk</NuxtLink>
          </li>
          <li class="nav-item">
            <NuxtLink class="nav-link" to="/kontak">Kontak</NuxtLink>
          </li>
          <li class="nav-item">
            <NuxtLink class="nav-link" to="/about-me">About Me</NuxtLink>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.pastel-navbar {
  background-color: #121b24; 
  color: #ffffff; 
}

.navbar-nav .nav-item .nav-link {
  color: #ffffff !important; 
  font-weight: bold; 
  transition: color 0.3s ease; 
}

.navbar-nav .nav-item .nav-link:hover {
  color: #24313f !important; 
}
</style>
