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
        body: ListView(padding: const EdgeInsets.all(15), children: [
          const Text('Today'),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: today(),
          ),
          const Text('Earlier Invoices'),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: earlier(),
          ),
        ]),
      ),
    );
  }
}

GridView today() {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      childAspectRatio: 1 / 0.2,
      crossAxisCount: 1,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemCount: 2,
    itemBuilder: (context, index) {
      return itemCard();
    },
  );
}

GridView earlier() {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      childAspectRatio: 1 / 0.2,
      crossAxisCount: 1,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemCount: 10,
    itemBuilder: (context, index) {
      return itemCard();
    },
  );
}

Container itemCard() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(color: Colors.grey, blurRadius: 5),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/images/Icon_insert_here.png',
                fit: BoxFit.fitHeight,
                height: 50,
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name insert here',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'Paid on: Date insert here',
                  style: TextStyle(fontSize: 10),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('\$10000.00'),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Colors.green,
                    )),
                child: const Text(
                  'Due or not',
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
