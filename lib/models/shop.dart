import 'package:flutter/material.dart';
import 'package:sample_project/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale

  final List<Product> _shop = [
    Product(
        title: 'Nike Sportwear Fleece',
        prices: 120,
        sizes: 'S, M, L, XL, XXL',
        imageUrl: 'assets/images/product1.png'),
    Product(
        title: 'Fila Sportwear Jacket',
        prices: 60,
        sizes: 'S, M, L, XL, XXL',
        imageUrl: 'assets/images/product2.png'),
    Product(
        title: 'Nike Sportwear Fleece',
        prices: 50,
        sizes: 'S, M, L, XL, XXL',
        imageUrl: 'assets/images/product3.png'),
    Product(
        title: 'Nike Sportwear Fleece',
        prices: 80,
        sizes: 'S, M, L, XL, XXL',
        imageUrl: 'assets/images/product4.png'),
    Product(
        title: 'Nike Sportwear Fleece',
        prices: 90,
        sizes: 'S, M, L, XL, XXL',
        imageUrl: 'assets/images/product3.png'),
    Product(
        title: 'Nike Sportwear Fleece',
        prices: 70,
        sizes: 'S, M, L, XL, XXL',
        imageUrl: 'assets/images/product2.png'),
    Product(
        title: 'Nike Sportwear Fleece',
        prices: 140,
        sizes: 'S, M, L, XL, XXL',
        imageUrl: 'assets/images/product1.png'),
    Product(
        title: 'Nike Sportwear Fleece',
        prices: 30,
        sizes: 'S, M, L, XL, XXL',
        imageUrl: 'assets/images/product4.png'),
  ];

// user cart
  final List<Product> _cart = [];

// get product list
  List<Product> get shop => _shop;

//get user cart
  List<Product> get cart => _cart;

//add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

//remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
