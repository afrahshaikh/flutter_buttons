import 'package:flutter/material.dart';
import 'package:flutter_buttons/shared/text_widget_row.dart';

class OutlinedButtons extends StatelessWidget {
  const OutlinedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("OutlinedButtons")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            rowTextButton(
              'Simple Button',
               OutlinedButton(
                onPressed: () {},
                child: const Text("Outlined"),
              ),
            ),
            rowTextButton(
              'Styled',
               OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: const BorderSide(color: Colors.blue, width: 2),
                ),
                child: const Text("Colored"),
              ),
            ),
            rowTextButton(
              'Button with Icon'
              , OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.download, color: Colors.green),
                label: const Text("Download"),
              ),
            ),
            rowTextButton(
              'Disabled'
              , OutlinedButton(
                onPressed: null,
                child: const Text("Buy Premium"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
