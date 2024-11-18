import 'dart:async';

import 'package:ecommerce_apps/OpeningScreen/create_new_password.dart';
import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatefulWidget {
  @override
  _VerificationCodeScreenState createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  int _secondsRemaining = 10;
  bool _isResendEnabled = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    setState(() {
      _secondsRemaining = 10;  // Set initial countdown time
                 _isResendEnabled = false;
    });

    // Initialize the timer for countdown
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _isResendEnabled = true;
          _timer?.cancel(); // Stop the timer when countdown reaches 0
        }
      });
    });
  }

  @override
  void dispose() {
    // Dispose of the timer when not needed to avoid memory leaks
    _timer?.cancel();
    super.dispose();
  }

  void _resendCode() {
    if (_isResendEnabled) {
      _startTimer(); // Restart the timer
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              'Verification code',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Please enter the verification code we sent to your email address',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(5, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 24),
            Center(
              child: TextButton(
                onPressed: _isResendEnabled ? _resendCode : null,
                child: Text(
                  _isResendEnabled
                      ? 'Resend Code'
                      : 'Resend in 00:${_secondsRemaining.toString().padLeft(2, '0')}',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateNewPasswordScreen()));
            }, child: Text('Confirm',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
            ))
          ],
        ),
      ),
    );
  }
}