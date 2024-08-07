-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Agu 2024 pada 05.14
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion_store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`, `created_at`) VALUES
(1, 1, 1, 2, '2024-08-05 03:14:57'),
(2, 2, 2, 3, '2024-08-05 03:14:57'),
(3, 3, 3, 1, '2024-08-05 03:14:57'),
(4, 4, 4, 4, '2024-08-05 03:14:57'),
(5, 5, 5, 1, '2024-08-05 03:14:57'),
(6, 6, 6, 2, '2024-08-05 03:14:57'),
(7, 7, 7, 3, '2024-08-05 03:14:57'),
(8, 8, 8, 1, '2024-08-05 03:14:57'),
(9, 9, 9, 2, '2024-08-05 03:14:57'),
(10, 10, 10, 4, '2024-08-05 03:14:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `description`, `created_at`) VALUES
(1, 'Baju', 'Kategori untuk berbagai jenis baju', '2024-08-05 02:53:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `total_amount`, `status`, `created_at`) VALUES
(1, 1, 500000.00, 'pending', '2024-08-05 03:06:50'),
(2, 2, 250000.00, 'completed', '2024-08-05 03:06:50'),
(3, 3, 150000.00, 'shipped', '2024-08-05 03:06:50'),
(4, 4, 750000.00, 'pending', '2024-08-05 03:06:50'),
(5, 5, 300000.00, 'completed', '2024-08-05 03:06:50'),
(6, 6, 100000.00, 'shipped', '2024-08-05 03:06:50'),
(7, 7, 500000.00, 'pending', '2024-08-05 03:06:50'),
(8, 8, 450000.00, 'completed', '2024-08-05 03:06:50'),
(9, 9, 200000.00, 'shipped', '2024-08-05 03:06:50'),
(10, 10, 600000.00, 'pending', '2024-08-05 03:06:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 1, 1, 150000.00),
(2, 2, 2, 5, 50000.00),
(3, 3, 3, 2, 350000.00),
(4, 4, 4, 3, 75000.00),
(5, 5, 5, 1, 200000.00),
(6, 6, 6, 1, 60000.00),
(7, 7, 7, 3, 250000.00),
(8, 8, 8, 2, 180000.00),
(9, 9, 9, 1, 230000.00),
(10, 10, 10, 3, 600000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `payment_method`, `payment_status`, `payment_date`) VALUES
(1, 1, 'credit card', 'pending', '2024-08-05 03:17:20'),
(2, 2, 'PayPal', 'completed', '2024-08-05 03:17:20'),
(3, 3, 'bank transfer', 'shipped', '2024-08-05 03:17:20'),
(4, 4, 'credit card', 'pending', '2024-08-05 03:17:20'),
(5, 5, 'PayPal', 'completed', '2024-08-05 03:17:20'),
(6, 6, 'bank transfer', 'shipped', '2024-08-05 03:17:20'),
(7, 7, 'credit card', 'pending', '2024-08-05 03:17:20'),
(8, 8, 'PayPal', 'completed', '2024-08-05 03:17:20'),
(9, 9, 'bank transfer', 'shipped', '2024-08-05 03:17:20'),
(10, 10, 'credit card', 'pending', '2024-08-05 03:17:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `description`, `price`, `stock`, `image_url`, `created_at`) VALUES
(1, 1, 'Kemeja Flanel', 'Kemeja flanel berkualitas', 150000.00, 10, '/images/image1.jpg', '2024-08-05 02:59:22'),
(2, 1, 'Kaos Polos', 'Kaos polos berbagai warna', 50000.00, 50, '/images/image2.jpg', '2024-08-05 02:59:22'),
(3, 1, 'Jaket Bomber', 'Jaket bomber hangat', 350000.00, 8, '/images/image3.jpg', '2024-08-05 02:59:22'),
(4, 1, 'Sweater Rajut', 'Sweater rajut elegan', 280000.00, 12, '/images/image4.jpg', '2024-08-05 02:59:22'),
(5, 1, 'Kaos Raglan', 'Kaos raglan nyaman', 75000.00, 20, '/images/image5.jpg', '2024-08-05 02:59:22'),
(6, 1, 'Kemeja Batik', 'Kemeja batik tradisional', 200000.00, 5, '/images/image6.jpg', '2024-08-05 02:59:22'),
(7, 1, 'Kaos V-neck', 'Kaos V-neck modern', 60000.00, 30, '/images/image7.jpg', '2024-08-05 02:59:22'),
(8, 1, 'Hoodie', 'Hoodie casual', 250000.00, 7, '/images/image8.jpg', '2024-08-05 02:59:22'),
(9, 1, 'Baju Koko', 'Baju koko elegan', 180000.00, 15, '/images/image9.jpg', '2024-08-05 02:59:22'),
(10, 1, 'Tunik', 'Tunik trendy', 230000.00, 10, '/images/image10.jpg', '2024-08-05 02:59:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `product_id`, `rating`, `comment`, `created_at`) VALUES
(1, 1, 1, 5, 'Produk sangat bagus dan berkualitas tinggi.', '2024-08-05 03:20:32'),
(2, 2, 2, 4, 'Produk sesuai deskripsi, pengiriman cepat.', '2024-08-05 03:20:32'),
(3, 3, 3, 3, 'Produk bagus, tapi harga cukup mahal.', '2024-08-05 03:20:32'),
(4, 4, 4, 5, 'Sangat puas dengan produk ini, nyaman dipakai.', '2024-08-05 03:20:32'),
(5, 5, 5, 4, 'Produk sesuai ekspektasi, akan membeli lagi.', '2024-08-05 03:20:32'),
(6, 6, 6, 3, 'Cukup baik, tapi ada sedikit cacat.', '2024-08-05 03:20:32'),
(7, 7, 7, 5, 'Produk sangat nyaman, bahan berkualitas.', '2024-08-05 03:20:32'),
(8, 8, 8, 4, 'Produk bagus, tapi warna sedikit berbeda dari gambar.', '2024-08-05 03:20:32'),
(9, 9, 9, 3, 'Produk cukup bagus, tapi pengiriman lama.', '2024-08-05 03:20:32'),
(10, 10, 10, 5, 'Sangat puas, produk sesuai deskripsi.', '2024-08-05 03:20:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `full_name`, `address`, `phone`, `created_at`) VALUES
(1, 'zahra', 'password789', 'zahra@example.com', 'Zahra Kesya', 'Jl. Diponegoro No. 20, Surabaya, Indonesia', '082134567890', '2024-08-05 02:51:28'),
(2, 'rina', 'password321', 'rina@example.com', 'Rina Marlina', 'Jl. Ahmad Yani No. 15, Medan, Indonesia', '085676543210', '2024-08-05 02:51:28'),
(3, 'dedi', 'password654', 'dedi@example.com', 'Dedi Sutrisno', 'Jl. Panglima Polim No. 30, Bali, Indonesia', '087876543211', '2024-08-05 02:51:28'),
(4, 'tina', 'password987', 'tina@example.com', 'Tina Permata', 'Jl. Kartini No. 40, Makassar, Indonesia', '081298765432', '2024-08-05 02:51:28'),
(5, 'andi', 'password012', 'andi@example.com', 'Andi Saputra', 'Jl. Gajah Mada No. 50, Semarang, Indonesia', '085678901234', '2024-08-05 02:51:28'),
(6, 'lala', 'password333', 'lala@example.com', 'Lala Lina', 'Jl. Bung Tomo No. 35, Malang, Indonesia', '088746489746', '2024-08-05 02:51:28'),
(7, 'salwa', 'password344', 'salwa@example.com', 'Salwa Nova', 'Jl. Ahmad Yani No. 15, Medan, Indonesia', '085774838683', '2024-08-05 02:51:28'),
(8, 'moza', 'password250', 'moza@example.com', 'Moza Nataniela', 'Jl. Sampean No. 10, Malang, Indonesia', '086573377357', '2024-08-05 02:51:28'),
(9, 'vita', 'password000', 'vita@example.com', 'Dewi Novita', 'Jl. Pattimura No. 12, Semarang, Indonesia', '085789476593', '2024-08-05 02:51:28'),
(10, 'novian', 'password255', 'novian@example.com', 'Novia Saputra', 'Jl. Surabaya No. 60, Malang, Indonesia', '0856740945372', '2024-08-05 02:51:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
