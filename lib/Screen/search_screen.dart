import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Discover',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Stack(
              children: [
                const Icon(Icons.notifications, color: Colors.black),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      hintText: 'Search',
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(Icons.tune, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Clothing Section
            _buildCategorySection(
              context,
              title: 'CLOTHING',
              backgroundColor: const Color(0xFFB3B9AB),
              imagePath: 'assets/images/Frame 33148.png', // Replace with your asset path
            ),
            const SizedBox(height: 20),

            // Subcategories List
            _buildSubCategoryItem('Jacket', 128),
            _buildSubCategoryItem('Skirts', 40),
            _buildSubCategoryItem('Dresses', 36),
            _buildSubCategoryItem('Sweaters', 24),
            _buildSubCategoryItem('Jeans', 14),
            _buildSubCategoryItem('T-Shirts', 12),
            _buildSubCategoryItem('Pants', 9),
            const SizedBox(height: 20),

            // Accessories Section
            _buildCategorySection(
              context,
              title: 'ACCESSORIES',
              backgroundColor: const Color(0xFF918E8C),
              imagePath: 'assets/images/Frame 33149.png', // Replace with your asset path
            ),
            const SizedBox(height: 20),

            // Shoes Section
            _buildCategorySection(
              context,
              title: 'SHOES',
              backgroundColor: const Color(0xFF45565E),
              imagePath: 'assets/images/Frame 33123.png', // Replace with your asset path
            ),
            const SizedBox(height: 20),

            // Collection Section
            _buildCategorySection(
              context,
              title: 'COLLECTION',
              backgroundColor: const Color(0xFFC5B5B5),
              imagePath: 'assets/images/Frame 33124.png', // Replace with your asset path
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySection(
      BuildContext context, {
        required String title,
        required Color backgroundColor,
        required String imagePath,
      }) {
    return Container(
      height: 100, // Adjust height as needed
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.3), // Add overlay if needed
                colorBlendMode: BlendMode.darken, // Blend mode for overlay
              ),
            ),
          ),

          // Foreground Content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildSubCategoryItem(String title, int count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            '$count Items',
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}