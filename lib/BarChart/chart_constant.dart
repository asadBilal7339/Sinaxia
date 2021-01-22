import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class FilePerDay{
  final String days;
  final int numberOfFiles;
  final charts.Color barColor;  
  FilePerDay({
    @required this.days, 
    @required this.numberOfFiles, 
    @required this.barColor, 
  });
}