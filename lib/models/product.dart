class Product {
  final int id;
  final String name;
  final String imageUrl;
  final double price;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'] ?? '', // Default to empty string if null
      imageUrl: json['image'] ?? '', // Default to empty string if null
      price: json['price']?.toDouble() ?? 0.0, // Default to 0 if null
      description: json['description'] ?? '', // Default to empty string if null
    );
  }
}
