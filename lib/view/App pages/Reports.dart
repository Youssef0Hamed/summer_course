import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/backgrond&navbar/navbar.dart';

// Reports Screen with Both Chart and Report List
class Reports extends StatelessWidget {
  Reports({super.key});

  final List<Map<String, String>> hana = [
    {"cat": "In Budget", "price": '50.00/ 100.00', "date": 'Shopping '},
    {
      "cat": "Out of Budget",
      "price": 'Subscriptions',
      "date": '50.00/ 100.00 '
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 43,
                  width: 43,
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/youssef.jpg'),
                  ),
                ),
                const SizedBox(width: 110),
                const Text(
                  "Reports",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 156,
                  height: 80,
                  margin: const EdgeInsets.all(16.0),
                  padding: EdgeInsets.fromLTRB(10, 12, 0, 8),
                  decoration: BoxDecoration(
                    color: Color(0xffF8E192),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Money In',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '- \$3,456.98',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.purple,
                            size: 16.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 80,
                  margin: const EdgeInsets.all(16.0),
                  padding: EdgeInsets.fromLTRB(10, 12, 0, 8),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Money Out',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '- \$567.25',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.purple,
                            size: 16.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 100,
                ),
                Center(
                  child: Container(
                    width: 350,
                    height: 327,
                    child: BarChart(
                      BarChartData(
                        barGroups: List.generate(6, (index) {
                          final values = [400, 500, 300, 200, 500, 300];
                          return BarChartGroupData(
                            x: index,
                            barRods: [
                              BarChartRodData(
                                toY: values[index].toDouble(),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFB8C1EC),
                                    Color(0xFFFBCCE7)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                            ],
                          );
                        }),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 50,
                              getTitlesWidget: (value, meta) {
                                const style = TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                );
                                switch (value.toInt()) {
                                  case 0:
                                    return const Text('JAN', style: style);
                                  case 1:
                                    return const Text('FEB', style: style);
                                  case 2:
                                    return const Text('MAR', style: style);
                                  case 3:
                                    return const Text('APR', style: style);
                                  case 4:
                                    return const Text('MAY', style: style);
                                  case 5:
                                    return const Text('JUN', style: style);
                                  default:
                                    return const Text('');
                                }
                              },
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 40,
                              interval: 100,
                              getTitlesWidget: (value, meta) {
                                return Text('${value.toInt()}',
                                    style:
                                        const TextStyle(color: Colors.black));
                              },
                            ),
                          ),
                        ),
                        gridData: const FlGridData(show: true),
                        borderData: FlBorderData(show: false),
                        barTouchData: BarTouchData(
                          enabled: true,
                          touchTooltipData: BarTouchTooltipData(),
                        ),
                        maxY: 600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: hana.length,
                itemBuilder: (context, index) {
                  final item = hana[index];
                  return Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffD1ECF7),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        padding: const EdgeInsets.all(16),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["cat"]!,
                                  style: const TextStyle(
                                    color: Color(0xff333333),
                                    fontSize: 16,
                                    fontFamily: 'Rubik',
                                  ),
                                ),
                                Text(
                                  item["date"]!,
                                  style: const TextStyle(
                                    color: Color(0xff858585),
                                    fontSize: 14,
                                    fontFamily: 'Rubik',
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              item["price"]!,
                              style: const TextStyle(
                                color: Color(0xff333333),
                                fontSize: 16,
                                fontFamily: 'Rubik',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const Navbar(),
    );
  }
}
