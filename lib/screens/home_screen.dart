import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF8B4513); // SaddleBrown
    const Color accentColor = Color(0xFFF5DEB3); // Wheat
    return Scaffold(
      backgroundColor: accentColor.withOpacity(0.5),
      appBar: AppBar(
        title: const Text(
          "MyShop Mini",
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // KONTROL ALIGNMENT UNTUK SEMUA ANAK COLUMN
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Teks Sambutan
            const Text(
              "Freshly, Just for You!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: primaryColor,
                fontFamily: 'Serif',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Judul Kategori
            const Text(
              "Categories:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Daftar Kategori (Grid) - PERBAIKAN DI SINI
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 kolom
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 1.5, // Lebar lebih besar dari tinggi
                ),

                // --- PENTING: item count dan item builder harus ada ---
                itemCount: categories
                    .length, // <-- PERBAIKAN: Menggunakan panjang data kategori
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return CategoryCard(
                    categoryName: category['name'],
                    iconData: category['icon'],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductListScreen(
                            categoryName: category['name'],
                            products: dummyProducts
                                .where((p) => p.category == category['name'])
                                .toList(),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk Card Kategori (Perbaikan di sini)

class CategoryCard extends StatelessWidget {
  // --- PERBAIKAN: Definisi properti yang hilang ---
  final String categoryName;
  final IconData iconData;
  final VoidCallback onTap;
  const CategoryCard({
    required this.categoryName,
    required this.iconData,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF8B4513);
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // --- PERBAIKAN: Menggunakan iconData yang sudah didefinisikan ---
              Icon(iconData, size: 40, color: primaryColor.withOpacity(0.8)),
              const SizedBox(height: 8),
              Text(
                // --- PERBAIKAN: Menggunakan categoryName yang sudah didefinisikan ---
                categoryName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
