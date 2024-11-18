import 'package:flutter/material.dart';

class RateProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Rate Product",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Action for rewards
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.card_giftcard, color: Colors.black),
                    SizedBox(width: 8.0),
                    Text("Submit your review to get 5 points"),
                    Icon(Icons.chevron_right, color: Colors.black),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  size: 40,
                  color: index < 4 ? Colors.teal : Colors.grey,
                );
              }),
            ),
            const SizedBox(height: 20),

               Center(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(
                     width: 350,
                     height: 100,
                     child: TextField(
                      maxLength:500,
                      decoration: InputDecoration(
                        hintText: "Would you like to write anything about this product?",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                                   ),
                   ),
                 ),
               ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _imageUploadButton(),
                const SizedBox(width: 16),
                _imageUploadButton(),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Submit review action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "Submit Review",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageUploadButton() {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Icon(
        Icons.add_a_photo_outlined,
        color: Colors.grey,
      ),
    );
  }
}
