import 'package:flutter/material.dart';
import 'package:gradproject/pages/product_details.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_picture
  });


  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Garavoli'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: new ListView(
        children: <Widget> [
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color:Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
            footer: new Container(
              color: Colors.white70,
              child: ListTile(
                leading: new Text(widget.product_detail_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                title: new Row(
                  children: <Widget>[
                    Expanded( child: new Text("\$${widget.product_detail_new_price}", style: TextStyle(color: Colors.blueAccent),),
                    )
                  ],
                ),
              ),
            ),
            
            ),
          ),

          // =============================== the first buttons are here ===
          Row(
            children: <Widget>[
              // ===============  the size button ===========================
              Expanded(
                child: MaterialButton(onPressed: (){
              showDialog(context: context,
              builder: (context){
                return new AlertDialog(
                  title: new Text("Size ") ,
                  content: new Text("Choose the size"),
                  actions: <Widget>[
                    new MaterialButton(onPressed: (){
                      Navigator.of(context).pop(context);

                    },

                    child: new Text("close"),)
                  ],
                );

              } );
                },
                  
                color:Colors.white,
                textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("color ") ,
                          content: new Text("Choose the Color"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);

                            },

                              child: new Text("close"),)
                          ],
                        );

                      } );
                },
                  color:Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("quantity ") ,
                          content: new Text("Choose the Quantity"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);

                            },

                              child: new Text("close"),)
                          ],
                        );

                      } );
                },
                  color:Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Amount")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),

                ),
              ),


            ],
          ),
          Row(
            children: <Widget>[
              // the second button

              Expanded(
                child: MaterialButton(onPressed: (){},
                  color:Colors.blue,
                  textColor: Colors.white,
                  elevation: 0.3,
                  child: new Text("Buy now"),
                ),
              ),
              new IconButton(icon:Icon(Icons.add_shopping_cart), onPressed: (){},)



            ],
          ),
          Divider(color: Colors.blue,),
          new ListTile(

            title: new Text("Product Details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(color: Colors.blue,),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 4.0, 4.0, 4.0),
              child: new Text("Product name", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),)
            ],
          ),

          // REMEMber to add the product brand later
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 4.0, 4.0, 4.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand A"),)
            ],
          ),

          // REMEMber to add to our product condition later
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 4.0, 4.0, 4.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),)
            ],
          )

        ],
      ),
    );
  }
}
