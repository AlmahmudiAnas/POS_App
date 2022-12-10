class Products {
  final String imageURL,
      productName,
      productGroupPrice,
      productPrice,
      catagory,
      code;
  int inStock;
  Products({
    required this.imageURL,
    required this.productName,
    required this.productGroupPrice,
    required this.productPrice,
    required this.inStock,
    required this.catagory,
    required this.code,
  });
}

List<Products> products = [
  Products(
    imageURL: "images/KH6----spark__9t__hei_--800x800.png",
    productName: "item 1",
    productGroupPrice: "60",
    productPrice: "120",
    inStock: 60,
    catagory: "phone",
    code: "phone1",
  ),
  Products(
    imageURL: "images/3.png",
    productName: "item 2",
    productGroupPrice: "55",
    productPrice: "130",
    inStock: 50,
    catagory: "phone",
    code: "phone2",
  ),
  Products(
    imageURL: "images/green.png",
    productName: "item 3",
    productGroupPrice: "45",
    productPrice: "168",
    inStock: 100,
    catagory: "phone",
    code: "phone3",
  ),
  Products(
    imageURL: "images/yin.png",
    productName: "item 4",
    productGroupPrice: "30",
    productPrice: "50",
    inStock: 90,
    catagory: "phone",
    code: "phone4",
  ),
];
