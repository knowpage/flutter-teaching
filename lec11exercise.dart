import 'package:flutter/material.dart';

void main() {
  runApp(Lec11exercise());
}

class Products {
  String? name;
  double? price;
  double? stockQuantity;
  Products([this.name, this.price, this.stockQuantity]);
}

List<Products> products = [
  Products('Shirt', 500, 10),
  Products('Pant', 1000, 5),
  Products('Shoe', 1500, 3),
  Products('Watch', 2000, 2),
  Products('Bag', 3000, 1),
  Products('Belt', 500, 10),
];

class Lec11exercise extends StatelessWidget {
  const Lec11exercise({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('woman'))),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].name!),
              subtitle: Text('Price: ${products[index].price}'),
              trailing: Text('Stock: ${products[index].stockQuantity}'),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const AddProduct()),
          // );
          final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddProduct(),
              ));

          setState(() {
            products.add(Products(result[0], result[1], result[2]));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String? tempName;
  double? tempPrice;
  double? tempStockQuantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Add Product')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'Input Product Name'),
              onChanged: (value) {
                setState(() {
                  tempName = value;
                });
              },
            ),
            TextField(
              decoration:
                  const InputDecoration(hintText: 'Input Product Price'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  tempPrice = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            TextField(
              decoration:
                  const InputDecoration(hintText: 'Input Stock Quantity'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  tempStockQuantity = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context, [tempName, tempPrice, tempStockQuantity]);
              },
              child: const Text('Done!'),
            ),
          ],
        ),
      ),
    );
  }
}
