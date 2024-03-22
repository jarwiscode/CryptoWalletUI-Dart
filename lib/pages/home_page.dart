// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/list_tile.dart';
import 'package:flutter_application_1/util/my_button.dart';
import 'package:flutter_application_1/util/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], 
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on, 
          color: Colors.white,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 25),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: (){}, 
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children : [
                  Row(
                    children: [
                      Text(
                    'My',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(
                    ' Cards',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                    ),
                    ],
                  ),
                    Container(
                      padding: EdgeInsets.all(8 ),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle
                        ),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            
            SizedBox(height: 25),

            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5300.20,
                    cardNumber: 99005500,
                    expiryMonth: 10,
                    expiryYear: 28,
                    color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    balance: 3200.20,
                    cardNumber: 99005555,
                    expiryMonth: 10,
                    expiryYear: 25,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 3200.20,
                    cardNumber: 99550099,
                    expiryMonth: 10,
                    expiryYear: 27,
                    color: Colors.red[300],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller, 
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    iconImagePath: 'lib/icons/send-money.png',
                    buttonText: 'Send',
                  ),
              
                  MyButton(
                    iconImagePath: 'lib/icons/credit-card.png',
                    buttonText: 'Pay',
                  ),
              
                  MyButton(
                    iconImagePath: 'lib/icons/bill.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  MyListTile(
                    iconImagePath: 'lib/icons/statistics.png', 
                    tileTitle: 'Statistics',
                    tileSubTitle: 'Payment and Income', 
                  ),

                  MyListTile(
                    iconImagePath: 'lib/icons/card-payment.png', 
                    tileTitle: 'Transaction',
                    tileSubTitle: 'Transaction history', 
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
