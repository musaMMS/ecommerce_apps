import 'package:flutter/material.dart';

import 'oderScreen_delevered.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'My Orders',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: 'Pending'),
            Tab(text: 'Delivered'),
            Tab(text: 'Cancelled'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          OrdersListTab(status: 'Pending'),
          OrdersListTab(status: 'Delivered'),
          OrdersListTab(status: 'Cancelled'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Assume "Orders" is the third tab in the navbar
        onTap: (index) {
          // Handle navigation to other tabs
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

class OrdersListTab extends StatelessWidget {
  final String status;

  OrdersListTab({required this.status});

  @override
  Widget build(BuildContext context) {
    // Dummy data for demonstration
    final List<Map<String, String>> orders = [
      {
        'orderNumber': '#1524',
        'trackingNumber': 'IK287368838',
        'quantity': '2',
        'subtotal': '\$110',
        'date': '13/05/2021',
      },
      {
        'orderNumber': '#1524',
        'trackingNumber': 'IK2873218897',
        'quantity': '3',
        'subtotal': '\$230',
        'date': '12/05/2021',
      },
      {
        'orderNumber': '#1524',
        'trackingNumber': 'IK237368820',
        'quantity': '5',
        'subtotal': '\$490',
        'date': '10/05/2021',
      },
    ];

    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Order Number and Date
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order ${order['orderNumber']}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      order['date']!,
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                // Tracking Number
                Text(
                  'Tracking number: ${order['trackingNumber']}',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(height: 5),
                // Quantity and Subtotal
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quantity: ${order['quantity']}',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      'Subtotal: ${order['subtotal']}',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Status and Details Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      status.toUpperCase(),
                      style: TextStyle(
                        color: status == 'Pending'
                            ? Colors.orange
                            : status == 'Delivered'
                            ? Colors.green
                            : Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderdeleverdScreen(status: '',)));
                        // Handle "Details" button action
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: Text(
                        'Details',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
