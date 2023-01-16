import 'package:bookingapp/u/app_style.dart';
import 'package:bookingapp/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'app_layout.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.8,
      height: 180,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('NYC',
                          style: Style.headLineStyle3
                              .copyWith(fontSize: 16, color: Colors.white)),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  11,
                                  (index) => const Text(
                                        '-',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.44,
                              child: const Icon(
                                Icons.flight,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text('LDN',
                          style: Style.headLineStyle3
                              .copyWith(fontSize: 16, color: Colors.white)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'New-York',
                            style: Style.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '8H 30M',
                                style: Style.headLineStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 56,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'London',
                                style: Style.headLineStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
                color: Style.orangeColor,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ))),
                    ),
                    Expanded(
                      child: Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        direction: Axis.horizontal,
                        children: List.generate(
                          17,
                          (index) => const Text(
                            '-',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ))),
                    ),
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  color: Style.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 May',
                            style: Style.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Date',
                            style: Style.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '08:00 AM',
                            style: Style.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Departure Time',
                            style: Style.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '23',
                            style: Style.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Novmbuer',
                            style: Style.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
