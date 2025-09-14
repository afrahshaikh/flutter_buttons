import 'package:flutter/material.dart';
import 'package:flutter_buttons/buttons/elevated_button.dart';

class IconButtons extends StatelessWidget {
  const IconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("IconButtons")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              rowTextButton('Simple Icon Button',
              IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              ),
             rowTextButton('Color and size',  IconButton(
                icon: const Icon(Icons.favorite),
                color: Colors.red,
                iconSize: 40,
                onPressed: () {},
              ),
             ),
             rowTextButton('Tool tip',  IconButton(
                icon: const Icon(Icons.search),
                tooltip: "Search",
                onPressed: () {},
              ),
             ),
              rowTextButton(
               'Disabled Button' , IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
