import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:raspberry/presentetions/constans/style_qr.dart';

class CardFirst extends StatelessWidget {
  const CardFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Card(
        color: const Color(
          0xffF72055,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: InkWell(
            onTap: () {},
            child: const Row(
              children: [
                Icon(
                  Icons.qr_code,
                  color: QrStyle.colorOFIconQr,
                  size: 36,
                ),
                Gap(
                  15,
                ),
                Text(
                  "Сканируй QR-код и заказывай\n прямо в заведении",
                  style: QrStyle.colorOFr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
