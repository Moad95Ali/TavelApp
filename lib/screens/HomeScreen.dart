import 'package:bookingapp/screens/hotel_screem.dart';
import 'package:bookingapp/screens/tickets_view.dart';
import 'package:bookingapp/u/app_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Wellcome', style: Style.headLineStyle3),
                          const SizedBox(height: 5),
                          Text(
                            'Booking Ticket',
                            style: Style.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage('images/BeTravel.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 370,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 209, 197),
                            borderRadius: BorderRadius.circular(8)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.search,
                              color: Color(0x803b3b3b),
                            ),
                            Text('Search', style: Style.headLineStyle4)
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Uncoming Flights',
                        style: Style.headLineStyle2,
                      ),
                      InkWell(
                        onTap: () {
                          print('You are tapped');
                        },
                        child: Text(
                          'View all',
                          style: Style.textStyle,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
                padding: EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    TicketView(),
                    TicketView(),
                  ],
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hotels',
                    style: Style.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () {
                      print('You are tapped');
                    },
                    child: Text(
                      'View all',
                      style: Style.textStyle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  HotelScreen(),
                  SizedBox(
                    width: 10,
                  ),
                  HotelScreen(),
                ],
              ),
            )
          ],
        ));
  }
}
