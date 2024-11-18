import 'package:ecommerce_apps/Screen/oder_rate_screen.dart';
import 'package:flutter/material.dart';

class OrderdeleverdScreen extends StatelessWidget {
  final String status; // Can be 'Pending', 'Delivered', or 'Cancelled'

  OrderdeleverdScreen({required this.status});

  @override
  Widget build(BuildContext context) {
    // Get status color and message
    Color statusColor;
    String statusMessage;

    switch (status) {
      case 'Delivered':
        statusColor = Colors.black;
        statusMessage = "Your order is delivered.\nRate product to get 5 points for collect.";
        break;
      case 'Pending':
        statusColor = Colors.orange;
        statusMessage = "Your order is pending.\nPlease wait for delivery updates.";
        break;
      case 'Cancelled':
        statusColor = Colors.red;
        statusMessage = "Your order has been cancelled.\nContact support for more details.";
        break;
      default:
        statusColor = Colors.grey;
        statusMessage = "Status unknown.";
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Order #1514',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Status Banner
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.local_shipping, color: statusColor),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      statusMessage,
                      style: TextStyle(color: statusColor, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Order Details Section
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  orderDetailRow('Order number', '#1514'),
                  orderDetailRow('Tracking Number', 'IK987362341'),
                  orderDetailRow('Delivery address', 'SBI Building, Software Park'),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Product Details Section
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  productRow('Maxi Dress', 'x1', '\$68.00'),
                  productRow('Linen Dress', 'x1', '\$52.00'),
                  Divider(),
                  productRow('Sub Total', '', '\$120.00'),
                  productRow('Shipping', '', '\$0.00'),
                  Divider(),
                  productRow('Total', '', '\$120.00', isBold: true),
                ],
              ),
            ),
            Spacer(),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigate to home
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text(
                      'Return home',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RateProductPage()));
                      // Trigger rating or related action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text(
                      'Rate',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget orderDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Colors.grey, fontSize: 14)),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget productRow(String title, String quantity, String price, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          if (quantity.isNotEmpty)
            Expanded(
              flex: 1,
              child: Text(
                quantity,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          Expanded(
            flex: 1,
            child: Text(
              price,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

