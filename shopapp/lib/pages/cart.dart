import 'package:flutter/material.dart';
import 'package:shopapp/componets/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: const Text("Cart"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Cart_Products(),
      bottomNavigationBar: Container(
        child: Row(
          children: <Widget>[
            const Expanded(
              child: ListTile(
                title: Text("Total :"),
                subtitle: Text("\$500"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  "Chek out",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
