import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:uiproject/graphmodel.dart';
import 'package:uiproject/profilechart.dart';

class ChartScreen extends StatelessWidget {
  final List<SubscriberSeries> data=[

    SubscriberSeries(
        year: 'mon',
        subscribers: 320,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    SubscriberSeries(
        year: 'tue',
        subscribers: 300,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    SubscriberSeries(
        year: 'wed',
        subscribers: 200,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    SubscriberSeries(
        year: 'thr',
        subscribers: 170,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    SubscriberSeries(
        year: 'fri',
        subscribers: 100,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    SubscriberSeries(
        year: 'sat',
        subscribers: 200,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
    ),
    SubscriberSeries(
        year: 'sun',
        subscribers: 50,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)
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
