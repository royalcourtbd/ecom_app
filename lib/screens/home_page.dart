import 'dart:async';

import 'package:ecom_app/model/product_model.dart';
import 'package:ecom_app/screens/cart.dart';
import 'package:ecom_app/screens/products_details.dart';
import 'package:ecom_app/util/bottom_nav_bar.dart';
import 'package:ecom_app/widgets/feature_product.dart';
import 'package:ecom_app/widgets/products_item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final products = [
    Products(
      image: 'images/watch1.png',
      isFavorite: false,
      price: 15.0,
      title: 'Apple Watch',
    ),Products(
      image: 'images/Shoes.png',
      isFavorite: false,
      price: 15.0,
      title: 'Adidas Shoes',
    ),
    Products(
        image: 'images/watch.png',
        isFavorite: false,
        price: 38.0,
        title: 'Smart Watch'),
    Products(
        image: 'images/mac.png',
        isFavorite: false,
        price: 135.0,
        title: 'Mac Mini'),
    Products(
        image: 'images/headphn.png',
        isFavorite: false,
        price: 18.0,
        title: 'Headphones'),
  ];
  late DateTime _dateTime;

  // _getDateTime() {
  //   setState(() {
  //     _dateTime = DateTime.now();
  //   });
  // }
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //
  // }
  //
  // @override
  // void initState() {
  //   _getDateTime();
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 1), (_) => _getDateTime());
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              //width: 355,
              alignment: Alignment.center,
              height: 60,
              //color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 300,
                    //color: Colors.green,
                    child: TextField(
                      autocorrect: true,
                      keyboardType: TextInputType.text,
                      style: TextStyle(decorationColor: Colors.amber),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),

                        //alignLabelWithHint: true,

                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      //color: Colors.blue,
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    height: 45,
                    width: 45,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //color: Colors.blue,
              height: 165,
              //width: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: banner.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                    child: Container(
                      //padding: EdgeInsets.all(20),
                      // height: 160,
                      width: 350,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0.06,
                            blurRadius: 7,
                            offset: Offset.fromDirection(1, 1),
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage(
                              banner[index],
                            ),
                            fit: BoxFit.fill),
                        //color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 6, right: 16),
              child: Container(
                height: 50,
                //color: Colors.blueGrey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.blue,
                      width: 170,
                      child: Text(
                        'Flash Sale',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      'Closing in: ',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w200),
                    ),
                    Container(
                      height: 27,
                      width: 27,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      // child: Text(
                      //   _dateTime.hour.toString(),
                      //   style: TextStyle(
                      //       fontSize: 16, fontWeight: FontWeight.w500),
                      // ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 27,
                      width: 27,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      // child: Text(
                      //   _dateTime.minute.toString(),
                      //   style: TextStyle(
                      //       fontSize: 16, fontWeight: FontWeight.w500),
                      // ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      height: 27,
                      width: 27,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      // child: Text(
                      //   _dateTime.second.toString(),
                      //   style: TextStyle(
                      //       fontSize: 16, fontWeight: FontWeight.w500),
                      // ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 3,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Container(
                    //color: Colors.blue,
                    height: 220,
                    width: 350,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, index) => FeatureProducts(products[index]),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
              child: Container(
                child: Text(
                  'Recently Viewed',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1 / 1.3,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) => ItemWidget(products[index]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavBar(),
    );
  }
}
