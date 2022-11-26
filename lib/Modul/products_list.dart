class Products {
  final String imageURL, productName, productGroupPrice, productPrice;
  Products({
    required this.imageURL,
    required this.productName,
    required this.productGroupPrice,
    required this.productPrice,
  });
}

List<Products> products = [
  Products(
    imageURL: "",
    productName: "item 1",
    productGroupPrice: "60",
    productPrice: "120",
  ),
  Products(
    imageURL: "",
    productName: "item 2",
    productGroupPrice: "55",
    productPrice: "130",
  ),
  Products(
    imageURL: "",
    productName: "item 3",
    productGroupPrice: "45",
    productPrice: "168",
  ),
  Products(
    imageURL: "",
    productName: "item 4",
    productGroupPrice: "30",
    productPrice: "50",
  ),
  Products(
    imageURL: "",
    productName: "item 5",
    productGroupPrice: "50",
    productPrice: "90",
  ),
];
