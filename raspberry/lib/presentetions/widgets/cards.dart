import 'package:flutter/material.dart';
import 'package:raspberry/presentetions/constans/cards_style.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({
    super.key,
    required this.image,
    required this.firstText,
    required this.secondText,
  });
  final String image;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: Card(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Image.asset(image),
                ),
                Positioned(
                  top: 10,
                  left: 15,
                  right: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        firstText,
                        style:Cards.constancStyle ,
                      ),
                      Text(
                        secondText,
                        style:Cards.colorOfSecondText ,
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}