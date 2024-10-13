import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/backgrond&navbar/navbar.dart';

class Transactions extends StatelessWidget {
  final List<Map<String, String>> hana = [
    {"cat": "amazon", "price": '19.30', "date": 'Tue 8.05.2021'},
    {"cat": "shopping", "price": '29.90', "date": 'Tue 25.05.2021'},
    {"cat": "movie", "price": '9.50', "date": 'Tue 27.05.2021'},
    {"cat": "udemy", "price": '40.00', "date": 'Tue 17.05.2021'},
    {"cat": "udemy", "price": '40.00', "date": 'Tue 17.05.2021'},
    {"cat": "udemy", "price": '40.00', "date": 'Tue 17.05.2021'},
    {"cat": "udemy", "price": '40.00', "date": 'Tue 17.05.2021'},
    {"cat": "udemy", "price": '40.00', "date": 'Tue 17.05.2021'},
    {"cat": "udemy", "price": '40.00', "date": 'Tue 17.05.2021'},
    {"cat": "udemy", "price": '40.00', "date": 'Tue 17.05.2021'},
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Transactions',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(9, 10, 0, 0),
                      child: const Text(
                        '2021',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff858585),
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(0),
                    width: width - 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('JAN'),
                        const Text('FEB'),
                        const Text('MAR'),
                        const Text('APR'),
                        Container(
                          height: 29,
                          width: 48,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Text('MAY',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: hana.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          padding: const EdgeInsets.all(16),
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    hana[index]["cat"]!,
                                    style: const TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: 16,
                                      fontFamily: 'Rubik',
                                    ),
                                  ),
                                  Text(
                                    hana[index]["date"]!,
                                    style: const TextStyle(
                                      color: Color(0xff858585),
                                      fontSize: 14,
                                      fontFamily: 'Rubik',
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                hana[index]["price"]!,
                                style: const TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 16,
                                  fontFamily: 'Rubik',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Navbar(),
    );
  }
}
