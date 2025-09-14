import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  const TextButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Buttons')),
      body: Center(
        child: TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: Duration(microseconds: 10),
                content: Text('Button Pressed'),
              ),
            );
          },
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: Duration(microseconds: 10),
                content: Text('Button LongPressed'),
              ),
            );
          },
          autofocus: true,
          focusNode: FocusNode(),
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(16),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: Text("Text Button Click Me"),
        ),
      ),
    );
  }
}
