class Product {
  Product({
    required this.categoryId,
    required this.productId,
    required this.name,
    required this.price,
    required this.description,
    required this.isFreeShipping,
    required this.amount,
    required this.imageUrl,
  });

  String categoryId;
  String productId;
  String name;
  double price;
  String description;
  bool isFreeShipping;
  String amount;
  String imageUrl;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    categoryId: json["categoryId"],
    productId: json["productId"],
    name: json["name"],
    price: json["price"].toDouble(),
    description: json["description"],
    isFreeShipping: json["isFreeShipping"],
    amount: json["amount"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "categoryId": categoryId,
    "productId": productId,
    "name": name,
    "price": price,
    "description": description,
    "isFreeShipping": isFreeShipping,
    "amount": amount,
    "imageUrl": imageUrl,
  };
}
