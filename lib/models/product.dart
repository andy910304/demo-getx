class Product {
  late final int id;
  late final String name;
  late final String description;
  late final double price;
  late final double rate;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rate,
  });

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['Product ID'],
      name: json['Name'],
      description: json['Description'],
      price: json['Price'].toDouble(),
      rate: json['Rating Avg'].toDouble(),
    );
  }
}
