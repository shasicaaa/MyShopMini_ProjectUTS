import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    // Definisi warna
    const Color primaryColor = Color(0xFF8B4513); // Coklat lembut
    const Color accentColor = Color(0xFFF5DEB3); // Cream muda
    const Color priceColor = Color(0xFF5D4037); // Coklat gelap

    // Ukuran gambar
    const double imageSize = 300;

    return Scaffold(
      backgroundColor: accentColor,
      appBar: AppBar(
        title: const Text(
          "Product Detail",
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: primaryColor),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      // ⭐ Semua elemen ditengah
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Gambar Produk
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: primaryColor.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      product.imageUrl,
                      height: imageSize,
                      width: imageSize,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: imageSize,
                          width: imageSize,
                          color: primaryColor.withOpacity(0.1),
                          child: const Center(
                            child: Icon(
                              Icons.broken_image,
                              size: 80,
                              color: Colors.grey,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Nama Produk
                Text(
                  product.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(height: 15),

                // Harga Produk
                Text(
                  "Rp ${product.price.toStringAsFixed(3).replaceAll('.', ',')}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: priceColor,
                  ),
                ),
                const SizedBox(height: 40),

                // Tombol Tambah ke Keranjang
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '${product.name} ditambahkan ke keranjang!',
                        ),
                        backgroundColor: primaryColor,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text("Tambahkan ke Keranjang"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: primaryColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
