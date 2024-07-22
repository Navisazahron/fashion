<template>
  <div class="container mt-5">
    <h1 class="mb-4 text-center pastel-text">Produk Kami</h1>
    <div class="row">
      <div class="col-md-4 mb-4" v-for="(product, index) in products" :key="index">
        <div class="card product-card">
          <div class="position-relative">
            <img :src="product.image" class="card-img-top product-img" alt="Product Image">
            <div class="overlay">
              <a href="#" class="btn btn-light">Lihat Detail</a>
            </div>
          </div>
          <div class="card-body">
            <h5 class="card-title">{{ product.name }}</h5>
            <p class="card-text">{{ product.price }}</p>
            <div class="d-flex justify-content-between align-items-center">
              <a href="#" class="btn btn-primary buy-button">Beli Sekarang</a>
              <div class="text-right">
                <p class="m-0">
                  <span class="star-rating">
                    <i class="fas fa-star"></i> {{ product.rating.toFixed(1) }}
                  </span>
                </p>
                <p class="m-0">{{ formatSold(product.sold) }} terjual</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      products: [
        { name: 'Produk 1', price: 'Rp 100.000', image: '/assets/product2.jpg', rating: 4.8, sold: 1500 },
        { name: 'Produk 2', price: 'Rp 200.000', image: '/assets/product3.jpg', rating: 4.7, sold: 800 },
        { name: 'Produk 3', price: 'Rp 300.000', image: '/assets/product4.jpg', rating: 4.9, sold: 2200 },
        { name: 'Produk 4', price: 'Rp 400.000', image: '/assets/product5.jpg', rating: 4.6, sold: 950 },
        { name: 'Produk 5', price: 'Rp 450.000', image: '/assets/product9.jpg', rating: 4.6, sold: 950 },
        { name: 'Produk 6', price: 'Rp 250.000', image: '/assets/product10.jpg', rating: 4.6, sold: 950 },
        { name: 'Produk 7', price: 'Rp 500.000', image: '/assets/product11.jpg', rating: 4.6, sold: 950 },
        { name: 'Produk 8', price: 'Rp 750.000', image: '/assets/product12.jpg', rating: 4.6, sold: 950 },

      ]
    };
  },
  methods: {
    formatSold(sold) {
      return sold >= 1000 ? (sold / 1000).toFixed(1) + 'rb' : sold;
    }
  }
}
</script>

<style scoped>
body {
  background-color: #f8f9fa; 
}
.product-card {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  transition: transform 0.2s, box-shadow 0.2s;
  overflow: hidden; 
  display: flex;
  flex-direction: column;
  height: 500px; 
}

.product-img {
  border-top-left-radius: 8px;
  border-top-right-radius: 8px;
  height: 350px; 
  width: 100%; 
  object-fit: cover; 
  transition: transform 0.2s;
}

.product-img:hover {
  transform: scale(1.05); 
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.4);
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: opacity 0.3s;
  border-radius: 8px;
}

.overlay a {
  color: #fff;
  font-size: 16px;
  padding: 10px 20px;
  background: #007bff;
  border-radius: 5px;
  text-decoration: none;
}

.overlay a:hover {
  background: #0056b3;
}

.product-card:hover .overlay {
  opacity: 1;
}

.card-body {
  text-align: center;
  padding: 20px; 
  flex-grow: 1; 
}

.buy-button {
  cursor: pointer;
  margin-top: 10px; 
}

.star-rating {
  color: #ffc107;
}

.star-rating i {
  margin-right: 5px;
}



</style>
