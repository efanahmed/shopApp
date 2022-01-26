import 'package:flutter/material.dart';
import 'package:shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/Images/products/blazer1.jpeg",
      "old_price": 200,
      "price": 180,
    },
    {
      "name": "Blazer",
      "picture": "assets/Images/products/blazer2.jpeg",
      "old_price": 220,
      "price": 180,
    },
    {
      "name": "Red Dress",
      "picture": "assets/Images/products/dress1.jpeg",
      "old_price": 230,
      "price": 200,
    },
    {
      "name": "Black Dress",
      "picture": "assets/Images/products/dress2.jpeg",
      "old_price": 200,
      "price": 170,
    },
    {
      "name": "Shoes",
      "picture": "assets/Images/products/hills1.jpeg",
      "old_price": 250,
      "price": 220,
    },
    {
      "name": "Shoes",
      "picture": "assets/Images/products/hills2.jpeg",
      "old_price": 150,
      "price": 120,
    },
    {
      "name": "Pant",
      "picture": "assets/Images/products/pants1.jpg",
      "old_price": 210,
      "price": 170,
    },
    {
      "name": "Pant",
      "picture": "assets/Images/products/pants2.jpeg",
      "old_price": 180,
      "price": 140,
    },
    {
      "name": "Skt",
      "picture": "assets/Images/products/skt1.jpeg",
      "old_price": 200,
      "price": 150,
    },
    {
      "name": "Skt",
      "picture": "assets/Images/products/skt2.jpeg",
      "old_price": 150,
      "price": 120,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext contex, int index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Singel_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          ),
        );
      },
    );
  }
}

class Singel_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Singel_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: const Text("hero 1 "),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
//       here we are passing the value of the product to the product details page
                builder: (context) => ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_picture: prod_pricture,
                      product_detail_old_price: prod_old_price,
                      product_detail_price: prod_price,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        prod_name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                    ),
                    Text(
                      "\$${prod_price}",
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // child: ListTile(
                //   leading: Text(
                //     prod_name,
                //     style: const TextStyle(fontWeight: FontWeight.bold),
                //   ),
                //   title: Text(
                //     "\$$prod_price",
                //     style: const TextStyle(
                //       color: Colors.red,
                //       fontWeight: FontWeight.w800,
                //     ),
                //   ),
                //   subtitle: Text(
                //     "\$$prod_old_price",
                //     style: const TextStyle(
                //       color: Colors.black54,
                //       fontWeight: FontWeight.w800,
                //       decoration: TextDecoration.lineThrough,
                //     ),
                //   ),
                // ),
              ),
              child: Image.asset(
                prod_pricture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
