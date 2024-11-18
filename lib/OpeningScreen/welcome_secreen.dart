
import 'package:ecommerce_apps/widgets/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';


class WelcomeSecreen extends StatelessWidget {
  const WelcomeSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/image 45.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(padding:EdgeInsets.all(8.0),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                  Text('Welcome to GemStore!',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                SizedBox(height: 10,),
                Text('The home for a fashionista',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.8),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                    child: Text('Get Strated ',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 18,
                    ),
                    ),
                ),
                SizedBox(height: 20,),
              ],
            ),
            ),
          ),
        ],
      ),

    );
  }
}
