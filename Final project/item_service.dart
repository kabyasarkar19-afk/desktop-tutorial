import 'models.dart';

class ItemService {
  static List<Product> products = [
    Product(name: "Earbuds", description: "Wireless earbuds", price: 1200),
    Product(name: "Headset", description: "Gaming headset", price: 2500),
    Product(name: "Speaker", description: "Bluetooth speaker", price: 1800),
  ];

  static List<CartItem> cart = [];
  static List<Order> orders = [];

  static void addToCart(Product product) {
    final index =
        cart.indexWhere((item) => item.product.name == product.name);

    if (index >= 0) {
      cart[index].quantity++;
    } else {
      cart.add(CartItem(product: product));
    }
  }

  static void removeFromCart(CartItem item) {
    cart.remove(item);
  }

  static double totalPrice() {
    return cart.fold(0, (sum, item) => sum + item.total);
  }

  static void placeOrder(
      String name, String phone, String address) {
    orders.add(
      Order(
        items: List.from(cart),
        total: totalPrice(),
        customerName: name,
        phone: phone,
        address: address,
      ),
    );
    cart.clear();
  }
}
