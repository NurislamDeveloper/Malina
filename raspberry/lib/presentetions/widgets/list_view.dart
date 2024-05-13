import 'package:flutter/material.dart';
import 'package:raspberry/presentetions/constans/pros.dart';
import 'package:raspberry/presentetions/constans/style_qr.dart';

class ListOfPRoducts extends StatelessWidget {
  const ListOfPRoducts({super.key, required this.color, required this.text, required this.imagess, });
  final Color color;
  final String text;
  final String imagess;
  
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: 120,
      height: 100,
      child: Card(
        color: color,
        child: Stack(
          children: [
            SizedBox(
              height: 100,
              width: 120,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Image.asset(
                  imagess,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(child: Text(text,style: Pros.colorOfPros)),
          ],
        ),
      ),
    );
  }
}
