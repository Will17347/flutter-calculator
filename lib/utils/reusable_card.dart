import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
   ReusableCard({
   
    required this.color,
    required this.ontap,
    required this.text,
    required this.icon,
    super.key});

 
  final String text;
  final IconData icon;
  final Color color;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 80.0,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),

      )
    );
  }
}