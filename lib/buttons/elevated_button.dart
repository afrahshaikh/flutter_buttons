import 'package:flutter/material.dart';

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Elevated Buttons')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            rowTextButton(
              "Simple Button",
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                child: const Text(
                  'Click Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            rowTextButton(
              'Button with Icon',
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {},
                icon: const Icon(Icons.check, color: Colors.white),
                label: const Text(
                  'Subscribe',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            rowTextButton(
              'Button with shape',
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  ),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Elevated Button',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            rowTextButton(
              'Button no shadow',
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 231, 88, 205),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  ),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {},
                child: const Text('Button', style: TextStyle(fontSize: 16)),
              ),
            ),
            rowTextButton(
              'Button long press',
              ElevatedButton(
                onLongPress: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Button LongPressed')));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 15, 169, 215),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  ),
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {},
                child: const Text('Button', style: TextStyle(fontSize: 16)),
              ),
            ),
            rowTextButton(
              'Button Border',
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 73, 9, 222),
                  foregroundColor: Colors.white,
                  side: BorderSide(
                    color: const Color.fromARGB(255, 239, 65, 8),
                    width: 5,
                  ),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                onPressed: () {},
                child: const Text('Border', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget rowTextButton(String text, Widget child) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('$text -', style: TextStyle(fontSize: 16, color: Colors.black)),
      SizedBox(width: 200, height: 30, child: child),
    ],
  );
}
