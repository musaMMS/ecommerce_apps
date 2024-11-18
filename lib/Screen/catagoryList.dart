import 'package:ecommerce_apps/Screen/catagorystyle.dart';
import 'package:flutter/material.dart';

class catagoryTextName extends StatelessWidget {
  const catagoryTextName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            ),
            child: CategoryTab(icon: Icons.female, label: 'Women')),
        SizedBox(width: 10,),
        ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            ),
            child: CategoryTab(icon: Icons.female, label: 'Women')),
        ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            ),
            child: CategoryTab(icon: Icons.female, label: 'Women')),
        SizedBox(width: 10,),
        ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            ),
            child: CategoryTab(icon: Icons.female, label: 'Women')),
        SizedBox(width: 10,),
      ],
    );
  }
}