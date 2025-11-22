// test/widget_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Ganti path import jika nama folder proyek Anda berbeda
import 'package:myshopmini_uts015/main.dart';

void main() {
  // Ganti nama pengujian agar lebih deskriptif
  testWidgets('Home Screen displays MyShop Mini and categories', (
    WidgetTester tester,
  ) async {
    // Bangun aplikasi kita (menggunakan nama kelas MyApp yang benar)
    await tester.pumpWidget(const MyApp());

    // --- Verifikasi Konten Halaman Utama ---

    // 1. Verifikasi Judul AppBar ("MyShop Mini")
    // Pastikan teks "MyShop Mini" muncul di layar.
    expect(find.text('MyShop Mini'), findsOneWidget);

    // 2. Verifikasi Teks Sambutan
    // Pastikan teks "Freshly Baked, Just for You!" muncul.
    expect(find.text('Freshly, Just for You!'), findsOneWidget);

    // 3. Verifikasi Kategori
    // Pastikan setidaknya satu nama kategori (misalnya Main Course) muncul.
    expect(find.text('Main Course'), findsOneWidget);

    // 4. Verifikasi Navigasi Kategori (Contoh: Mengetuk 'Drink')
    await tester.tap(find.text('Drink'));
    await tester.pumpAndSettle(); // Tunggu hingga animasi navigasi selesai

    // Setelah menekan kategori 'Drink', kita harus berada di ProductListScreen.
    // Verifikasi bahwa judul ProductListScreen adalah 'Drink'.
    expect(find.text('Drink'), findsOneWidget);

    // Verifikasi ikon kembali pada ProductListScreen
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
  });
}
