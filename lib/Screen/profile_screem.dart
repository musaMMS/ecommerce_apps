import 'package:ecommerce_apps/Screen/profile_setting_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSettingScreen()));
              // Add action for settings icon
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/musavai.png'), // Replace with your avatar image
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Md Musa Alom Mim',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'mdmim018islm@gmail.com',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              // Profile Options List
              Expanded(
                child: ListView(
                  children: [
                    ProfileOption(
                      icon: Icons.location_on,
                      title: 'Address',
                      onTap: () {
                        // Navigate to Address page
                      },
                    ),
                    ProfileOption(
                      icon: Icons.payment,
                      title: 'Payment Method',
                      onTap: () {
                        // Navigate to Payment Method page
                      },
                    ),
                    ProfileOption(
                      icon: Icons.card_giftcard,
                      title: 'Voucher',
                      onTap: () {
                        // Navigate to Voucher page
                      },
                    ),
                    ProfileOption(
                      icon: Icons.favorite_border,
                      title: 'My Wishlist',
                      onTap: () {
                        // Navigate to Wishlist page
                      },
                    ),
                    ProfileOption(
                      icon: Icons.star_border,
                      title: 'Rate this app',
                      onTap: () {
                        // Navigate to Rate App page
                      },
                    ),
                    ProfileOption(
                      icon: Icons.logout,
                      title: 'Log Out',
                      onTap: () {
                        // Log out function
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ProfileOption({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.grey),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
        onTap: onTap,
      ),
    );
  }
}
