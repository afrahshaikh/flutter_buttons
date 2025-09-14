import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextButtons")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Simple TextButton"),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text("Styled TextButton"),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info, color: Colors.red),
                label: const Text("With Icon"),
              ),
              TextButton(onPressed: null, child: const Text("Disabled Button")),
            ],
          ),
        ),
      ),
    );
  }
}
