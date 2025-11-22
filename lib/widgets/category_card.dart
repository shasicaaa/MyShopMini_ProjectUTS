import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData
  iconData; // Ubah tipe dari String imagePath menjadi IconData iconData
  final VoidCallback onTap;
  const CategoryCard({
    super.key,
    required this.title,
    required this.iconData, // Gunakan iconData
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Definisi warna yang digunakan
    const colorBrown = Color(0xFF6B4F3A);
    const colorBackground = Color(0xFFF7F0E8);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        height: 100, // Berikan tinggi tetap agar kartu terlihat rapi
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        decoration: BoxDecoration(
          color: colorBackground,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ganti Image dengan Icon
            Icon(
              iconData,
              size: 32, // Sesuaikan ukuran ikon
              color: colorBrown,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: colorBrown,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
