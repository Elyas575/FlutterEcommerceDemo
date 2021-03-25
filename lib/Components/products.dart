import 'package:flutter/material.dart';
import 'package:gradproject/pages/product_details.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "product 1",
      "picture": "images/products/blazer1.jpeg",
      "price": 120,
    },
    {
      "name": "product 2",
      "picture": "images/w1.jpeg",
      "price": 150,
    },
    {
      "name": "product 3",
      "picture": "images/w3.jpeg",
      "price": 150,
    },
    {
      "name": "product 4",
      "picture": "images/w4.jpeg",
      "price": 150,
    },
    {
      "name": "product 5",
      "picture": "images/products/blazer2.jpeg",
      "price": 150,
    },
    {
      "name": "product 6",
      "picture": "images/products/dress1.jpeg",
      "price": 150,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
              product_name: product_list[index]['name'],
              product_picture: product_list[index]['picture'],
              product_price: product_list[index]['price']);
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;

  Single_product({
    this.product_name,
    this.product_picture,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap:()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductDetails(
              // here we are passing the values of the product to the product details page
              product_detail_name: product_name,
              product_detail_new_price: product_price,
              product_detail_picture: product_picture,
            ) )),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text("\$$product_price", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w800), ),
                  ),

                ),
                child: Image.asset(
                  product_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
