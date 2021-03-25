import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "product 1",
      "picture": "images/products/blazer1.jpeg",
      "price": 120,
      "size": "B",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "product 3",
      "picture": "images/w3.jpeg",
      "price": 70,
      "size": "M",
      "color": "blue",
      "quantity": 1,
    },


  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index){
        return Single_cart_product(
          cart_product_name: Products_on_the_cart[index]["name"],
          cart_product_color: Products_on_the_cart[index]["color"],
          cart_product_quantity: Products_on_the_cart[index]["quantity"],
          cart_product_size: Products_on_the_cart[index]["size"],
          cart_product_price: Products_on_the_cart[index]["price"],
          cart_product_picture: Products_on_the_cart[index]["picture"],
        );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  Single_cart_product({
    this.cart_product_name,
    this.cart_product_color,
    this.cart_product_price,
    this.cart_product_picture,
    this.cart_product_quantity,
    this.cart_product_size,
});



  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_product_picture, width: 100 , height: 100.0),
        title: new Text(cart_product_name),
        subtitle: new Column(
          children: <Widget>[

            // this section is for the size of the product
            new Row(
              children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: new Text("Size: "),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(cart_product_size, style: TextStyle(color: Colors.red)),
                ),
                // ===================== this section is for product color ======
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 9.0, 9.0, 9.0),
                  child: new Text("Color: "),),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: new Text(cart_product_color, style: TextStyle(color: Colors.red) ),
                ),
// ================ this section is the product price ================
              ],
            ),
           new Container(
             alignment: Alignment.topLeft,
             child: new Text("\$${cart_product_price}", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.red),
             ),
           )
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
              new Text("1"),
              new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
            ],
          ),
        ),

      ),
    );
  }
}

