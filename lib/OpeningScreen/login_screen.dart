
import 'package:ecommerce_apps/OpeningScreen/ForgetScreen.dart';
import 'package:ecommerce_apps/widgets/bottomNavigationBar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text('Log into',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20,),
            Text('your account',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email address',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                    },
                    child: Text('Forgot Password?'))
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainBottomNavigationBar()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                  backgroundColor: Colors.black38,
                ),
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'or sign up with',
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.apple, size: 32,),
                  color: Colors.black,
                  onPressed: () {},
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.g_mobiledata, size: 32), // Placeholder icon
                  color: Colors.black,
                  onPressed: () {},
                ),
                SizedBox(width: 20),
                IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.facebook, size: 32), // Placeholder icon
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Navigate to log in screen
                },
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
