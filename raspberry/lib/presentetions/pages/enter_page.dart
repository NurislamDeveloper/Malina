import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
import 'package:raspberry/presentetions/constans/logol_style.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Style.colorOfBag,
        body: Padding(
          padding: const EdgeInsets.only(
            left: 140,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/my_home_page');
            },

            ///Navigator.pushNamed(context, '/firstScreen');

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 130,
                  width: 130,
                  child: Card(
                    color: Colors.white,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    child: Image.asset(
                      'assets/malina.png',
                    ),
                  ),
                ),
                // const Gap(
                //   ,
                // ),
                const Text(
                  "MALINA",
                  style: Style.logoStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
