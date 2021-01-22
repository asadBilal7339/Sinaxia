import 'package:flutter/material.dart';
import 'package:sinaxia_app/constants.dart';
import 'chart_constant.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarChart extends StatelessWidget {
  final List<FilePerDay> data;
  BarChart({@required this.data});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    List<charts.Series<FilePerDay, String>> series = [
      charts.Series(
        id: 'Files',
        data: data,
        domainFn: (FilePerDay series, _) => series.days,
        measureFn: (FilePerDay series, _) => series.numberOfFiles,
        colorFn: (FilePerDay series, _) => series.barColor
      )
    ];
    return Container(
        height: width*0.75,
        width: width*0.85,
        padding: EdgeInsets.only(
          top: width*0.04, 
          left: width*0.03, 
          right: width*0.01, 
          bottom: width*0.01,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Dossiers Par Mois', 
        style: TextStyle(
          fontSize: 16, 
          fontWeight: FontWeight.w700, 
          color: blue,
          ),
        ),
      Expanded(
        child: charts.BarChart(
          series, 
          animate: true,
          defaultInteractions: true,
          barGroupingType: charts.BarGroupingType.grouped,
          defaultRenderer: charts.BarRendererConfig(
            cornerStrategy: const charts.ConstCornerStrategy(5),
            groupingType: charts.BarGroupingType.grouped,
          ),
          primaryMeasureAxis: charts.NumericAxisSpec(
            tickProviderSpec: charts.BasicNumericTickProviderSpec(
              desiredTickCount: 6
            ),
            renderSpec: charts.SmallTickRendererSpec(
              labelStyle: charts.TextStyleSpec(
                color: charts.ColorUtil.fromDartColor(blue),
                fontSize: 10,
              ),
            axisLineStyle: charts.LineStyleSpec(
              thickness: 1,
              color: charts.ColorUtil.fromDartColor(blue),
            ),  
            ),
            showAxisLine: true,
          ),
          domainAxis: charts.OrdinalAxisSpec(
            renderSpec: charts.SmallTickRendererSpec(
              labelStyle: charts.TextStyleSpec(
                color: charts.ColorUtil.fromDartColor(blue),
                fontSize: 10,
              ),
            axisLineStyle: charts.LineStyleSpec(
              thickness: 1,
              color: charts.ColorUtil.fromDartColor(blue),
            ),  
            ),
            showAxisLine: true,
          ),
        ),
      ),
    ],
      ),
    );
  }
} 


class ShowBarChart extends StatelessWidget {
    final List<FilePerDay> data = [
      FilePerDay(
        days: 'Mon',
        numberOfFiles: 60,
        barColor: charts.ColorUtil.fromDartColor(orange),
      ),
      FilePerDay(
        days: 'Tue',
        numberOfFiles: 80,
        barColor: charts.ColorUtil.fromDartColor(orange),
      ),
      FilePerDay(
        days: 'Wed',
        numberOfFiles: 40,
        barColor: charts.ColorUtil.fromDartColor(orange),
      ),
      FilePerDay(
        days: 'Thu',
        numberOfFiles: 70,
        barColor: charts.ColorUtil.fromDartColor(orange),
      ),
      FilePerDay(
        days: 'Fri',
        numberOfFiles: 88,
        barColor: charts.ColorUtil.fromDartColor(orange),
      ),
      FilePerDay(
        days: 'Sat',
        numberOfFiles: 75,
        barColor: charts.ColorUtil.fromDartColor(orange),
      ),
      FilePerDay(
        days: 'Sun',
        numberOfFiles: 50,
        barColor: charts.ColorUtil.fromDartColor(orange),
      ),

    ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BarChart(data: data),
    );
  }
}