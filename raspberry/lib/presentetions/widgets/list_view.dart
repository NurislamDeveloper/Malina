import 'package:flutter/material.dart';

class ListOfPRoducts extends StatelessWidget {
  const ListOfPRoducts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) {
        return const  SizedBox(
          height: 30,
          width: 30,
          child: Card(
            color: Colors.grey,
            
            ),
        );
      },
    );
  }
}
