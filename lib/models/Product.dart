import 'package:flutter/material.dart';

class Product {
  final String image, name;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.name,
    this.price,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      name: "Bag",
      price: 234,
      size: 12,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      name: "Belt Bag",
      price: 234,
      size: 8,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      name: "Hang Top",
      price: 234,
      size: 10,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      name: "Old Fashion",
      price: 234,
      size: 11,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      name: "Shoe",
      price: 234,
      size: 12,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    name: "Chair",
    price: 234,
    size: 12,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];
