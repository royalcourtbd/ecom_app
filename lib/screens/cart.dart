import 'package:ecom_app/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Cart',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
