import 'package:flutter/material.dart';
import 'models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onAdd;

  const ProductCard({super.key, required this.product, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[50],
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(product.name,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("${product.description}\n৳${product.price}"),
        trailing: ElevatedButton(
          onPressed: onAdd,
          child: const Text("Add"),
        ),
      ),
    );
  }
}
