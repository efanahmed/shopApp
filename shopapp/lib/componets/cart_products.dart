import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  const Cart_Products({Key? key}) : super(key: key);

  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "assets/Images/products/blazer1.jpeg",
      "price": 180,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "assets/Images/products/hills1.jpeg",
      "price": 220,
      "size": "7",
      "color": "red",
      "quantity": 1,
    },
    {
      "name": "Blazer",
      "picture": "assets/Images/products/blazer2.jpeg",
      "price": 180,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "picture": "assets/Images/products/dress1.jpeg",
      "price": 200,
      "size": "L",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Black dress",
      "picture": "assets/Images/products/dress2.jpeg",
      "price": 170,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_card_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_pricture: Products_on_the_cart[index]["picture"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
          );
        });
  }
}

class Single_card_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_card_product({
    this.cart_prod_name,
    this.cart_prod_pricture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ==== lading section ====
        leading: Image.asset(
          cart_prod_pricture,
          width: 80.0,
          height: 80.0,
        ),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            // row inside the column
            Row(
              children: <Widget>[
                // thes section is for the size of the  products
                const Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_size,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
                // this section of the productcolors
                const Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_color,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            //  ===== this section is for the product price =====
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cart_prod_price}",
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        trailing: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              IconButton(
                  icon: const Icon(Icons.arrow_drop_down), onPressed: () {}),
              const Text("1"),
              IconButton(
                  icon: const Icon(Icons.arrow_drop_down), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
