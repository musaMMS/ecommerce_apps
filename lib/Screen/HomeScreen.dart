
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onCategoryTap(String category) {
    print("Tapped on: $category");
    // Add navigation or any other logic based on the category
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GemStore'),
        backgroundColor: Colors.black12,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),

      drawer:Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Md Musa Alom Mim"),
                accountEmail: Text("mim018islam@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/mask3.png"),
                  //// Replace with your avatar image
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Homepage"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Discover"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("My Order"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("My Profile"),
                onTap: () {},
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "OTHER",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.support),
                title: Text("Support"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About Us"),
                onTap: () {},
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Light"),
                    Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text("Dark"),
                  ],
                ),
              ),
            ],
          ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category Tabs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCategoryButton("Women", Icons.female),
                  _buildCategoryButton("Men", Icons.male),
                  _buildCategoryButton("Accessories", Icons.mail),
                  _buildCategoryButton("Beauty", Icons.brush),
                ],
              ),
              SizedBox(height: 20),

              // Banner Swiper
              BannerSwiper(),

              SizedBox(height: 20),

              // Feature Products
              SectionTitle(title: 'Feature Products'),
              SizedBox(height: 10),
              FeatureImageList(),

              SizedBox(height: 20),

              // Recommended Section
              SectionTitle(title: 'Recommended'),
              SizedBox(height: 10),
              RecommendedImageList(),

              SizedBox(height: 20),

              // Top Collection Banner
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow:[ BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                  offset: Offset(0, 4),
                  ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sale up to 40%',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8,),
                          Text('For Slim & Beauty', style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.4,
                      child: Image.asset(
                        'assets/images/banner11.png',
                        width:300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow:[ BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sale up to 40%',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                          ),
                          SizedBox(height: 8,),
                          Text('For Slim & Beauty', style: TextStyle(fontSize: 16,color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.4,
                      child: Image.asset(
                        'assets/images/banner2.png',
                        fit: BoxFit.cover,
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow:[ BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                  ],
                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Expanded(
                         child: Image.asset(
                           // width: MediaQuery.of(context).size.width*0.4,
                            'assets/images/banner 3.png',
                            fit: BoxFit.cover,
                          ),
                       ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/banner 4.png',
                          fit: BoxFit.cover,
                        ),
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
  // Category Button
  Widget _buildCategoryButton(String label, IconData icon) {
    return InkWell(
      onTap: () => _onCategoryTap(label),
      child: Column(
        children: [
          Icon(icon, size: 30, color: Colors.black),
          SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}

// Banner Swiper Widget
class BannerSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        children: [
          BannerItem(imageUrl: 'assets/images/mask11.png'),
          BannerItem(imageUrl: 'assets/images/banner2.png'),
          BannerItem(imageUrl: 'assets/images/banner3.png'),
        ],
      ),
    );
  }
}
// Feature Product List Widget
class FeatureImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        child: Row(
          children: [
            ProductItem(imageUrl: 'assets/images/mask1.png', name: 'Turtleneck Sweater',price: 39.99),
            ProductItem(imageUrl: 'assets/images/mask3.png', name: 'Long Sleeve Dress', price: 45.00),
            ProductItem(imageUrl: 'assets/images/mask2.png', name: 'Long Sleeve Dress', price: 45.00),
            ProductItem(imageUrl: 'assets/images/mask3.png', name: 'Long Sleeve Dress', price: 45.00),
            ProductItem(imageUrl: 'assets/images/mask3.png', name: 'Long Sleeve Dress', price: 45.00),
            ProductItem(imageUrl: 'assets/images/mask22.png', name: 'Sportswear', price: 80.00),
          ],
        ),
      ),
    );
  }
}
// Recommended Product List Widget
class RecommendedImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductItem(imageUrl: 'assets/images/mask3.png',
              name: 'White fashion hoodie',
              price: 29.00),
          ProductItem(imageUrl: 'assets/images/mask2.png',
              name: 'Cotton T-shirt',
              price: 30.00),
          ProductItem(imageUrl: 'assets/images/mask2.png',
              name: 'Cotton T-shirt',
              price: 30.00),
          ProductItem(imageUrl: 'assets/images/mask2.png',
              name: 'Cotton T-shirt',
              price: 30.00),
          ProductItem(imageUrl: 'assets/images/mask2.png',
              name: 'Cotton T-shirt',
              price: 30.00),
        ],
      ),
    );
  }
}
// Banner Item Widget
class BannerItem extends StatelessWidget {

  final String imageUrl;

  BannerItem({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Section Title Widget
class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text('Show all', style: TextStyle(color: Colors.pink)),
      ],
    );
  }
}

// Product Item Widget
class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;

  ProductItem({required this.imageUrl, required this.name, required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Image.asset(imageUrl, height: 227,
              fit: BoxFit.cover),
          SizedBox(height: 20),
          Text(name,style: TextStyle(fontSize: 14)),
          Text('\$${price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 14, color: Colors.pink),
          ),
        ],
      ),
    );
  }
}
