import 'package:flutter/material.dart';

class Product {
  final String name;
  final String category;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
  });
}

// Data Dummy Produk yang Diperbarui
final List<Product> dummyProducts = [
  // ----------------------------------------------------
  // MAIN COURSE (5 Menu)
  // ----------------------------------------------------
  Product(
    name: "Beef Steak",
    category: "Main Course",
    price: 85.000,
    imageUrl: 'assets/beefsteak.jpg',
  ),
  Product(
    name: "Chicken Steak",
    category: "Main Course",
    price: 65.000,
    imageUrl: 'assets/chickensteak.jpg',
  ),
  Product(
    name: "Nasi Goreng",
    category: "Main Course",
    price: 50.000,
    imageUrl: 'assets/nasigoreng.jpg',
  ),
  Product(
    name: "Mie Goreng",
    category: "Main Course",
    price: 45.000,
    imageUrl: 'assets/miegoreng.jpg',
  ),
  Product(
    name: "Chicken Curry",
    category: "Main Course",
    price: 70.000,
    imageUrl: 'assets/chickencurry.jpg',
  ),

  // ----------------------------------------------------
  // DRINK (6 Menu)
  // ----------------------------------------------------
  Product(
    name: "Americano",
    category: "Drink",
    price: 30.000,
    imageUrl: 'assets/americano.jpg',
  ),
  Product(
    name: "Matcha",
    category: "Drink",
    price: 25.000,
    imageUrl: 'assets/matcha.jpg',
  ),
  Product(
    name: "Cappucino",
    category: "Drink",
    price: 28.000,
    imageUrl: 'assets/cappucino.jpg',
  ),
  Product(
    name: "Chocolate",
    category: "Drink",
    price: 32.000,
    imageUrl: 'assets/chocolate.jpg',
  ),
  Product(
    name: "Ice Tea",
    category: "Drink",
    price: 20.000,
    imageUrl: 'assets/tea.jpg',
  ),
  Product(
    name: "Thai Tea",
    category: "Drink",
    price: 25.000,
    imageUrl: 'assets/thaitea.jpg',
  ),

  // ----------------------------------------------------
  // SNACK (4 Menu)
  // ----------------------------------------------------
  Product(
    name: "French Fries",
    category: "Snack",
    price: 18.000,
    imageUrl: 'assets/frenchfries.jpg',
  ),
  Product(
    name: "Spring Roll",
    category: "Snack",
    price: 25.000,
    imageUrl: 'assets/springroll.jpg',
  ),
  Product(
    name: "Onion Rings",
    category: "Snack",
    price: 22.000,
    imageUrl: 'assets/onionrings.jpg',
  ),
  Product(
    name: "Garlic Bread",
    category: "Snack",
    price: 25.000,
    imageUrl: 'assets/garlicbread.jpg',
  ),

  // ----------------------------------------------------
  // DESSERT (5 Menu)
  // ----------------------------------------------------
  Product(
    name: "Pancake",
    category: "Dessert",
    price: 38.000,
    imageUrl: 'assets/pancake.jpg',
  ),
  Product(
    name: "Waffle",
    category: "Dessert",
    price: 35.000,
    imageUrl: 'assets/waffle.jpg',
  ),
  Product(
    name: "Cheesecake",
    category: "Dessert",
    price: 40.000,
    imageUrl: 'assets/cheesecake.jpg',
  ),
  Product(
    name: "Pudding Caramel",
    category: "Dessert",
    price: 25.000,
    imageUrl: 'assets/pudding.jpg',
  ),
  Product(
    name: "Ice Cream",
    category: "Dessert",
    price: 35.000,
    imageUrl: 'assets/icecream.jpg',
  ),
];

// Data Kategori untuk Home Screen
final List<Map<String, dynamic>> categories = [
  {'name': 'Main Course', 'icon': Icons.local_dining},
  {'name': 'Drink', 'icon': Icons.local_cafe},
  {'name': 'Snack', 'icon': Icons.cookie},
  {'name': 'Dessert', 'icon': Icons.cake},
];
