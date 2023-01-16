import 'package:bookingapp/screens/app_layout.dart';
import 'package:bookingapp/u/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.8,
      height: size.height * 0.25,
      child: Column(
        children: [
          Container(
            height: size.height * 0.25,
            decoration: BoxDecoration(
                color: Style.primaryColor,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'images/hotel1.jpg',
                    ))),
          )
        ],
      ),
    );
  }
}
