<template>
  <div class="home">
    <div class="new-collection">
      <div class="new-collection-content">
        <div class="left-content">
          <h2>Welcome to Zahron Fashion!</h2>
          <p>Discover our latest collection with the best quality and affordable prices. Happy shopping!</p>
          <button class="shop-now-button" @click="shopNow">Shop Now</button>
        </div>
        <div class="right-content">
          <img src="/assets/딸-removebg-preview.png" alt="Collection Item 3" class="new-collection-image">
        </div>
      </div>
    </div>
    <h2>New Collection</h2>
    <div class="collection-box">
      <div class="image-container">
        <div class="card">
          <img src="/assets/product13.jpg" alt="Collection Item 1" class="card-img-top collection-image">
          <div class="card-body">
            <button @click="viewCollection(1)" class="view-button">View</button>
          </div>
        </div>
        <div class="card">
          <img src="/assets/product12.jpg" alt="Collection Item 2" class="card-img-top collection-image">
          <div class="card-body">
            <button @click="viewCollection(2)" class="view-button">View</button>
          </div>
        </div>
        <div class="card">
          <img src="/assets/product10.jpg" alt="Collection Item 3" class="card-img-top collection-image">
          <div class="card-body">
            <button @click="viewCollection(3)" class="view-button">View</button>
          </div>
        </div>
      </div>
    </div>

    <div class="barang">
      <div class="new-collection-content">
        <div class="left-content"></div>
        <img src="/assets/Krem dan Hijau Minimalist Discount Voucher Gift Certificate.png" alt="Collection Item 3" class="new-collection-image">
      </div>
    </div>
    
    <h2>Best Selling Product</h2>
    <div class="best-product">
      <div class="image-container">
        <div class="card">
          <img src="/assets/product2.jpg" alt="Collection Item 1" class="card-img-top best-image">
          <div class="card-body">
            <button @click="viewCollection(1)" class="view-button">View</button>
          </div>
        </div>
        <div class="card">
          <img src="/assets/product4.jpg" alt="Collection Item 2" class="card-img-top best-image">
          <div class="card-body">
            <button @click="viewCollection(2)" class="view-button">View</button>
          </div>
        </div>
        <div class="card">
          <img src="/assets/product15.jpg" alt="Collection Item 3" class="card-img-top best-image">
          <div class="card-body">
            <button @click="viewCollection(3)" class="view-button">View</button>
          </div>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
export default {
  methods: {
    viewCollection(index) {
      console.log(`View collection ${index}`);
    },
    shopNow() {
      console.log('Shop now clicked');
    }
  }
}
</script>

<style scoped>

.home {
  text-align: center;
  margin-top: 20px;
  background-color: #ffffff; /* Warna latar belakang yang lebih terang dari navbar */
}

.new-collection {
  background-color: #5a8bbd; /* Warna latar belakang pastel terang */
  padding: 50px;
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  position: relative;
  color: #ebe3e3; 
  text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  height: 500px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.barang {
  margin-top: 100px;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center; 
}

.barang .new-collection-content {
  display: flex;
  justify-content: center; 
  align-items: center; 
  width: 100%;
  max-width: 750px;
}

.barang img {
  width: auto; 
  max-width: 100%; 
  height: auto; 
  object-fit: cover; 
  margin-left: auto; 
  margin-right: auto; 
}
.best-product {
  margin-top: 20px;
  padding: 40px 20px;
  background-color: #f9f9f9;
  text-align: center;
}

.best-product h2 {
  margin-bottom: 40px; 
  font-size: 2rem;
  color: #121b24;
}

.best-product .image-container {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}

.best-product .card {
  width: 300px;
  height: 400px;
  margin: 15px;
  border: 1px solid #ddd;
  border-radius: 10px;
  overflow: hidden;
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
  background-color: #fff;
  display: flex;
  flex-direction: column;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.best-product .card:hover {
  transform: scale(1.05);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.best-product .card-img-top {
  width: 100%;
  height: 60%;
  object-fit: cover;
}

.best-product .card-body {
  padding: 15px;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
}

.best-product .view-button {
  padding: 10px 20px;
  background-color: #121b24;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  align-self: center;
}

.best-product .view-button:hover {
  background-color: #2d3e50;
}


.new-collection-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
  max-width: 1300px;
}

.left-content {
  flex: 1;
  padding-right: 30px;
}

.right-content {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
}

.new-collection-image {
  width: 100%;
  max-width: 450px;
  height: auto;
}

.shop-now-button {
  padding: 10px 20px;
  background-color: #121b24; 
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.shop-now-button:hover {
  background-color: #2d3e50; 
}
.collection-box {
  display: inline-block;
  margin-top: 20px;
}

.image-container {
  display: flex;
  justify-content: center;
  margin-top: 20px;
}

.card {
  width: 300px;
  margin: 0 10px;
  border: 1px solid #ddd; 
  border-radius: 5px;
  overflow: hidden;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  display: flex;
  flex-direction: column;
  background-color: #fff; 
}

.collection-image {
  width: 100%;
  height: auto;
  display: block;
  object-fit: cover;
}

.new-collection-image {
  width: 90%;
  max-width: 350px;
  height: auto;
}

.card-body {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  padding: 15px;
}

.view-button {
  padding: 8px 16px;
  background-color: #121b24; 
  color: white;
  border: none;
  border-radius: 0 0 5px 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.view-button:hover {
  background-color: #4682b4;
}

.home1 {
  display: flex;
  justify-content: row-reverse;
  margin-top: 40px;
}

.buy-button {
  width: 100%;
  padding: 8px 16px;
  background-color: #98fb98; 
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.buy-button:hover {
  background-color: #32cd32; 
}

.barang .new-collection-image {
  width: 100%;
  max-width: 600px; 
  height: auto;
}

</style>
