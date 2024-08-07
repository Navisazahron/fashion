<template>
  <div class="container mt-5">
    <h3>ID Produk: {{ $route.params.product_id }}</h3>
    <h1>{{ product_name }}</h1>
    <h5>Rp {{ price }}</h5>
    <p>{{ description }}</p>
    <div v-if="image_url">
      <img :src="image_url" class="card-img-top product-img" alt="Product Image">    
    </div>
    <div v-else>
      <p>Gambar tidak tersedia</p>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      product_name: "",
      price: "",
      description: "",
      image_url: "",
      product_id: this.$route.params.product_id
    };
  },
  mounted() {
    this.getProductDetail();
  },
  methods: {
    async getProductDetail() {
      console.log('Fetching product details for ID:', this.product_id);
      try {
        const res = await axios.get(`http://localhost/fashion/products_detail.php?product_id=${this.product_id}`);
        console.log('API response:', res.data);

        this.product_name = res.data.product_name || 'Nama tidak tersedia';
        this.price = res.data.price || 'Harga tidak tersedia';
        this.description = res.data.description || 'Deskripsi tidak tersedia';
        this.image_url = res.data.image_url ? res.data.image_url.replace(/\\/g, '') : '';

        console.log('Product details:', {
          product_name: this.product_name,
          price: this.price,
          description: this.description,
          image_url: this.image_url
        });
      } catch (error) {
        console.error('Error fetching product details:', error);
      }
    }
  }
}
</script>

<style scoped>
img {
  max-width: 20%;
  height: auto;
}
</style>
