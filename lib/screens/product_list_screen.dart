import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final String categoryName;
  final List<Product> products;
  const ProductListScreen({
    required this.categoryName,
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Definisi warna yang digunakan
    const Color primaryColor = Color(0xFF8B4513); // SaddleBrown
    const Color accentColor = Color(0xFFF5DEB3); // Wheat
    return Scaffold(
      backgroundColor: accentColor.withOpacity(0.5),
      appBar: AppBar(
        title: Text(
          categoryName,
          style: const TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true, // Rata tengah
        // Ikon Kembali ke HomeScreen
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: primaryColor),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: products.isEmpty
          ? const Center(
              child: Text(
                "Tidak ada produk dalam kategori ini.",
                style: TextStyle(color: primaryColor),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  // Mengatur rasio aspek menjadi 1.0 (persegi) agar terlihat lebih kompak
                  childAspectRatio: 1.0,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    product: product,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(product: product),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
    );
  }
}

// Widget untuk Card Produk dalam Grid

// Catatan: Widget ini HANYA menampilkan gambar (menghilangkan nama dan harga)

class ProductCard extends StatelessWidget {
  final Product product;

  final VoidCallback onTap;

  const ProductCard({required this.product, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,

      elevation: 4,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: InkWell(
        onTap: onTap,

        borderRadius: BorderRadius.circular(15),

        // Hanya menampilkan gambar di dalam Card
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),

          child: Image.asset(
            product.imageUrl,

            fit: BoxFit.cover, // Gambar memenuhi seluruh area Card

            errorBuilder: (context, error, stackTrace) {
              // Menampilkan ikon placeholder dan nama jika gambar tidak ditemukan

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  const Icon(
                    Icons.fastfood_outlined,

                    size: 40,

                    color: Colors.grey,
                  ),

                  const SizedBox(height: 8),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),

                    child: Text(
                      product.name,

                      textAlign: TextAlign.center,

                      style: const TextStyle(
                        fontSize: 12,

                        color: Color(0xFF8B4513),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
