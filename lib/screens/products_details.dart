import 'package:ecom_app/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductsDetails extends StatelessWidget {
  final Products products;
  ProductsDetails(this.products);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(products.image),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              alignment: Alignment.topRight,
              height: 150,
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'US \$'+products.price.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.favorite_outline,size: 30,),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text(products.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
