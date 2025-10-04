import 'package:flutter/material.dart';

class FabDemo extends StatelessWidget {
  const FabDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FloatingActionButton")),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.purple,
            child: const Icon(Icons.edit),
          ),
          const SizedBox(height: 16),
          FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            label: const Text("Checkout"),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            child: const Icon(Icons.message),
          ),
        ],
      ),
    );
  }
}
