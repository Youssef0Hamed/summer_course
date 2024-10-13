import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/backgrond&navbar/Background.dart';
import 'package:flutter_application_4/view/backgrond&navbar/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> hana = [
      {"cat": "amazon", "price": '19.30', "date": 'Tue 8.05.2021'},
      {"cat": "shopping", "price": '29.90', "date": 'Tue 25.05.2021'},
      {"cat": "movie", "price": '9.50', "date": 'Tue 27.05.2021'},
      {"cat": "udemy", "price": '40.00', "date": 'Tue 17.05.2021'}
    ];

    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Background(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(24, 75, 10, 10),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/youssef.jpg'),
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Youssef',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                height: 197,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      height: 108,
                      width: width - 24,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(16, 21, 0, 0),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Current Balance',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'LE 125670.25',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xff133FDB), Color(0xffB7004D4D)],
                        ),
                      ),
                      height: 88,
                      width: width - 24,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(24, 12, 24, 24),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '3452 1235 7894 1678',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '05/2025',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(left: 24),
                child: const Text(
                  'LAST transaction',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: hana.map((transaction) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction["cat"]!,
                              style: const TextStyle(
                                color: Color(0xff333333),
                                fontSize: 16,
                                fontFamily: 'Rubik',
                              ),
                            ),
                            Text(
                              transaction["date"]!,
                              style: const TextStyle(
                                color: Color(0xff858585),
                                fontSize: 14,
                                fontFamily: 'Rubik',
                              ),
                            ),
                          ],
                        ),
                        Text(
                          transaction["price"]!,
                          style: const TextStyle(
                            color: Color(0xff333333),
                            fontSize: 16,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: Navbar(),
      ),
    );
  }
}
