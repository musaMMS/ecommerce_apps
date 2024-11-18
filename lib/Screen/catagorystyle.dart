import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  CategoryTab({required this.icon, required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Icon(icon, color: isSelected ? Colors.black : Colors.grey, size: 30),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}