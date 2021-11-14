import 'package:flutter/material.dart';
import 'package:flutter_ecom/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer1",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Blazer2",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Dress1",
      "picture": "images/products/dress1.jpeg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Dress2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Heels1",
      "picture": "images/products/hills1.jpeg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Heels2",
      "picture": "images/products/hills2.jpeg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Pants1",
      "picture": "images/products/pants1.jpg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Pants2",
      "picture": "images/products/pants2.jpeg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Shoe1",
      "picture": "images/products/shoe1.jpg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Skirt1",
      "picture": "images/products/skt1.jpeg",
      "old_price": 180,
      "price": 150,
    },
    {
      "name": "Skirt2",
      "picture": "images/products/skt2.jpeg",
      "old_price": 180,
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
          return SingleProduct(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  SingleProduct(
      {this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductDetails(
                  product_details_name: product_name,
                  product_details_picture: product_picture,
                  product_details_old_price: product_old_price,
                  product_details_price: product_price,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\₹$product_price",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    "\₹$product_old_price",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
