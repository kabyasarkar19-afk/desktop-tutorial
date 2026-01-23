import 'package:flutter/material.dart';
import 'item_service.dart';
import 'models.dart';
import 'widgets.dart';

/// LOGIN SCREEN
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final pass = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: pass,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final enteredEmail = email.text.trim();
                final enteredPass = pass.text.trim();

                if (enteredEmail == "kabyasarkar19@gmail.com" &&
                    enteredPass == "3456") {
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Invalid email or password"),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

/// HOME SCREEN
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: ItemService.products
            .map(
              (p) => ProductCard(
                product: p,
                onAdd: () => ItemService.addToCart(p),
              ),
            )
            .toList(),
      ),
    );
  }
}

/// CART SCREEN
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: ItemService.cart
                  .map(
                    (c) => ListTile(
                      title: Text(c.product.name),
                      subtitle: Text(
                          "Qty: ${c.quantity} | Total: ৳${c.total}"),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => ItemService.removeFromCart(c),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              "Total: ৳${ItemService.totalPrice()}",
              style: const TextStyle(fontSize: 18),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/checkout'),
            child: const Text("Checkout"),
          ),
        ],
      ),
    );
  }
}

/// CHECKOUT SCREEN
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController();
    final phone = TextEditingController();
    final address = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: phone,
              decoration: const InputDecoration(labelText: "Phone"),
            ),
            TextField(
              controller: address,
              decoration: const InputDecoration(labelText: "Address"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ItemService.placeOrder(
                  name.text.trim(),
                  phone.text.trim(),
                  address.text.trim(),
                );
                Navigator.pushNamed(context, '/orders');
              },
              child: const Text("Confirm Order"),
            ),
          ],
        ),
      ),
    );
  }
}

/// ORDERS SCREEN
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Orders")),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: ItemService.orders
            .map(
              (o) => Card(
                child: ListTile(
                  title: Text(o.customerName),
                  subtitle: Text("${o.address}\nTotal: ৳${o.total}"),
                  trailing: Text(o.status),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
