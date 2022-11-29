import 'package:flutter/material.dart';

class Customer {
  final String imageURL, cName;
  final int cDebt, cPhoneNumber;

  Customer(
      {required this.imageURL,
      required this.cName,
      required this.cDebt,
      required this.cPhoneNumber});
}

List<Customer> customerDemo = [
  Customer(
      imageURL: "images/blank-profile-photo.jpeg",
      cName: "Customer 1",
      cDebt: 150,
      cPhoneNumber: 092000000),
  Customer(
      imageURL: "images/blank-profile-photo.jpeg",
      cName: "Customer 2",
      cDebt: 0,
      cPhoneNumber: 091558568),
  Customer(
      imageURL: "images/blank-profile-photo.jpeg",
      cName: "Customer 3",
      cDebt: 50,
      cPhoneNumber: 0949841984),
  Customer(
      imageURL: "images/blank-profile-photo.jpeg",
      cName: "Customer 4",
      cDebt: 0,
      cPhoneNumber: 0915849761),
];
