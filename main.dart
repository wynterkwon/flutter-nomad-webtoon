// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currencycart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 47, 40, 40),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('Hi, Ellie!',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 38,
                                    fontWeight: FontWeight.w600)),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'total balance',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$5,194,482',
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        MyButton(
                            text: 'Transfer',
                            bgColor: Color(0XFFF1B33B),
                            textColor: Colors.black),
                        MyButton(
                            text: 'Request',
                            bgColor: Color(0x0ff1b33b),
                            textColor: Colors.white),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end, // 글자 정렬
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CurrencyCard(
                        name: 'Euro',
                        code: 'EUR',
                        amount: '6, 428',
                        icon: Icons.euro_rounded,
                        isInverted: false,
                        order: 1),
                    CurrencyCard(
                      name: 'Bitcoin',
                      code: 'BTC',
                      amount: '9, 978',
                      icon: Icons.currency_bitcoin_rounded,
                      isInverted: true,
                      order: 1,
                    ),
                    CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '428',
                      icon: Icons.attach_money_outlined,
                      isInverted: false,
                      order: 1,
                    ),
                  ],
                ),
              ),
            )));
  }
}
