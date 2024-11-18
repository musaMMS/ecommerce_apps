import 'package:ecommerce_apps/Screen/productCard.dart';
import 'package:flutter/material.dart';

Widget buildproductlist() {
  return
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: EdgeInsets.all(16),
                children: [
                  ProductCard(
                    imageUrl: 'assets/black_sweater.jpg',
                    title: 'Black Sweater',
                    price: 30.00,
                  ),
                  ProductCard(
                    imageUrl: 'assets/long_sleeve_dress.jpg',
                    title: 'Long Sleeve Dress',
                    price: 45.00,
                  ),
                  ProductCard(
                    imageUrl: 'assets/sportwear_set.jpg',
                    title: 'Sportwear Set',
                    price: 80.00,
                  ),
                  // Add more ProductCards here
                ],
                  ),
            ],
          ),
        );
}