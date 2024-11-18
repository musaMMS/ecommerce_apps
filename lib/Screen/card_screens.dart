import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
   CardImage({super.key});
   final List<String> cardTitles = [
     'Card 1 Title',
     'Card 2 Title',
     'Card 3 Title',
   ];
  final List<String> _bannerImages = [
    'assets/images/mask11.png',
    'assets/images/mask2.png',
    'assets/images/mask3.png',


  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: cardTitles.length,
        itemBuilder: (context,index){
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(_bannerImages[index],
                  fit: BoxFit.cover,
                  height: 150,
                  width: double.infinity,
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: Text(
                    cardTitles[index],
                    style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}
