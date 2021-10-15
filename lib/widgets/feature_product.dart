import 'package:ecom_app/model/product_model.dart';
import 'package:ecom_app/screens/products_details.dart';
import 'package:flutter/material.dart';

class FeatureProducts extends StatefulWidget {
  final Products products;

  FeatureProducts(this.products);
  @override
  _FeatureProductsState createState() => _FeatureProductsState();
}

class _FeatureProductsState extends State<FeatureProducts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductsDetails(widget.products),));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(13.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white60,
                spreadRadius: 0.06,
                blurRadius: 7,
                offset: Offset.fromDirection(1, 1),
              ),
              BoxShadow(
                spreadRadius: -0.06,
                blurRadius: 7,
                offset: Offset.fromDirection(-1, -1),
              ),
            ],
          ),
          //height: 180,
          width: 165,
          //color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(widget.products.image),
                  height: 139,
                  width: 165,
                  fit: BoxFit.fill,
                ),
                Text(
                  widget.products.title,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  '\$' + widget.products.price.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
