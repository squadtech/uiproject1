import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:uiproject/graphmodel.dart';
import 'package:uiproject/profilechart.dart';

class ChartScreen1 extends StatelessWidget {
  final List<SubscriberSeries> data=[

    SubscriberSeries(
        year: 'Education',
        subscribers: 3,
        barColor: charts.ColorUtil.fromDartColor(Colors.redAccent)
    ),
    SubscriberSeries(
        year: 'Media',

        subscribers: 9,
        barColor: charts.ColorUtil.fromDartColor(Colors.orangeAccent)
    ),
    SubscriberSeries(
        year: 'Entertainment',
        subscribers: 7,
        barColor: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent)
    ),
    SubscriberSeries(
        year: 'Music',
        subscribers: 3,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    SubscriberSeries(
        year: 'Gamer',
        subscribers: 1,
        barColor: charts.ColorUtil.fromDartColor(Colors.pinkAccent)
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: SubscriberChart(data: data),
      ),
    );
  }
}
