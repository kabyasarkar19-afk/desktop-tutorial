class Product {
  final String name;
  final String description;
  final double price;

  Product({
    required this.name,
    required this.description,
    required this.price,
  });
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  double get total => product.price * quantity;
}

class Order {
  final List<CartItem> items;
  final double total;
  final String customerName;
  final String phone;
  final String address;
  String status;

  Order({
    required this.items,
    required this.total,
    required this.customerName,
    required this.phone,
    required this.address,
    this.status = "Pending",
  });
}
