<template>
  <div class="container mt-5">
    <h1 class="mb-4 text-center pastel-text">Produk Kami</h1>
    <div class="row">
      <div class="col-md-4 mb-4" v-for="product in products" :key="product.product_id">
        <div class="card product-card">
          <img :src="product.image_url.replace(/\\/g, '')" class="card-img-top product-img" alt="Product Image">
          <div class="card-body">
            <h5 class="card-title">{{ product.product_name }}</h5>
            <p class="card-text">Rp {{ product.price }}</p>
            <NuxtLink :to="'/produk/' + product.product_id" class="btn btn-primary">Lihat Detail</NuxtLink>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      products: []
    };
  },
  created() {
    this.getProducts();
  },
  methods: {
    async getProducts() {
      try {
        const response = await axios.get('http://localhost/fashion/products.php');
        console.log('API response:', response.data);
        this.products = response.data.products;
      } catch (error) {
        console.error('Error fetching products:', error);
      }
    }
  }
}
</script>

<style scoped>
.product-card {
  width: 100%; /* Atur lebar card menjadi 100% dari kolom yang ada */
  max-width: 300px; /* Lebar maksimum untuk card */
  margin: 0 auto; /* Center card dalam kolom */
  border: 1px solid #ddd;
  border-radius: 8px;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  transition: transform 0.3s, box-shadow 0.3s; /* Animasi halus saat hover */
}

.product-card:hover {
  transform: translateY(-10px); /* Efek "mengambang" saat hover */
  box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Bayangan card saat hover */
}

.product-img {
  width: 100%; /* Pastikan gambar mengisi lebar card */
  height: 350px; /* Tinggi tetap untuk gambar */
  object-fit: cover; /* Pastikan gambar tidak terdistorsi */
}

.card-body {
  padding: 16px; /* Padding yang lebih konsisten */
  display: flex;
  flex-direction: column;
  flex: 1;
  background-color: #fff; /* Warna latar belakang card body */
}

.card-title {
  font-size: 1.25rem;
  margin-bottom: 8px;
  font-weight: bold; /* Menonjolkan judul */
}

.card-text {
  font-size: 1rem;
  margin-bottom: 16px;
}

.btn {
  margin-top: auto; /* Posisi button di bawah */
  display: inline-block;
  padding: 8px 16px;
  font-size: 0.875rem;
  color: #007bff; /* Warna teks button */
  background-color: #fff; /* Warna latar belakang button */
  border: 1px solid #007bff; /* Border button */
  border-radius: 4px;
  text-align: center;
  text-decoration: none;
  transition: background-color 0.3s, color 0.3s; /* Animasi halus saat hover */
}

.btn:hover {
  background-color: #007bff; /* Warna latar belakang saat hover */
  color: #fff; /* Warna teks saat hover */
}

</style>
