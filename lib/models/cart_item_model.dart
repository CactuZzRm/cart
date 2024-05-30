class CartItemModel {
  final int id;
  final String title;
  final double price;
  final List<String> images;

  const CartItemModel({
    required this.id,
    required this.title,
    required this.price,
    required this.images,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      images: List<String>.from(json['images']),
    );
  }
}
