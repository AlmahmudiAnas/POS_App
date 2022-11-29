import 'package:flutter/material.dart';

class Customer {
  final String imageURL, cName;
  final int cDebt;

  Customer({
    required this.imageURL,
    required this.cName,
    required this.cDebt,
  });
}

List<Customer> customerDemo = [
  Customer(
    imageURL: "images/blank-profile-photo.jpeg",
    cName: "Customer 1",
    cDebt: 150,
  ),
  Customer(
    imageURL: "images/blank-profile-photo.jpeg",
    cName: "Customer 2",
    cDebt: 0,
  ),
  Customer(
    imageURL: "images/blank-profile-photo.jpeg",
    cName: "Customer 3",
    cDebt: 50,
  ),
  Customer(
    imageURL: "images/blank-profile-photo.jpeg",
    cName: "Customer 4",
    cDebt: 0,
  ),
];
