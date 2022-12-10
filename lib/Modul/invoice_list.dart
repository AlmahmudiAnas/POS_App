import 'package:flutter/material.dart';

class Invoice {
  final String time, seller, product;
  final int pcs, totalPrice, productPrice;

  Invoice({
    required this.pcs,
    required this.product,
    required this.productPrice,
    required this.seller,
    required this.time,
    required this.totalPrice,
  });
}

List<Invoice> invoiceList = [
  Invoice(
      pcs: 2,
      product: "Pocophone",
      productPrice: 2500,
      seller: "Anas Almahmudi",
      time: "5:30",
      totalPrice: 2 * 2500),
  Invoice(
      pcs: 1,
      product: "Iphone",
      productPrice: 3100,
      seller: "Anas Almahmudi",
      time: "2:30",
      totalPrice: 1 * 3100),
  Invoice(
      pcs: 4,
      product: "oneplus",
      productPrice: 2800,
      seller: "Anas Almahmudi",
      time: "1:00",
      totalPrice: 4 * 2800),
  Invoice(
      pcs: 1,
      product: "samsung",
      productPrice: 3200,
      seller: "Anas Almahmudi",
      time: "6:23",
      totalPrice: 1 * 3200),
  Invoice(
      pcs: 6,
      product: "phone3",
      productPrice: 6000,
      seller: "Anas Almahmudi",
      time: "2:00",
      totalPrice: 6 * 6000),
];
