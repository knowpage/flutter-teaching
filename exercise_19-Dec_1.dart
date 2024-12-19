import 'package:flutter/material.dart';

void main() {
  runApp(const Exercise());
}

class Exercise extends StatelessWidget {
  const Exercise({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('e-commerce product card'),
          ),
          body: cardLayout(),
        ));
  }

  Container cardLayout() {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  // Product Image Placeholder
                  // Image(image: ,)
                ),
                const Column(
                  children: [
                    Text(
                      "product name",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('product price'),
                  ],
                ),
                SizedBox(height: 10),
                const Text(
                  'A short product description. Bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Add to Cart Logic
              },
              child: const Text('Add to Cart'),
            )
          ],
        ),
      ),
    );
  }
}
