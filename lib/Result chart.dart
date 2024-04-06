import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:intl/intl.dart';



class ResultChart extends StatefulWidget {


  final double pointerValue;
  final double age;
  final bool gender;
  final double forkg;
  final double forlb;
  final double forst;
  final double forlb2;
  final double heighforfeet;
  final double heighforcm;
  final String? selecteditems;
  final String? selecteditems2;

  ResultChart({
    required this.pointerValue,
    required this.age,
    required this.gender,
    required this.heighforfeet,
    required this.heighforcm,
    required this.selecteditems,
    required this.selecteditems2,
    required this.forkg,  required this.forlb,  required this.forst,  required this.forlb2,
  });


  @override
  _ResultChartState createState() => _ResultChartState();
}

class _ResultChartState extends State<ResultChart>
    with SingleTickerProviderStateMixin{
   late AnimationController _controller;
   double _markValue = 3.5;
   String getUnderweightStatus() {
     if (widget.age == 7 && widget.gender) {
       return "≤ 13.2";
     }
     else if (widget.age == 7 && !widget.gender) {
       return "≤ 13.6";
     }
     else if (widget.age == 8 && widget.gender) {
       return "≤ 13.2";
     } else if (widget.age == 8 && !widget.gender) {
       return "≤ 14.2";
     }
     else if (widget.age == 9 && widget.gender) {
       return "≤ 13.7";
     } else if (widget.age == 9 && !widget.gender) {
       return "≤ 13.7";
     }
     else if (widget.age == 10 && widget.gender) {
       return "≤ 14.2";
     } else if (widget.age == 10 && !widget.gender) {
       return "≤ 14.6";
     }
     else if (widget.age == 11 && widget.gender) {
       return "≤ 14.7";
     } else if (widget.age == 11 && !widget.gender) {
       return "≤ 14.3";
     }
     else if (widget.age == 12 && widget.gender) {
       return "≤ 15.0";
     } else if (widget.age == 12 && !widget.gender) {
       return "≤ 14.8";
     }
     else if (widget.age == 13 && widget.gender) {
       return "≤ 15.6";
     } else if (widget.age == 13 && !widget.gender) {
       return "≤ 16.2";
     }
     else if (widget.age == 14 && widget.gender) {
       return "≤ 17.0";
     } else if (widget.age == 14 && !widget.gender) {
       return "≤ 16.7";
     }
     else if (widget.age == 15 && widget.gender) {
       return "≤ 17.6";
     } else if (widget.age == 15 && !widget.gender) {
       return "≤ 17.8";
     }
     else if (widget.age == 16 && widget.gender) {
       return "≤ 17.8";
     } else if (widget.age == 16 && !widget.gender) {
       return "≤ 18.5";
     }
     else if (widget.age == 17 && widget.gender) {
       return "≤ 17.8";
     } else if (widget.age == 17 && !widget.gender) {
       return "≤ 18.6";
     }
     else if (widget.age == 18 && widget.gender) {
       return "≤ 18.3";
     } else if (widget.age == 18 && !widget.gender) {
       return "≤ 18.6";
     }
     return ""; // Default value
   }
   String getNormalweightStatus() {
     if (widget.age == 7 && widget.gender) {
       return "13.3-18.1";
     }
     else if (widget.age == 7 && !widget.gender) {
       return "13.7-19.1";
     }
     else if (widget.age == 8 && widget.gender) {
       return "13.3-18.7";
     } else if (widget.age == 8 && !widget.gender) {
       return "14.3-19.2";
     }
     else if (widget.age == 9 && widget.gender) {
       return "13.8-19.7";
     } else if (widget.age == 9 && !widget.gender) {
       return "13.8-19.4";
     }
     else if (widget.age == 10 && widget.gender) {
       return "14.3-20.6";
     } else if (widget.age == 10 && !widget.gender) {
       return "14.7-21.3";
     }
     else if (widget.age == 11 && widget.gender) {
       return "14.8-20.7";
     } else if (widget.age == 11 && !widget.gender) {
       return "14.4-21.1";
     }
     else if (widget.age == 12 && widget.gender) {
       return "15.1-21.4";
     } else if (widget.age == 12 && !widget.gender) {
       return "14.9-21.9";
     }
     else if (widget.age == 13 && widget.gender) {
       return "15.7-21.9";
     } else if (widget.age == 13 && !widget.gender) {
       return "16.3-21.6";
     }
     else if (widget.age == 14 && widget.gender) {
       return "17.1-23.1";
     } else if (widget.age == 14 && !widget.gender) {
       return "16.8-22.5";
     }
     else if (widget.age == 15 && widget.gender) {
       return "17.7-23.1";
     } else if (widget.age == 15 && !widget.gender) {
       return "17.9-23.0";
     }
     else if (widget.age == 16 && widget.gender) {
       return "17.9-22.7";
     } else if (widget.age == 16 && !widget.gender) {
       return "18.6-23.6";
     }
     else if (widget.age == 17 && widget.gender) {
       return "17.9-23.3";
     } else if (widget.age == 17 && !widget.gender) {
       return "18.7-23.6";
     }
     else if (widget.age == 18 && widget.gender) {
       return "18.4-23.4";
     } else if (widget.age == 18 && !widget.gender) {
       return "18.7-23.9";
     }
     return ""; // Default value
   }
   String getoverweightStatus() {
     if (widget.age == 7 && widget.gender) {
       return "18.2-23.0";
     }
     else if (widget.age == 7 && !widget.gender) {
       return "19.2-21.0";
     }
     else if (widget.age == 8 && widget.gender) {
       return "18.8-22.2";
     } else if (widget.age == 8 && !widget.gender) {
       return "19.3-22.5";
     }
     else if (widget.age == 9 && widget.gender) {
       return "19.8-23.3";
     } else if (widget.age == 9 && !widget.gender) {
       return "19.4-21.5";
     }
     else if (widget.age == 10 && widget.gender) {
       return "20.7-23.3";
     } else if (widget.age == 10 && !widget.gender) {
       return "21.4-24.9";
     }
     else if (widget.age == 11 && widget.gender) {
       return "20.8-22.8";
     } else if (widget.age == 11 && !widget.gender) {
       return "21.2-22.9";
     }
     else if (widget.age == 12 && widget.gender) {
       return "21.5-23.3";
     } else if (widget.age == 12 && !widget.gender) {
       return "22.0-24.7";
     }
     else if (widget.age == 13 && widget.gender) {
       return "22.0-24.3";
     } else if (widget.age == 13 && !widget.gender) {
       return "21.7-24.4";
     }
     else if (widget.age == 14 && widget.gender) {
       return "23.2-25.9";
     } else if (widget.age == 14 && !widget.gender) {
       return "22.6-25.6";
     }
     else if (widget.age == 15 && widget.gender) {
       return "23.2-24.5";
     } else if (widget.age == 15 && !widget.gender) {
       return "23.1-25.8";
     }
     else if (widget.age == 16 && widget.gender) {
       return "22.8-24.1";
     } else if (widget.age == 16 && !widget.gender) {
       return "23.7-25.9";
     }
     else if (widget.age == 17 && widget.gender) {
       return "23.4-25.6";
     } else if (widget.age == 17 && !widget.gender) {
       return "23.7-25.7";
     }
     else if (widget.age == 18 && widget.gender) {
       return "23.5-24.9";
     } else if (widget.age == 18 && !widget.gender) {
       return "24.0-26.7";
     }
     return ""; // Default value
   }
   String getobeseweightStatus() {
     if (widget.age == 7 && widget.gender) {
       return "≥ 23.1";
     }
     else if (widget.age == 7 && !widget.gender) {
       return "≥ 21.1";
     }
     else if (widget.age == 8 && widget.gender) {
       return "≥ 22.3";
     } else if (widget.age == 8 && !widget.gender) {
       return "≥ 22.6";
     }
     else if (widget.age == 9 && widget.gender) {
       return "≥ 23.4";
     } else if (widget.age == 9 && !widget.gender) {
       return "≥ 21.6";
     }
     else if (widget.age == 10 && widget.gender) {
       return "≥ 23.4";
     } else if (widget.age == 10 && !widget.gender) {
       return "≥ 25.0";
     }
     else if (widget.age == 11 && widget.gender) {
       return "≥ 22.9";
     } else if (widget.age == 11 && !widget.gender) {
       return "≥ 23.0";
     }
     else if (widget.age == 12 && widget.gender) {
       return "≥ 23.4";
     } else if (widget.age == 12 && !widget.gender) {
       return "≥ 24.8";
     }
     else if (widget.age == 13 && widget.gender) {
       return "≥ 24.4";
     } else if (widget.age == 13 && !widget.gender) {
       return "≥ 24.5";
     }
     else if (widget.age == 14 && widget.gender) {
       return "≥ 26.0";
     } else if (widget.age == 14 && !widget.gender) {
       return "≥ 25.7";
     }
     else if (widget.age == 15 && widget.gender) {
       return "≥ 27.6";
     } else if (widget.age == 15 && !widget.gender) {
       return "≥ 25.9";
     }
     else if (widget.age == 16 && widget.gender) {
       return "≥ 24.2";
     } else if (widget.age == 16 && !widget.gender) {
       return "≥ 26.0";
     }
     else if (widget.age == 17 && widget.gender) {
       return "≥ 25.7";
     } else if (widget.age == 17 && !widget.gender) {
       return "≥ 25.8";
     }
     else if (widget.age == 18 && widget.gender) {
       return "≥ 25.0";
     } else if (widget.age == 18 && !widget.gender) {
       return "≥ 26.8";
     }
     return ""; // Default value
   }
   double getNormalweightlowervalue() {

     if (widget.age == 7 && widget.gender && widget.selecteditems =='ft') {
       return 13.3  *  (widget.heighforfeet * widget.heighforfeet);
     }
     else if (widget.age == 7 && widget.gender && widget.selecteditems =='cm' ) {
       return 13.3  *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 7 && !widget.gender && widget.selecteditems =='ft') {
       return 13.7 *  (widget.heighforfeet * widget.heighforfeet);
     }
     else if (widget.age == 7 && !widget.gender && widget.selecteditems =='cm') {
       return 13.7 *  (widget.heighforcm * widget.heighforcm);
     }

     ///8
     else if (widget.age == 8 && widget.gender && widget.selecteditems =='ft') {
       return 13.3 *  (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 8 && widget.gender && widget.selecteditems =='cm') {
       return 13.3  *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 8 && !widget.gender && widget.selecteditems =='ft') {
       return 14.3 *  (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 8 && !widget.gender && widget.selecteditems =='cm') {
       return 14.3  *  (widget.heighforcm * widget.heighforcm);
     }
     ///9
     else if (widget.age == 9 && widget.gender && widget.selecteditems =='ft') {
       return 13.8 * (widget.heighforfeet * widget.heighforfeet);
     }
       else if (widget.age == 9 && widget.gender && widget.selecteditems =='cm') {
       return 13.8 *  (widget.heighforcm * widget.heighforcm);
     }
      else if (widget.age == 9 && !widget.gender && widget.selecteditems =='ft') {
        return 13.8 * (widget.heighforfeet * widget.heighforfeet);
      }
      else if (widget.age == 9 && !widget.gender && widget.selecteditems =='cm') {
        return 13.8 *  (widget.heighforcm * widget.heighforcm);
      }
      ///10
     else if (widget.age == 10 && widget.gender  && widget.selecteditems =='ft') {
       return 14.3* (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 10 && widget.gender  && widget.selecteditems =='cm') {
       return 14.3 *  (widget.heighforcm * widget.heighforcm);
     }

     else if (widget.age == 10 && !widget.gender  && widget.selecteditems =='ft') {
       return 14.7 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 10 && !widget.gender  && widget.selecteditems =='cm') {
       return 14.7 *  (widget.heighforcm * widget.heighforcm);
     }
     ///11
     else if (widget.age == 11 && widget.gender  && widget.selecteditems =='ft') {
       return 14.8 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 11 && widget.gender  && widget.selecteditems =='cm') {
       return 14.8 *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 11 && !widget.gender  && widget.selecteditems =='ft') {
       return 14.4* (widget.heighforfeet * widget.heighforfeet);
     }   else if (widget.age == 11 && !widget.gender  && widget.selecteditems =='cm') {
       return 14.4*  (widget.heighforcm * widget.heighforcm);
     }

     ///12
     else if (widget.age == 12 && widget.gender && widget.selecteditems =='ft') {
       return 15.1* (widget.heighforfeet * widget.heighforfeet);
     }   else if (widget.age == 12 && widget.gender && widget.selecteditems =='cm') {
       return 15.1*  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 12 && !widget.gender && widget.selecteditems =='ft') {
       return 14.9 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 12 && !widget.gender && widget.selecteditems =='cm') {
       return 14.9 *  (widget.heighforcm * widget.heighforcm);
     }
     ///13
     else if (widget.age == 13 && widget.gender && widget.selecteditems =='ft') {
       return 15.7* (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 13 && widget.gender && widget.selecteditems =='cm') {
       return 15.7*  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 13 && !widget.gender && widget.selecteditems =='ft') {
       return 6.3 * (widget.heighforfeet * widget.heighforfeet);
     }else if (widget.age == 13 && !widget.gender && widget.selecteditems =='cm') {
       return 6.3 *  (widget.heighforcm * widget.heighforcm);
     }
     ///14
     else if (widget.age == 14 && widget.gender && widget.selecteditems =='ft') {
       return 17.1 * (widget.heighforfeet * widget.heighforfeet);
     }
       else if (widget.age == 14 && widget.gender && widget.selecteditems =='cm') {
       return 17.1 *  (widget.heighforcm * widget.heighforcm);
     }

     else if (widget.age == 14 && !widget.gender && widget.selecteditems =='ft') {
       return 16.8 * (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 14 && !widget.gender && widget.selecteditems =='cm') {
       return 16.8 *  (widget.heighforcm * widget.heighforcm);
     }
     ///15
     else if (widget.age == 15 && widget.gender && widget.selecteditems =='ft') {
       return 17.7 * (widget.heighforfeet * widget.heighforfeet);
     }   else if (widget.age == 15 && widget.gender && widget.selecteditems =='cm') {
       return 17.7 *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 15 && !widget.gender&& widget.selecteditems =='ft') {
       return 17.9* (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 15 && !widget.gender&& widget.selecteditems =='cm') {
       return 17.9*  (widget.heighforcm * widget.heighforcm);
     }
     ///16
     else if (widget.age == 16 && widget.gender&& widget.selecteditems =='ft') {
       return 17.9* (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 16 && widget.gender&& widget.selecteditems =='ft') {
       return 17.9*  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 16 && !widget.gender&& widget.selecteditems =='ft') {
       return 18.6* (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 16 && !widget.gender&& widget.selecteditems =='cm') {
       return 18.6*  (widget.heighforcm * widget.heighforcm);
     }
     ///17
     else if (widget.age == 17 && widget.gender&& widget.selecteditems =='ft') {
       return 17.9* (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 17 && widget.gender&& widget.selecteditems =='cm') {
       return 17.9 *  (widget.heighforcm * widget.heighforcm);
     } else if (widget.age == 17 && !widget.gender&& widget.selecteditems =='ft') {
       return 18.7 * (widget.heighforfeet * widget.heighforfeet);
     }else if (widget.age == 17 && !widget.gender&& widget.selecteditems =='cm') {
       return 18.7*  (widget.heighforcm * widget.heighforcm);
     }
     ///18
     else if (widget.age == 18 && widget.gender&& widget.selecteditems =='ft') {
       return 18.4 * (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 18 && widget.gender&& widget.selecteditems =='cm') {
       return 18.4 *  (widget.heighforcm * widget.heighforcm);
     } else if (widget.age == 18 && !widget.gender&& widget.selecteditems =='ft') {
       return 18.7 * (widget.heighforfeet * widget.heighforfeet);
     }else if (widget.age == 18 && !widget.gender&& widget.selecteditems =='cm') {
       return 18.7*  (widget.heighforcm * widget.heighforcm);
     }
     ///18+
     else if (widget.age > 18 &&  widget.selecteditems =='ft') {
       return 18.5 * (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age > 18 &&  widget.selecteditems =='cm') {
       return 18.5 *  (widget.heighforcm * widget.heighforcm);
     }

     return 0; // Default value
   }
   double getNormalweightupperrvalue() {

     if (widget.age == 7 && widget.gender && widget.selecteditems =='ft') {
       return 18.1  *  (widget.heighforfeet * widget.heighforfeet);
     }
     else if (widget.age == 7 && widget.gender && widget.selecteditems =='cm' ) {
       return 18.1  *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 7 && !widget.gender && widget.selecteditems =='ft') {
       return 19.1 *  (widget.heighforfeet * widget.heighforfeet);
     }
     else if (widget.age == 7 && !widget.gender && widget.selecteditems =='cm') {
       return 19.1 *  (widget.heighforcm * widget.heighforcm);
     }

     ///8
     else if (widget.age == 8 && widget.gender && widget.selecteditems =='ft') {
       return 18.7*  (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 8 && widget.gender && widget.selecteditems =='cm') {
       return 18.7  *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 8 && !widget.gender && widget.selecteditems =='ft') {
       return 19.2 *  (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 8 && !widget.gender && widget.selecteditems =='cm') {
       return 19.2  *  (widget.heighforcm * widget.heighforcm);
     }
     ///9
     else if (widget.age == 9 && widget.gender && widget.selecteditems =='ft') {
       return 19.7 * (widget.heighforfeet * widget.heighforfeet);
     }
     else if (widget.age == 9 && widget.gender && widget.selecteditems =='cm') {
       return 19.7 *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 9 && !widget.gender && widget.selecteditems =='ft') {
       return 19.4 * (widget.heighforfeet * widget.heighforfeet);
     }
     else if (widget.age == 9 && !widget.gender && widget.selecteditems =='cm') {
       return 19.4 *  (widget.heighforcm * widget.heighforcm);
     }
     ///10
     else if (widget.age == 10 && widget.gender  && widget.selecteditems =='ft') {
       return 20.6 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 10 && widget.gender  && widget.selecteditems =='cm') {
       return 20.6 *  (widget.heighforcm * widget.heighforcm);
     }

     else if (widget.age == 10 && !widget.gender  && widget.selecteditems =='ft') {
       return 21.3 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 10 && !widget.gender  && widget.selecteditems =='cm') {
       return 21.3 *  (widget.heighforcm * widget.heighforcm);
     }
     ///11
     else if (widget.age == 11 && widget.gender  && widget.selecteditems =='ft') {
       return 20.7 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 11 && widget.gender  && widget.selecteditems =='cm') {
       return 20.7 *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 11 && !widget.gender  && widget.selecteditems =='ft') {
       return 21.1 * (widget.heighforfeet * widget.heighforfeet);
     }   else if (widget.age == 11 && !widget.gender  && widget.selecteditems =='cm') {
       return 21.1 *  (widget.heighforcm * widget.heighforcm);
     }

     ///12
     else if (widget.age == 12 && widget.gender && widget.selecteditems =='ft') {
       return 21.4 * (widget.heighforfeet * widget.heighforfeet);
     }   else if (widget.age == 12 && widget.gender && widget.selecteditems =='cm') {
       return 21.4 *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 12 && !widget.gender && widget.selecteditems =='ft') {
       return 21.9 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 12 && !widget.gender && widget.selecteditems =='cm') {
       return 21.9 *  (widget.heighforcm * widget.heighforcm);
     }
     ///13
     else if (widget.age == 13 && widget.gender && widget.selecteditems =='ft') {
       return 21.9 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 13 && widget.gender && widget.selecteditems =='cm') {
       return 21.9 *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 13 && !widget.gender && widget.selecteditems =='ft') {
       return 21.6 * (widget.heighforfeet * widget.heighforfeet);
     }else if (widget.age == 13 && !widget.gender && widget.selecteditems =='cm') {
       return 21.6 *  (widget.heighforcm * widget.heighforcm);
     }
     ///14
     else if (widget.age == 14 && widget.gender && widget.selecteditems =='ft') {
       return 23.1 * (widget.heighforfeet * widget.heighforfeet);
     }
     else if (widget.age == 14 && widget.gender && widget.selecteditems =='cm') {
       return 23.1 *  (widget.heighforcm * widget.heighforcm);
     }

     else if (widget.age == 14 && !widget.gender && widget.selecteditems =='ft') {
       return 22.5 * (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 14 && !widget.gender && widget.selecteditems =='cm') {
       return 22.5 *  (widget.heighforcm * widget.heighforcm);
     }
     ///15
     else if (widget.age == 15 && widget.gender && widget.selecteditems =='ft') {
       return 23.1 * (widget.heighforfeet * widget.heighforfeet);
     }   else if (widget.age == 15 && widget.gender && widget.selecteditems =='cm') {
       return 23.1 *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 15 && !widget.gender&& widget.selecteditems =='ft') {
       return 23.0 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 15 && !widget.gender&& widget.selecteditems =='cm') {
       return 23.0 *  (widget.heighforcm * widget.heighforcm);
     }
     ///16
     else if (widget.age == 16 && widget.gender&& widget.selecteditems =='ft') {
       return 22.7 * (widget.heighforfeet * widget.heighforfeet);
     }  else if (widget.age == 16 && widget.gender&& widget.selecteditems =='ft') {
       return 22.7 *  (widget.heighforcm * widget.heighforcm);
     }
     else if (widget.age == 16 && !widget.gender&& widget.selecteditems =='ft') {
       return  23.6 * (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 16 && !widget.gender&& widget.selecteditems =='cm') {
       return 23.6 *  (widget.heighforcm * widget.heighforcm);
     }
     ///17
     else if (widget.age == 17 && widget.gender&& widget.selecteditems =='ft') {
       return 23.3 * (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 17 && widget.gender&& widget.selecteditems =='cm') {
       return 23.3 *  (widget.heighforcm * widget.heighforcm);
     } else if (widget.age == 17 && !widget.gender&& widget.selecteditems =='ft') {
       return 23.6 * (widget.heighforfeet * widget.heighforfeet);
     }else if (widget.age == 17 && !widget.gender&& widget.selecteditems =='cm') {
       return 23.6 *  (widget.heighforcm * widget.heighforcm);
     }
     ///18
     else if (widget.age == 18 && widget.gender&& widget.selecteditems =='ft') {
       return 23.4 * (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age == 18 && widget.gender&& widget.selecteditems =='cm') {
       return 23.4 *  (widget.heighforcm * widget.heighforcm);
     } else if (widget.age == 18 && !widget.gender&& widget.selecteditems =='ft') {
       return 23.9 * (widget.heighforfeet * widget.heighforfeet);
     }else if (widget.age == 18 && !widget.gender&& widget.selecteditems =='cm') {
       return 23.9 *  (widget.heighforcm * widget.heighforcm);
     }
     ///18+
     else if (widget.age > 18 &&  widget.selecteditems =='ft') {
       return 24.9 * (widget.heighforfeet * widget.heighforfeet);
     } else if (widget.age > 18 &&  widget.selecteditems =='cm') {
       return 24.9 *  (widget.heighforcm * widget.heighforcm);
     }

     return 0; // Default value
   }

 
   


  @override
  Widget build(BuildContext context) {

    double difforkg = getNormalweightlowervalue() - widget.forkg;  
    double difforkg2 = -(getNormalweightupperrvalue() - widget.forkg);
   double kgtolbs = (getNormalweightlowervalue() * 2.205) - widget.forlb;
   double kgtolbsup = -((getNormalweightlowervalue() * 2.205) - widget.forlb);
   double kgtolbs2 =  (getNormalweightlowervalue() * 2.205) - widget.forlb2;
   double kgtolbs2up = -((getNormalweightlowervalue() * 2.205) - widget.forlb2);
    return

      Column(
        children: [
          SizedBox(
     height: 200,
          child: Padding(
            padding:  EdgeInsets.only(top: 105),
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis
                  (
                    showFirstLabel: false,
                    showLastLabel: false,
                    showTicks: false,
                    minimum: 0,
                    maximum: 99,
                    //labelOffset: ElementsPosition.inside,
                    startAngle: 180,
                    endAngle: 360,
                    radiusFactor: 4.05,
                    ranges: <GaugeRange>[
                      GaugeRange(startValue: 0,
                          endValue: 32.85,
                          color: Colors.blue.shade400,
                          label: 'Underwight',
                          sizeUnit: GaugeSizeUnit.factor,
                          labelStyle:
                          GaugeTextStyle(
                              fontFamily: 'Times', fontSize: 10,color: Colors.white),
                          startWidth: 0.34,
                          endWidth: 0.34,

                      ),
                      GaugeRange(startValue: 32.85, endValue: 33.15,color: Colors.white,
                      ),
                      GaugeRange(

                        startValue: 33.15,
                        endValue: 65.85,
                        color: Colors.green.shade400,
                        label: 'Normal',
                        labelStyle: GaugeTextStyle(
                            fontFamily: 'Times', fontSize: 10,color: Colors.white),
                        startWidth: 0.34,
                        endWidth: 0.34,
                        sizeUnit: GaugeSizeUnit.factor,
                      ),
                      GaugeRange(startValue: 65.85, endValue: 66.15,color: Colors.white,),
                      GaugeRange(startValue: 66.15,
                        endValue: 99,
                        color: Colors.red.shade400,
                        label: 'Overweight',
                        labelStyle: GaugeTextStyle(
                            fontFamily: 'Times', fontSize: 10,color: Colors.white),
                        sizeUnit: GaugeSizeUnit.factor,
                        startWidth: 0.34,
                        endWidth: 0.34,
                      ),

                    ],
                    annotations: <GaugeAnnotation>[
                      /// Fast Part
                       GaugeAnnotation(
                          angle: 175,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: 0.75,
                          verticalAlignment: GaugeAlignment.near,
                          widget: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Category",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          )),
                       GaugeAnnotation(
                          angle: 5,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: 0.85,
                          verticalAlignment: GaugeAlignment.near,
                          widget: Padding(
                            padding: EdgeInsets.only(top: 10,),
                            child: Text(
                              "Differnce",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          )),
                       GaugeAnnotation(
                          widget:
                          Column(mainAxisSize: MainAxisSize.min, children:
                          [
                            Center(
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text:
                                  TextSpan(
                                   text: 'BMI\n',
                                    style:  TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                    children:  [
                                      TextSpan(
                                        text: widget.pointerValue == 0 ? ('0.0') : NumberFormat('0.0').format(widget.pointerValue),
                                        style: TextStyle(
                                          color:
                                               widget.age < 7 ? Colors.black
                                               : widget.pointerValue <= 10.0 ? Colors.black

                                               /// for range blue
                                               : widget.pointerValue <=13.25 && widget.gender  && widget.age >= 7 && widget.age <= 8 ? Colors.blue
                                               : widget.pointerValue <=13.65 && !widget.gender  && widget.age == 7 ? Colors.blue
                                               : widget.pointerValue <=14.25 && !widget.gender  && widget.age == 8 ? Colors.blue
                                               : widget.pointerValue <=13.75  && widget.age == 9 ? Colors.blue
                                               : widget.pointerValue <=14.24 && widget.gender  && widget.age == 10 ? Colors.blue
                                               : widget.pointerValue <=14.65 && !widget.gender  && widget.age == 10 ? Colors.blue
                                               : widget.pointerValue <=14.75 && widget.gender  && widget.age == 11 ? Colors.blue
                                               : widget.pointerValue <=14.35 && !widget.gender  && widget.age == 11 ? Colors.blue
                                               : widget.pointerValue <=15.05 && widget.gender  && widget.age == 12 ? Colors.blue
                                               : widget.pointerValue <=14.85 && !widget.gender  && widget.age == 12 ? Colors.blue
                                               : widget.pointerValue <=15.65 && widget.gender  && widget.age == 13 ? Colors.blue
                                               : widget.pointerValue <=16.25 && !widget.gender  && widget.age == 13 ? Colors.blue
                                               : widget.pointerValue <=17.05 && widget.gender  && widget.age == 14 ? Colors.blue
                                               : widget.pointerValue <=16.75 && !widget.gender  && widget.age == 14 ? Colors.blue
                                               : widget.pointerValue <=17.65 && widget.gender  && widget.age == 15 ? Colors.blue
                                               : widget.pointerValue <=17.85 && !widget.gender  && widget.age == 15 ? Colors.blue
                                                   : widget.pointerValue <=17.85 && widget.gender  && widget.age == 16 ? Colors.blue
                                               : widget.pointerValue <=18.55 && !widget.gender  && widget.age == 16 ? Colors.blue
                                                   : widget.pointerValue <=17.85 && widget.gender  && widget.age == 17 ? Colors.blue
                                               : widget.pointerValue <=18.65 && !widget.gender  && widget.age == 17 ? Colors.blue
                                                   : widget.pointerValue <= 18.35 && widget.gender  && widget.age == 18 ? Colors.blue
                                               : widget.pointerValue <=18.65 && !widget.gender  && widget.age == 18 ? Colors.blue

                                               /// for range Green
                                                   : widget.pointerValue <=18.15 && widget.gender  && widget.age == 7? Colors.green.shade400
                                                   : widget.pointerValue <=19.15 && !widget.gender  && widget.age == 7 ? Colors.green.shade400
                                                   : widget.pointerValue <=18.75 && widget.gender  && widget.age == 8 ? Colors.green.shade400
                                                   : widget.pointerValue <=19.25 && !widget.gender  && widget.age == 8 ? Colors.green.shade400
                                                   : widget.pointerValue <=19.75 && widget.gender  && widget.age == 9 ? Colors.green.shade400
                                                   : widget.pointerValue <=19.35 && !widget.gender  && widget.age == 9 ? Colors.green.shade400
                                                   : widget.pointerValue <=20.65 && widget.gender  && widget.age == 10 ? Colors.green.shade400
                                                   : widget.pointerValue <=21.35 && !widget.gender  && widget.age == 10 ?Colors.green.shade400
                                                   : widget.pointerValue <=20.75 && widget.gender  && widget.age == 11 ? Colors.green.shade400
                                                   : widget.pointerValue <=21.15 && !widget.gender  && widget.age == 11 ? Colors.green.shade400
                                                   : widget.pointerValue <=21.45 && widget.gender  && widget.age == 12 ? Colors.green.shade400
                                                   : widget.pointerValue <=21.95 && !widget.gender  && widget.age == 12 ? Colors.green.shade400
                                                   : widget.pointerValue <=21.95 && widget.gender  && widget.age == 13 ? Colors.green.shade400
                                                   : widget.pointerValue <=21.65 && !widget.gender  && widget.age == 13 ? Colors.green.shade400
                                                   : widget.pointerValue <=23.15 && widget.gender  && widget.age == 14 ? Colors.green.shade400
                                                   : widget.pointerValue <=22.55 && !widget.gender  && widget.age == 14 ? Colors.green.shade400
                                                   : widget.pointerValue <=23.15 && widget.gender  && widget.age == 15 ? Colors.green.shade400
                                                   : widget.pointerValue <=23.05 && !widget.gender  && widget.age == 15 ? Colors.green.shade400
                                                   : widget.pointerValue <=22.75 && widget.gender  && widget.age == 16 ? Colors.green.shade400
                                                   : widget.pointerValue <=23.65 && !widget.gender  && widget.age == 16 ? Colors.green.shade400
                                                   : widget.pointerValue <=23.35 && widget.gender  && widget.age == 17 ? Colors.green.shade400
                                                   : widget.pointerValue <=23.65 && !widget.gender  && widget.age == 17 ? Colors.green.shade400
                                                   : widget.pointerValue <=23.45 && widget.gender  && widget.age == 18 ? Colors.green.shade400
                                                   : widget.pointerValue <=23.95 && !widget.gender  && widget.age == 18 ? Colors.green.shade400
                                                /// for range red
                                                   : widget.pointerValue > 18.15 && widget.gender  && widget.age == 7? Colors.red
                                                   : widget.pointerValue >  19.15 && !widget.gender  && widget.age == 7 ? Colors.red
                                                   : widget.pointerValue >  18.75 && widget.gender  && widget.age == 8 ? Colors.red
                                                   : widget.pointerValue >  19.25 && !widget.gender  && widget.age == 8 ? Colors.red
                                                   : widget.pointerValue >  19.75 && widget.gender  && widget.age == 9 ? Colors.red
                                                   : widget.pointerValue >  19.35 && !widget.gender  && widget.age == 9 ? Colors.red
                                                   : widget.pointerValue >  20.65 && widget.gender  && widget.age == 10 ? Colors.red
                                                   : widget.pointerValue >  21.35 && !widget.gender  && widget.age == 10 ? Colors.red
                                                   : widget.pointerValue >  20.75 && widget.gender  && widget.age == 11 ? Colors.red
                                                   : widget.pointerValue >  21.15&& !widget.gender  && widget.age == 11 ? Colors.red
                                                   : widget.pointerValue >  21.45 && widget.gender  && widget.age == 12 ? Colors.red
                                                   : widget.pointerValue >  21.95 && !widget.gender  && widget.age == 12 ? Colors.red
                                                   : widget.pointerValue >  21.95 && widget.gender  && widget.age == 13 ? Colors.red
                                                   : widget.pointerValue >  21.65 && !widget.gender  && widget.age == 13 ? Colors.red
                                                   : widget.pointerValue >  23.15&& widget.gender  && widget.age == 14 ? Colors.red
                                                   : widget.pointerValue >  22.55 && !widget.gender  && widget.age == 14 ? Colors.red
                                                   : widget.pointerValue >  23.15 && widget.gender  && widget.age == 15 ? Colors.red
                                                   : widget.pointerValue >  23.05 && !widget.gender  && widget.age == 15 ? Colors.red
                                                   : widget.pointerValue >  22.75 && widget.gender  && widget.age == 16 ?Colors.red
                                                   : widget.pointerValue >  23.65 && !widget.gender  && widget.age == 16 ? Colors.red
                                                   : widget.pointerValue >  23.35 && widget.gender  && widget.age == 17 ? Colors.red
                                                   : widget.pointerValue >  23.65 && !widget.gender  && widget.age == 17 ? Colors.red
                                                   : widget.pointerValue >  23.45 && widget.gender  && widget.age == 18 ? Colors.red
                                                   : widget.pointerValue >  23.95 && !widget.gender  && widget.age == 18 ? Colors.red

                                               : widget.pointerValue <= 18.45 && widget.age > 18
                                               ? Colors.blue
                                               : widget.pointerValue  <=24.95 && widget.age > 18
                                               ? Colors.green.shade400
                                               : Colors.red,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      )
                                    ],
                                  )),
                            )
                          ])),
                      ///Category name
                       GaugeAnnotation(
                          angle: 120,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: .35,
                          verticalAlignment: GaugeAlignment.near,
                          widget: Padding(
                            padding: EdgeInsets.only(),
                            child:
                                  widget.pointerValue <= 10 ? SizedBox(
                                width : 156,
                              child: Text(
                                "      ...",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                            )
                                : widget.pointerValue <=13.25 && widget.gender  && widget.age >= 7 && widget.age <= 8 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=13.65 && !widget.gender  && widget.age == 7 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=14.25 && !widget.gender  && widget.age == 8 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=13.75  && widget.age == 9 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=14.25 && widget.gender  && widget.age == 10 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=14.65 && !widget.gender  && widget.age == 10 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=14.75 && widget.gender  && widget.age == 11 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=14.35 && !widget.gender  && widget.age == 11 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=15.05 && widget.gender  && widget.age == 12 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=14.85 && !widget.gender  && widget.age == 12 ?SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=15.65 && widget.gender  && widget.age == 13 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=16.25 && !widget.gender  && widget.age == 13 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=17.05 && widget.gender  && widget.age == 14 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=16.75 && !widget.gender  && widget.age == 14 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=17.65 && widget.gender  && widget.age == 15 ?SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=17.85 && !widget.gender  && widget.age == 15 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=17.85 && widget.gender  && widget.age == 16 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=18.55 && !widget.gender  && widget.age == 16 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=17.85 && widget.gender  && widget.age == 17 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=18.65 && !widget.gender  && widget.age == 17 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=18.45 && widget.gender  && widget.age == 18 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue <=18.65 && !widget.gender  && widget.age == 18 ? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                               ///normal
                                : widget.pointerValue >13.25 &&   widget.pointerValue <= 18.15  && widget.gender  && widget.age == 7?  SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue >13.65  && widget.pointerValue <= 19.15 && !widget.gender  && widget.age == 7 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue >13.25  && widget.pointerValue <= 18.75  && widget.gender  && widget.age == 8 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 14.25  && widget.pointerValue <= 19.25   && !widget.gender  && widget.age == 8 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 13.75  && widget.pointerValue <= 19.75   && widget.gender  && widget.age == 9 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 13.75  && widget.pointerValue <= 19.35  && !widget.gender  && widget.age == 9 ?SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                            )
                                : widget.pointerValue > 14.25  && widget.pointerValue <= 20.65  && widget.gender  && widget.age == 10 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 14.65  && widget.pointerValue <= 21.35   && !widget.gender  && widget.age == 10 ?SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                            )
                                : widget.pointerValue > 14.75  && widget.pointerValue <= 20.75  && widget.gender  && widget.age == 11 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 14.35  && widget.pointerValue <=  21.15  && !widget.gender  && widget.age == 11 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 15.05  && widget.pointerValue <= 21.45 && widget.gender  && widget.age == 12 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 14.85  && widget.pointerValue <= 21.95  && !widget.gender  && widget.age == 12 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 15.65  && widget.pointerValue <= 21.95  && widget.gender  && widget.age == 13 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 16.25  && widget.pointerValue <= 21.65  && !widget.gender  && widget.age == 13 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 17.05  && widget.pointerValue <= 23.15  && widget.gender  && widget.age == 14 ?SizedBox(
                                    width : 156,
                                    child: Text(
                                      "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                                    ),),
                                  )
                                : widget.pointerValue > 16.75  && widget.pointerValue <= 22.55  && !widget.gender  && widget.age == 14 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 17.65  && widget.pointerValue <= 23.15  && widget.gender  && widget.age == 15 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue > 17.85  && widget.pointerValue <= 23.05  && !widget.gender  && widget.age == 15 ?SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                            )
                                : widget.pointerValue > 17.85  && widget.pointerValue <= 22.75  && widget.gender  && widget.age == 16 ?SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                            )
                                : widget.pointerValue > 18.65  && widget.pointerValue <= 23.65  && !widget.gender  && widget.age == 16 ?SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                            )
                                : widget.pointerValue > 17.85  && widget.pointerValue <= 23.35  && widget.gender  && widget.age == 17 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue >18.65 && widget.pointerValue <=23.65  && !widget.gender  && widget.age == 17 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue >18.35  && widget.pointerValue <= 23.45  && widget.gender  && widget.age == 18 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue >18.65  && widget.pointerValue <= 23.95  && !widget.gender  && widget.age == 18 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )


                                :  widget.pointerValue >18.15  &&   widget.pointerValue <=  23.05 && widget.gender  && widget.age == 7?  SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue >19.15 && widget.pointerValue <=  21.05 && !widget.gender  && widget.age == 7 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 18.75 && widget.pointerValue <=  22.25 && widget.gender  && widget.age == 8 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 19.25 && widget.pointerValue <=  22.55  && !widget.gender  && widget.age == 8 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 19.75 && widget.pointerValue <=  23.35  && widget.gender  && widget.age == 9 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 19.35 && widget.pointerValue <=  21.55 && !widget.gender  && widget.age == 9 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 20.65 && widget.pointerValue <=  23.35 && widget.gender  && widget.age == 10 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 21.35 && widget.pointerValue <=  24.95 && !widget.gender  && widget.age == 10 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 20.75 && widget.pointerValue <=  22.85 && widget.gender  && widget.age == 11 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 21.15 && widget.pointerValue <=  22.35 && !widget.gender  && widget.age == 11 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 21.45 && widget.pointerValue <=  23.35 && widget.gender  && widget.age == 12 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 21.95 && widget.pointerValue <=  24.75 && !widget.gender  && widget.age == 12 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 21.95 && widget.pointerValue <=  24.35 && widget.gender  && widget.age == 13 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 21.65 && widget.pointerValue <=  24.45 && !widget.gender  && widget.age == 13 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 23.15 && widget.pointerValue <=  25.95 && widget.gender  && widget.age == 14 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 22.55 && widget.pointerValue <=  25.65 && !widget.gender  && widget.age == 14 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 23.15 && widget.pointerValue <=  27.55 && widget.gender  && widget.age == 15 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 23.05 && widget.pointerValue <=  25.85 && !widget.gender  && widget.age == 15 ?SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                            )
                                : widget.pointerValue > 22.75 && widget.pointerValue <=  24.15 && widget.gender  && widget.age == 16 ?SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                            )
                                : widget.pointerValue > 23.65 && widget.pointerValue <=  25.95 && !widget.gender  && widget.age == 16 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 23.35 && widget.pointerValue <= 25.65&& widget.gender  && widget.age == 17 ? SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                            )
                                : widget.pointerValue > 23.65 && widget.pointerValue <=  25.75 && !widget.gender  && widget.age == 17 ? SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                            )
                                : widget.pointerValue > 23.45 && widget.pointerValue <=  24.95 && widget.gender  && widget.age == 18 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 23.95 && widget.pointerValue <=  26.75 && !widget.gender  && widget.age == 18 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Overweight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )

                                : widget.pointerValue > 23.05  && widget.gender  && widget.age == 7?  SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 21.05  && !widget.gender  && widget.age == 7 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 22.25  && widget.gender  && widget.age == 8 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 22.55 && !widget.gender  && widget.age == 8 ? SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                            )
                                : widget.pointerValue > 23.35  && widget.gender  && widget.age == 9 ? SizedBox(
                              width : 20,
                              child: Center(child: Icon(Icons.arrow_right,color:  Colors.red)),
                            )
                                : widget.pointerValue > 21.55  && !widget.gender  && widget.age == 9 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 23.35  && widget.gender  && widget.age == 10 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 25.55  && !widget.gender  && widget.age == 10 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 22.85 && widget.gender  && widget.age == 11 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 23.55 && !widget.gender  && widget.age == 11 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 23.35  && widget.gender  && widget.age == 12 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 24.75  && !widget.gender  && widget.age == 12 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 24.35  && widget.gender  && widget.age == 13 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 24.45  &&  !widget.gender  && widget.age == 13 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 25.95  &&  widget.gender  && widget.age == 14 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 25.65  &&  !widget.gender  && widget.age == 14 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 27.55  && widget.gender  && widget.age == 15 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 25.85  && !widget.gender  && widget.age == 15 ?SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                            )
                                : widget.pointerValue > 24.15  && widget.gender  && widget.age == 16 ?SizedBox(
                              width : 22,
                              child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                            )
                                : widget.pointerValue > 25.95  && !widget.gender  && widget.age == 16 ?SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 25.65  && widget.gender  && widget.age == 17 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 25.75  && !widget.gender  && widget.age == 17 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                :  widget.pointerValue > 24.95  && widget.gender  && widget.age == 18 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 26.75  && !widget.gender  && widget.age == 18 ? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )

                                : widget.pointerValue <= 15.95 &&   widget.pointerValue > 10   && widget.age > 18?  SizedBox(
                            width : 156,
                            child: Text(
                              "Very Severely UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                            ),),
                          )
                                : widget.pointerValue <=16.95  &&   widget.pointerValue > 15.95  && widget.age > 18?  SizedBox(
                              width : 156,
                              child: Text(
                                "Severely UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue > 16.95 &&   widget.pointerValue <= 18.45   && widget.age > 18? SizedBox(
                              width : 156,
                              child: Text(
                                "UnderWeight",style: TextStyle(fontSize: 13, color: Colors.blue,

                              ),),
                            )
                                : widget.pointerValue > 18.45 &&   widget.pointerValue <=24.95  && widget.age > 18?SizedBox(
                              width : 156,
                              child: Text(
                                "Normal",style: TextStyle(fontSize: 13, color: Colors.green.shade400,

                              ),),
                            )
                                : widget.pointerValue >24.95 &&   widget.pointerValue <= 29.95   && widget.age > 18? SizedBox(
                              width : 156,
                              child: Text(
                                "OverWeight",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue >29.95 &&   widget.pointerValue <= 34.95   && widget.age > 18? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese Class I",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue > 34.95 &&   widget.pointerValue <= 39.95   && widget.age > 18? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese Class II",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : widget.pointerValue >=39.95  && widget.age > 18? SizedBox(
                              width : 156,
                              child: Text(
                                "Obese Class III",style: TextStyle(fontSize: 13, color: Colors.red,

                              ),),
                            )
                                : SizedBox(
                         width : 156,
                         child: Text(
                           "      ...",
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.w400,
                             fontSize: 13,
                           ),
                         ),
                       )


                                    
                          )),

                      ///Differnce
                       GaugeAnnotation(
                          angle: 13,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: 1.15,
                          verticalAlignment: GaugeAlignment.near,
                          widget: Padding(
                            padding: EdgeInsets.only(top: 5,),
                            child:SizedBox(
                              width : 100,
                              height : 20,
                              child:
                                    widget.pointerValue <= 10 ? Text(
                                "   ...",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              )
                                  : widget.pointerValue <=13.25 && widget.gender  && widget.age >= 7 && widget.age <= 8 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=13.65 && !widget.gender  && widget.age == 7 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=14.25 && !widget.gender  && widget.age == 8 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=13.75  && widget.age == 9 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=14.25 && widget.gender  && widget.age == 10 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=14.65 && !widget.gender  && widget.age == 10 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=14.75 && widget.gender  && widget.age == 11 ?  Row(
                                      children: [

                                        Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                            : widget.selecteditems2 == 'lb'  ?  Row(
                                          children: [
                                            Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                            : widget.selecteditems2 == 'st'  ?

                                        Row(
                                          children: [
                                            Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                            : Text(
                                          " ",)
                                      ],
                                    )
                                  : widget.pointerValue <=14.35 && !widget.gender  && widget.age == 11 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=15.05 && widget.gender  && widget.age == 12 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=14.85 && !widget.gender  && widget.age == 12 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=15.65 && widget.gender  && widget.age == 13 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=16.25 && !widget.gender  && widget.age == 13 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=17.05 && widget.gender  && widget.age == 14 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=16.75 && !widget.gender  && widget.age == 14 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=17.65 && widget.gender  && widget.age == 15 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=17.85 && !widget.gender  && widget.age == 15 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=17.85 && widget.gender  && widget.age == 16 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=18.55 && !widget.gender  && widget.age == 16 ?Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=17.85 && widget.gender  && widget.age == 17 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=18.65 && !widget.gender  && widget.age == 17 ?Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=18.45 && widget.gender  && widget.age == 18 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                  : widget.pointerValue <=18.65 && !widget.gender  && widget.age == 18 ? Row(
                                children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],
                              )
                                   : widget.pointerValue<= 18.45  && widget.age > 18 ? Row(children: [

                                  Text('- ',style: TextStyle(fontSize: 15,color: Colors.blue)),

                                        widget.selecteditems2 == 'kg'  ? Row(
                                          children: [
                                            Text('${difforkg.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                            Text(" kg",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          ],
                                        )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                        children: [
                                          Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : widget.selecteditems2 == 'st'  ?

                                      Row(
                                        children: [
                                          Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.blue)),
                                          Text(" lb",style: TextStyle(fontSize: 13,color: Colors.blue)),
                                        ],
                                      )
                                      : Text(
                                            " ",)
                                ],)
                                 ///Normal

                                        : widget.pointerValue >13.25 &&   widget.pointerValue <= 18.15  && widget.gender  && widget.age == 7?  Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue >13.65  && widget.pointerValue <= 19.15 && !widget.gender  && widget.age == 7 ?  Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue >13.25  && widget.pointerValue <= 18.75  && widget.gender  && widget.age == 8 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 14.25  && widget.pointerValue <= 19.25   && !widget.gender  && widget.age == 8 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 13.75  && widget.pointerValue <= 19.75   && widget.gender  && widget.age == 9 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 13.75  && widget.pointerValue <= 19.35  && !widget.gender  && widget.age == 9 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 14.25  && widget.pointerValue <= 20.65  && widget.gender  && widget.age == 10 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 14.65  && widget.pointerValue <= 21.35   && !widget.gender  && widget.age == 10 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 14.75  && widget.pointerValue <= 20.75  && widget.gender  && widget.age == 11 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 14.35  && widget.pointerValue <=  21.15  && !widget.gender  && widget.age == 11 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 15.05  && widget.pointerValue <= 21.45 && widget.gender  && widget.age == 12 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 14.85  && widget.pointerValue <= 21.95  && !widget.gender  && widget.age == 12 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 15.65  && widget.pointerValue <= 21.95  && widget.gender  && widget.age == 13 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 16.25  && widget.pointerValue <= 21.65  && !widget.gender  && widget.age == 13 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 17.05  && widget.pointerValue <= 23.15  && widget.gender  && widget.age == 14 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 16.75  && widget.pointerValue <= 22.55  && !widget.gender  && widget.age == 14 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 17.05  && widget.pointerValue <= 23.15  && widget.gender  && widget.age == 15 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 17.85  && widget.pointerValue <= 23.05  && !widget.gender  && widget.age == 15 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 17.85  && widget.pointerValue <= 22.75  && widget.gender  && widget.age == 16 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 18.65  && widget.pointerValue <= 23.65  && !widget.gender  && widget.age == 16 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue > 17.85  && widget.pointerValue <= 23.35  && widget.gender  && widget.age == 17 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue >18.65 && widget.pointerValue <=23.65  && !widget.gender  && widget.age == 17 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue >18.35  && widget.pointerValue <= 23.45  && widget.gender  && widget.age == 18 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue >18.65  && widget.pointerValue <= 23.95  && !widget.gender  && widget.age == 18 ? Padding(
                                      padding: const EdgeInsets.only(right: 70,),
                                      child: SizedBox(
                                          width : 50,
                                          child: Icon(Icons.check,color: Colors.green.shade400)),
                                    )
                                        : widget.pointerValue <= 24.95 && widget.age > 18 ? Padding(
                                padding: const EdgeInsets.only(right: 70,),
                                child: SizedBox(
                                    width : 50,
                                    child: Icon(Icons.check,color: Colors.green.shade400)),
                              )
                              
                              
                              ///over 

                                  : widget.pointerValue > 18.15  && widget.gender  && widget.age == 7?   Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  :  widget.pointerValue > 19.15 && !widget.gender  && widget.age == 7 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  :  widget.pointerValue > 18.75 && widget.gender  && widget.age == 8 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  :  widget.pointerValue > 19.25  && !widget.gender  && widget.age == 8 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  :  widget.pointerValue > 19.75  && widget.gender  && widget.age == 9 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 19.35 && !widget.gender  && widget.age == 9 ?Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 20.65 && widget.gender  && widget.age == 10 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 21.35  && !widget.gender  && widget.age == 10 ?Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 20.75 && widget.gender  && widget.age == 11 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue >  21.15 && !widget.gender  && widget.age == 11 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 21.45 && widget.gender  && widget.age == 12 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 21.95 && !widget.gender  && widget.age == 12 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 21.95 && widget.gender  && widget.age == 13 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 21.65 && !widget.gender  && widget.age == 13 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 23.15 && widget.gender  && widget.age == 14 ?Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 22.55 && !widget.gender  && widget.age == 14 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 23.15 && widget.gender  && widget.age == 15 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 23.05 && !widget.gender  && widget.age == 15 ?Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 22.75 && widget.gender  && widget.age == 16 ?Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 23.65 && !widget.gender  && widget.age == 16 ?Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 23.35 && widget.gender  && widget.age == 17 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue >23.65 && !widget.gender  && widget.age == 17 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 23.45 && widget.gender  && widget.age == 18 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  : widget.pointerValue > 23.95 && !widget.gender  && widget.age == 18 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                                  :widget.pointerValue > 24.95 && widget.age > 18 ? Row(
                                children: [

                                  Text('+ ',style: TextStyle(fontSize: 15,color: Colors.red)),

                                  widget.selecteditems2 == 'kg'  ? Row(
                                    children: [
                                      Text('${difforkg2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" kg",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'lb'  ?  Row(
                                    children: [
                                      Text('${kgtolbsup.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : widget.selecteditems2 == 'st'  ?

                                  Row(
                                    children: [
                                      Text('${kgtolbs2up.toStringAsFixed(1)}',style: TextStyle(fontSize: 13,color: Colors.red)),
                                      Text(" lb",style: TextStyle(fontSize: 13,color: Colors.red)),
                                    ],
                                  )
                                      : Text(
                                    " ",)
                                ],
                              )
                              :  Text(
                                "...",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              )
                            )


                          )


                       ),

                          ///Divider
                       GaugeAnnotation(
                          angle: 20,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: 1.2,
                          verticalAlignment: GaugeAlignment.near,
                          widget: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child : Divider(
                              thickness: .3,
                              color: Colors.black26,
                            )
                          )),
                       ///  Details ///////////////////////////
                       /// fast 3(Underweight)
                       GaugeAnnotation(
                          angle: 22.55,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: 1.26,
                          verticalAlignment: GaugeAlignment.near,
                          widget:
                          Padding(
                            padding: EdgeInsets.only(top: 24),
                            child:
                                widget.age < 7
                                ?
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Row(

                                      children: [
                                        SizedBox (width: 28,  height: 18,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: SizedBox(
                                              height: 20,
                                              width : 130,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top:3.5),
                                                child: Center(child: Text("Very Severely UnderWeight",style: TextStyle(fontSize: 12,),)),
                                              )),
                                        ),
                                        SizedBox(width: 160,),
                                        SizedBox(
                                            width:40,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:3.5),
                                              child: Text("≤ 15.9",style: TextStyle(fontSize: 12),),
                                            ))
                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Row(

                                      children: [
                                        SizedBox (width: 28,  height: 18,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: SizedBox(
                                              height: 20,
                                              width : 105,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top:3.5),
                                                child: Center(child: Text("Severely UnderWeight",style: TextStyle(fontSize: 12,),)),
                                              )),
                                        ),
                                        SizedBox(width: 170,),
                                        SizedBox(
                                            width:60,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:3.5),
                                              child: Text("16.0 - 16.9",style: TextStyle(fontSize: 12),),
                                            ))
                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Row(

                                      children: [
                                        SizedBox (width: 28,  height: 18,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: SizedBox(
                                              height: 20,
                                              width : 65,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top:3.5),
                                                child: Center(child: Text("UnderWeight",style: TextStyle(fontSize: 12,),)),
                                              )),
                                        ),
                                        SizedBox(width: 210,),
                                        SizedBox(
                                            width:60,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:3.5),
                                              child: Text("17.0 - 18.4",style: TextStyle(fontSize: 12),),
                                            ))
                                      ],
                                    ),


                                  ],
                                )
                                : widget.age <=18
                                ? Column(
                                  children: [
                                    SizedBox(height: 20,),
                                                widget.pointerValue < 10 ? Padding(
                                           padding: const EdgeInsets.only(top: 8),
                                           child: Row(
                                             children: [
                                               SizedBox(width: 37,),
                                               Text(
                                                 "UnderWeight",style: TextStyle(fontSize: 12,),),
                                               SizedBox(width: 225,),

                                               Text(
                                                 getUnderweightStatus(),
                                                 style: TextStyle(fontSize: 12,
                                                     color: Colors.black,
                                                    ), )
                                             ],
                                           ),
                                         )
                                              : widget.pointerValue <=13.25 && widget.gender  && widget.age >= 7 && widget.age <= 8 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=13.65 && !widget.gender  && widget.age == 7 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=14.25 && !widget.gender  && widget.age == 8 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=13.75  && widget.age == 9 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=14.25 && widget.gender  && widget.age == 10 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=14.65 && !widget.gender  && widget.age == 10 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=14.75 && widget.gender  && widget.age == 11 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=14.35 && !widget.gender  && widget.age == 11 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=15.05 && widget.gender  && widget.age == 12 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=14.85 && !widget.gender  && widget.age == 12 ?Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=15.65 && widget.gender  && widget.age == 13 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=16.25 && !widget.gender  && widget.age == 13 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=17.05 && widget.gender  && widget.age == 14 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=16.75 && !widget.gender  && widget.age == 14 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=17.65 && widget.gender  && widget.age == 15 ?Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=17.85 && !widget.gender  && widget.age == 15 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=17.85 && widget.gender  && widget.age == 16 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=18.55 && !widget.gender  && widget.age == 16 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=17.85 && widget.gender  && widget.age == 17 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=18.65 && !widget.gender  && widget.age == 17 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=18.45 && widget.gender  && widget.age == 18 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        )
                                              : widget.pointerValue <=18.65 && !widget.gender  && widget.age == 18 ? Padding(
                                          padding: const EdgeInsets.only(top:4),
                                          child: Row(
                                      children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 13),
                                              child: Icon(Icons.arrow_right,color: Colors.blue,)

                                          ),
                                          Text(
                                            "UnderWeight",style: TextStyle(fontSize: 12, color: Colors.blue,

                                          ),),
                                          SizedBox(width: 225,),

                                          Text(

                                            getUnderweightStatus(),


                                            style: TextStyle(fontSize: 12,
                                                color: Colors.blue), )
                                      ],
                                    ),
                                        ): Padding(
                                            padding: const EdgeInsets.only(top: 8),
                                           child: Row(
                                             children: [
                                               SizedBox(width: 37,),
                                               Text(
                                                 "UnderWeight",style: TextStyle(fontSize: 12,),),
                                               SizedBox(width: 225,),

                                               SizedBox(
                                                 child: Text(
                                                   getUnderweightStatus(),
                                                   style: TextStyle(fontSize: 12,
                                                     color: Colors.black,
                                                   ), ),
                                               )
                                             ],
                                           ),
                                         ),


                                  ],
                                )
                                    :    Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Row(
                                      children: [
                                        SizedBox (width: 10,),
                                        widget.pointerValue <= 15.95 &&   widget.pointerValue > 10   && widget.age > 18?
                                        SizedBox(
                                            height: 20,
                                            width: 18,
                                          child: Icon(Icons.arrow_right,color: Colors.blue),
                                        ) : SizedBox( width: 18, height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: SizedBox(
                                              height: 20,
                                            width : 130,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:3.5),
                                              child: Center(child: Text("Very Severely UnderWeight",style: TextStyle(fontSize: 12,color:
                                              widget.pointerValue <= 15.95 &&   widget.pointerValue > 10   && widget.age > 18? Colors.blue : Colors.black),)),
                                            )),
                                        ),
                                        SizedBox(width: 160,),
                                        SizedBox(
                                            width:40,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:3.5),
                                              child: Text("≤ 15.9",style: TextStyle(fontSize: 12,color:
                                              widget.pointerValue < 16 &&   widget.pointerValue > 10   && widget.age > 18? Colors.blue : Colors.black),),
                                            ))
                                      ],
                                    ),
                                    SizedBox(height: 3.5,),
                                    Row(
                                      children: [
                                        SizedBox (width: 10,),
                                        widget.pointerValue <= 16.95  &&   widget.pointerValue > 15.95  && widget.age > 18?
                                        SizedBox(
                                          height: 21,
                                          width: 18,
                                          child: Icon(Icons.arrow_right,color: Colors.blue),
                                        ) : SizedBox( width: 18, height: 21,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: SizedBox(
                                              height: 20,
                                              width : 105,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top:3.5),
                                                child: Center(child: Text("Severely UnderWeight",style: TextStyle(fontSize: 12,color:
                                                widget.pointerValue <= 16.95  &&   widget.pointerValue > 15.95  && widget.age > 18?  Colors.blue : Colors.black),)),
                                              )),
                                        ),
                                        SizedBox(width: 170,),
                                        SizedBox(
                                            width:60,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:3.5),
                                              child: Text("16.0 - 16.9",style: TextStyle(fontSize: 12,color:
                                              widget.pointerValue <= 16.95 &&   widget.pointerValue > 15.95  && widget.age > 18? Colors.blue : Colors.black),),
                                            ))
                                      ],
                                    ),
                                    SizedBox(height: 3,),
                                    Row(
                                      children: [
                                        SizedBox (width: 10,),
                                        widget.pointerValue > 16.95 &&   widget.pointerValue <= 18.45   && widget.age > 18?
                                        SizedBox(
                                          height: 21,
                                          width: 18,
                                          child: Icon(Icons.arrow_right,color: Colors.blue),
                                        ) : SizedBox( width: 18, height: 21,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: SizedBox(
                                              height: 20,
                                              width : 65,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top:3.5),
                                                child: Center(child: Text("UnderWeight",style: TextStyle(fontSize: 12,color:
                                                widget.pointerValue > 16.95 &&   widget.pointerValue <= 18.45   && widget.age > 18?Colors.blue : Colors.black),)),
                                              )),
                                        ),
                                        SizedBox(width: 210,),
                                        SizedBox(
                                            width:60,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:3.5),
                                              child: Text("17.0 - 18.4",style: TextStyle(fontSize: 12,color:
                                              widget.pointerValue > 16.95 &&   widget.pointerValue <= 18.45   && widget.age > 18? Colors.blue : Colors.black),),
                                            ))
                                      ],
                                    ),


                                  ],
                                ) ,

                          )),
                       ///normal,overweight,class1
                       GaugeAnnotation(

                          angle: 40,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: 1.50,
                          verticalAlignment: GaugeAlignment.near,
                          widget:
                          widget.age < 7
                          ? Column(
                            children: [

                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  SizedBox (width: 10,),
                                   SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Normal",style: TextStyle(fontSize: 12,),),
                                  )),
                                  SizedBox(width: 238,),
                                  SizedBox(child: Text("18.4 - 24.9",style: TextStyle(fontSize: 12),))
                                ],
                              ),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  SizedBox (width: 10,),

                                  SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Overweight",style: TextStyle(fontSize: 12,),),
                                  )),
                                  SizedBox(width: 220,),
                                  SizedBox(child: Text("25.0 - 29.9",style: TextStyle(fontSize: 12),))
                                ],
                              ),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  SizedBox (width: 10,),
                                  // // widget.pointerValue < 16 &&   widget.pointerValue > 10   && widget.age > 18?
                                  // SizedBox(
                                  //    height: 20,
                                  //    width: 18,
                                  //    child: Icon(Icons.arrow_right,color: Colors.blue),
                                  //  ) ,
                                  SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Obese Class I",style: TextStyle(fontSize: 12,),),
                                  )),
                                  SizedBox(width: 207,),
                                  SizedBox(child: Text("30.0 - 34.9",style: TextStyle(fontSize: 12),))
                                ],
                              ),


                            ],
                          )
                          : widget.age <=18
                              ? Column(
                                children: [
                                  /// Normal
                                  SizedBox(
                                     height: 30,
                                    child:

                                    Row(
                                       children: [
                                                  SizedBox(width : 15),
                                                   widget.pointerValue >13.25 &&   widget.pointerValue <= 18.15  && widget.gender  && widget.age == 7?   Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue >13.65  && widget.pointerValue <= 19.15 && !widget.gender  && widget.age == 7 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue >13.25  && widget.pointerValue <= 18.75  && widget.gender  && widget.age == 8 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 14.25  && widget.pointerValue <= 19.25   && !widget.gender  && widget.age == 8 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 13.75  && widget.pointerValue <= 19.75   && widget.gender  && widget.age == 9 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 13.75  && widget.pointerValue <= 19.35  && !widget.gender  && widget.age == 9 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 14.25  && widget.pointerValue <= 20.65  && widget.gender  && widget.age == 10 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 14.65  && widget.pointerValue <= 21.35   && !widget.gender  && widget.age == 10 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 14.75  && widget.pointerValue <= 20.75  && widget.gender  && widget.age == 11 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 14.35  && widget.pointerValue <=  21.15  && !widget.gender  && widget.age == 11 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 15.05  && widget.pointerValue <= 21.45 && widget.gender  && widget.age == 12 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 14.85  && widget.pointerValue <= 21.95  && !widget.gender  && widget.age == 12 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 15.65  && widget.pointerValue <= 21.95  && widget.gender  && widget.age == 13 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 16.25  && widget.pointerValue <= 21.65  && !widget.gender  && widget.age == 13 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 17.05  && widget.pointerValue <= 23.15  && widget.gender  && widget.age == 14 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 16.75  && widget.pointerValue <= 22.55  && !widget.gender  && widget.age == 14 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 17.65  && widget.pointerValue <= 23.15  && widget.gender  && widget.age == 15 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 17.85  && widget.pointerValue <= 23.05  && !widget.gender  && widget.age == 15 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 17.85  && widget.pointerValue <= 22.75  && widget.gender  && widget.age == 16 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 18.65  && widget.pointerValue <= 23.65  && !widget.gender  && widget.age == 16 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue > 17.85  && widget.pointerValue <= 23.35  && widget.gender  && widget.age == 17 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue >18.65 && widget.pointerValue <=23.65  && !widget.gender  && widget.age == 17 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue >18.35  && widget.pointerValue <= 23.45  && widget.gender  && widget.age == 18 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(width: 50,
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : widget.pointerValue >18.65  && widget.pointerValue <= 23.95  && !widget.gender  && widget.age == 18 ? Row(
                                                children: [
                                                    SizedBox(
                                                  width : 22,
                                                  child: Center(child: Icon(Icons.arrow_right,color: Colors.green.shade400)),
                                            ),
                                                    Text("Normal",style: TextStyle(fontSize: 12,color: Colors.green.shade400)),
                                                    SizedBox(width: 245,),
                                                    SizedBox(
                                                      child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12,
                                                        color:Colors.green.shade400)))
                                                ],
                                              )
                                                  : Row(
                                           children: [
                                             // SizedBox(
                                             //   height: 25,
                                             //   width: 22,),

                                             SizedBox( width: 22,height: 25,),
                                             SizedBox(child: Text("Normal",style: TextStyle(fontSize: 12,),)),
                                             SizedBox(width: 245,),
                                             SizedBox(child: Text(getNormalweightStatus() ,style: TextStyle(fontSize: 12),))
                                           ],
                                         ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 18),
                                  ///overweight
                                  SizedBox(
                                      height : 30,
                                    child:
                                    widget.pointerValue >=18.2  &&   widget.pointerValue < 23.1 && widget.gender  && widget.age == 7?  Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )

                                        :  widget.pointerValue >18.15  &&   widget.pointerValue <=  23.05 && widget.gender  && widget.age == 7?  Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue >19.15 && widget.pointerValue <=  21.05 && !widget.gender  && widget.age == 7 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 18.75 && widget.pointerValue <=  22.25 && widget.gender  && widget.age == 8 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 19.25 && widget.pointerValue <=  22.55  && !widget.gender  && widget.age == 8 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 19.75 && widget.pointerValue <=  23.35  && widget.gender  && widget.age == 9 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 19.35 && widget.pointerValue <=  21.55 && !widget.gender  && widget.age == 9 ?Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 20.65 && widget.pointerValue <=  23.35 && widget.gender  && widget.age == 10 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 21.35 && widget.pointerValue <=  24.95 && !widget.gender  && widget.age == 10 ?Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 20.75 && widget.pointerValue <=  22.85 && widget.gender  && widget.age == 11 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 21.15 && widget.pointerValue <=  22.35 && !widget.gender  && widget.age == 11 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 21.45 && widget.pointerValue <=  23.35 && widget.gender  && widget.age == 12 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 21.95 && widget.pointerValue <=  24.75 && !widget.gender  && widget.age == 12 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 21.95 && widget.pointerValue <=  24.35 && widget.gender  && widget.age == 13 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 21.65 && widget.pointerValue <=  24.45 && !widget.gender  && widget.age == 13 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 23.15 && widget.pointerValue <=  25.95 && widget.gender  && widget.age == 14 ?Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 22.55 && widget.pointerValue <=  25.65 && !widget.gender  && widget.age == 14 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 23.15 && widget.pointerValue <=  27.55 && widget.gender  && widget.age == 15 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 23.05 && widget.pointerValue <=  25.85 && !widget.gender  && widget.age == 15 ?Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 22.75 && widget.pointerValue <=  24.15 && widget.gender  && widget.age == 16 ?Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 23.65 && widget.pointerValue <=  25.95 && !widget.gender  && widget.age == 16 ?Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 23.35 && widget.pointerValue <= 25.65&& widget.gender  && widget.age == 17 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 23.65 && widget.pointerValue <=  25.75 && !widget.gender  && widget.age == 17 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 23.45 && widget.pointerValue <=  24.95 && widget.gender  && widget.age == 18 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : widget.pointerValue > 23.95 && widget.pointerValue <=  26.75 && !widget.gender  && widget.age == 18 ? Row(
                                      children: [
                                        SizedBox(width : 15),
                                        SizedBox(
                                          width : 22,
                                          child: Center(child: Icon(Icons.arrow_right,color:Colors.red)),
                                        ),
                                        Text("Overweight",style: TextStyle(fontSize: 12, color: Colors.red)),
                                        SizedBox(width: 225,),
                                        SizedBox(
                                            child: Text(getoverweightStatus(),style: TextStyle(fontSize: 12, color:Colors.red))),

                                      ],
                                    )
                                        : Row(
                                      children: [
                                        // SizedBox(
                                        //   height: 25,
                                        //   width: 22,),

                                        SizedBox( width: 37,height: 25,),
                                        SizedBox(child: Text("Overweight",style: TextStyle(fontSize: 12,),)),
                                        SizedBox(width: 225,),
                                        SizedBox(child: Text(getoverweightStatus() ,style: TextStyle(fontSize: 12),))
                                      ],
                                    ),
                                  ),
                                ],
                              ) :
                          Column(
                            children: [

                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  SizedBox (width: 10,),
                                   widget.pointerValue > 18.45 &&   widget.pointerValue <= 24.95  && widget.age > 18?
                                   SizedBox(
                                     height: 20,
                                    width: 18,
                                     child: Icon(Icons.arrow_right,color: Colors.green.shade400),) :
                                  SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Normal",style: TextStyle(fontSize: 12, color:  widget.pointerValue > 18.45 &&   widget.pointerValue <=24.95  && widget.age > 18? Colors.green.shade400 : Colors.black),),
                                  )),
                                  SizedBox(width: 238,),
                                  SizedBox(child: Text("18.4 - 24.9",style: TextStyle(fontSize: 12, color:  widget.pointerValue > 18.45 &&   widget.pointerValue <=24.95 && widget.age > 18? Colors.green.shade400 : Colors.black),))
                                ],
                              ),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  SizedBox (width: 10,),
                                   widget.pointerValue >24.95 &&   widget.pointerValue <= 29.95   && widget.age > 18?
                                  SizedBox(
                                     height: 20,
                                     width: 18,
                                     child: Icon(Icons.arrow_right,color:Colors.red ),
                                   )
                                   : SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Overweight",style: TextStyle(fontSize: 12,color:   widget.pointerValue >24.95 &&   widget.pointerValue <=29.95   && widget.age > 18? Colors.red : Colors.black ),),
                                  )),
                                  SizedBox(width: 220,),
                                  SizedBox(child: Text("25.0 - 29.9",style: TextStyle(fontSize: 12,color:   widget.pointerValue >24.95 &&   widget.pointerValue <=29.95   && widget.age > 18? Colors.red : Colors.black ),))
                                ],
                              ),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  SizedBox (width: 10,),
                                widget.pointerValue >29.95 &&   widget.pointerValue <=34.94   && widget.age > 18?
                                  SizedBox(
                                     height: 20,
                                     width: 18,
                                     child: Icon(Icons.arrow_right,color: Colors.red),
                                   ) :
                                  SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Obese Class I",style: TextStyle(fontSize: 12,color:  widget.pointerValue >29.95 &&   widget.pointerValue <= 34.95   && widget.age > 18? Colors.red : Colors.black),),
                                  )),
                                  SizedBox(width: 207,),
                                  SizedBox(child: Text("30.0 - 34.9",style: TextStyle(fontSize: 12,color:  widget.pointerValue >29.95 &&   widget.pointerValue <= 34.95   && widget.age > 18? Colors.red : Colors.black),))
                                ],
                              ),



                            ],
                          ),

                       ),
                       ///class2 and class 3
                       GaugeAnnotation(

                          angle: 51,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: 1.82,
                          verticalAlignment: GaugeAlignment.near,
                          widget:
                          widget.age <7
                              ?
                          Column(
                            children: [

                              Row(
                                children: [
                                  SizedBox (width: 10,),
                                  SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Obese Class II",style: TextStyle(fontSize: 12,),),
                                  )),
                                  SizedBox(width: 204.5,),
                                  SizedBox(child: Text("35.0 - 39.9",style: TextStyle(fontSize: 12),))
                                ],
                              ),
                              SizedBox(height: 7,),
                              Row(
                                children: [
                                  SizedBox (width: 10,),
                                  SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Obese Class III",style: TextStyle(fontSize: 12,),),
                                  )),
                                  SizedBox(width: 211.5,),
                                  SizedBox(child: Text("≥ 40.0",style: TextStyle(fontSize: 12),))
                                ],
                              ),

                            ],
                          )
                              : widget.age <=18
                              ?
                          Padding(
                       padding: const EdgeInsets.only(left: 15),
                     child: Column(
                      children: [


                SizedBox(height: 5,),
                Row(
                  children: [

                          widget.pointerValue > 23.0  && widget.gender  && widget.age == 7?  Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )


                              : widget.pointerValue > 23.05  && widget.gender  && widget.age == 7?  Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 21.05  && !widget.gender  && widget.age == 7 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 22.25  && widget.gender  && widget.age == 8 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 22.55 && !widget.gender  && widget.age == 8 ?  Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 23.35  && widget.gender  && widget.age == 9 ?  Row(
                            children: [
                              SizedBox(
                                width : 22,
                                child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                              ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 21.55  && !widget.gender  && widget.age == 9 ? Row(
                            children: [
                              SizedBox(
                                width : 22,
                                child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                              ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 23.35  && widget.gender  && widget.age == 10 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 25.55  && !widget.gender  && widget.age == 10 ? Row(
                            children: [
                              SizedBox(
                                width : 22,
                                child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                              ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 22.85 && widget.gender  && widget.age == 11 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 23.55 && !widget.gender  && widget.age == 11 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 23.35  && widget.gender  && widget.age == 12 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 24.75  && !widget.gender  && widget.age == 12 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 24.35  && widget.gender  && widget.age == 13 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 24.45  &&  !widget.gender  && widget.age == 13 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 25.95  &&  widget.gender  && widget.age == 14 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 25.65  &&  !widget.gender  && widget.age == 14 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 27.55  && widget.gender  && widget.age == 15 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 25.85  && !widget.gender  && widget.age == 15 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 24.15  && widget.gender  && widget.age == 16 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 25.95  && !widget.gender  && widget.age == 16 ? Row(children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 25.65  && widget.gender  && widget.age == 17 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 25.75  && !widget.gender  && widget.age == 17 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 24.95  &&  widget.gender  && widget.age == 18 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                              : widget.pointerValue > 26.75  && !widget.gender  && widget.age == 18 ? Row(
                            children: [
                              SizedBox(
                      width : 22,
                      child: Center(child: Icon(Icons.arrow_right,color: Colors.red)),
                    ),
                              SizedBox(width : 40,child: Text("Obese",style: TextStyle(fontSize: 12,color: Colors.red))),
                              SizedBox(width: 250,),
                              SizedBox(width : 40,child: Text(getobeseweightStatus(),style: TextStyle(fontSize: 12,color:Colors.red))),
                            ],
                          )
                             : Row(
                            children: [
                              SizedBox( width: 25,height: 25,),
                              SizedBox(child: Text("Obese",style: TextStyle(fontSize: 12,),)),
                              SizedBox(width: 245,),
                              SizedBox(child: Text(getobeseweightStatus() ,style: TextStyle(fontSize: 12),))
                            ],
                          ),
                  ],
                ),

              ],
            ),
          )
                              :
                          Column(
                            children: [

                              Row(
                                children: [
                                  SizedBox (width: 10,),
                                  widget.pointerValue > 34.95 &&   widget.pointerValue <=39.95   && widget.age > 18?
                                     SizedBox(
                                     height: 20,
                                     width: 18,
                                     child: Icon(Icons.arrow_right,color: Colors.red),
                                   ) :
                                  SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Obese Class II",style: TextStyle(fontSize: 12,color: widget.pointerValue > 34.95 &&   widget.pointerValue <=39.95   && widget.age > 18?  Colors.red : Colors.black),),
                                  )),
                                  SizedBox(width: 204.5,),
                                  SizedBox(child: Text("35.0 - 39.9",style: TextStyle(fontSize: 12,color: widget.pointerValue > 34.95 &&   widget.pointerValue <=39.95   && widget.age > 18?  Colors.red : Colors.black),))
                                ],
                              ),
                              SizedBox(height: 7,),
                              Row(
                                children: [
                                  SizedBox (width: 10,),
                                    widget.pointerValue >39.95  && widget.age > 18?
                                  SizedBox(
                                    height: 20,
                                    width: 18,
                                    child: Icon(Icons.arrow_right,color: Colors.red),
                                  ) :
                                  SizedBox( width: 18,height: 20,),
                                  SizedBox(child: Padding(
                                    padding: const EdgeInsets.only(left : 9,top: 3.5),
                                    child: Text("Obese Class III",style: TextStyle(fontSize: 12,color:  widget.pointerValue >39.95  && widget.age > 18?  Colors.red : Colors.black),),
                                  )),
                                  SizedBox(width: 211.5,),
                                  SizedBox(child: Text("≥ 40.0",style: TextStyle(fontSize: 12,color:  widget.pointerValue >39.95  && widget.age > 18?    Colors.red : Colors.black),))
                                ],
                              ),

                            ],
                          ),

                       ),

                       /// last part
                       GaugeAnnotation(
                          angle: 56,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: 1.9,
                          verticalAlignment: GaugeAlignment.near,
                          widget: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child : Divider(
                                thickness: .3,
                                color: Colors.black26,
                              )
                          )),
                       GaugeAnnotation(
                          angle: 59.5,
                          horizontalAlignment: GaugeAlignment.far,
                          positionFactor: 2.15,
                          verticalAlignment: GaugeAlignment.near,
                          widget: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("Normal Weight",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(width: 220,),
                                SizedBox(
                                  child:
                                       widget.pointerValue <= 10 && widget.age < 7 ? Text("...",style: TextStyle(fontSize: 12),)
                                            : widget.selecteditems2 == 'kg' && widget.age > 6  && widget.pointerValue > 10  ? Row(
                                          children: [
                                            Text('${getNormalweightlowervalue().toStringAsFixed(1)}',style: TextStyle(fontSize: 13)),
                                            Text('-'),
                                            Text('${getNormalweightupperrvalue().toStringAsFixed(1)}',style: TextStyle(fontSize: 13)),
                                            Text(" kg",style: TextStyle(fontSize: 13))
                                          ],
                                        )      
                                            : widget.selecteditems2 == 'lb' && widget.age > 6  && widget.pointerValue > 10  ? Row(
                                          children: [
                                            Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13)),
                                            Text('-'),
                                            Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13)),
                                            Text(" lb",style: TextStyle(fontSize: 13))
                                          ],
                                        )
                                           : widget.selecteditems2 == 'st' && widget.age > 6  && widget.pointerValue > 10  ? Row(
                                         children: [
                                           Text('${kgtolbs.toStringAsFixed(1)}',style: TextStyle(fontSize: 13)),
                                           Text('-'),
                                           Text('${kgtolbs2.toStringAsFixed(1)}',style: TextStyle(fontSize: 13)),
                                           Text(" lb",style: TextStyle(fontSize: 13))
                                         ],
                                       )
                                           
                                        :  Text("...",style: TextStyle(fontSize: 12),) ,


                                )
                              ],
                            ),
                          )),
                      
                    ],
                    pointers: <GaugePointer>[
                      MarkerPointer(
                        color: Colors.white,
                        markerOffset: 54,
                        animationDuration: 700,
                        animationType: AnimationType.linear,
                        enableAnimation: true,
                        value:
                            widget.age < 7
                            ? _markValue = 3.5
                            ///when age 7 to 18 its starting value
                                : widget.age >= 7 && widget.age <= 9 && widget.pointerValue <=11 ? _markValue = 3.5
                                : widget.age == 8 && !widget.gender  && widget.pointerValue <=12 ? _markValue = 3.5
                                : widget.age >= 10 && widget.age <= 11 && widget.pointerValue <=12 ? _markValue = 3.5
                                : widget.age == 12 && widget.gender  && widget.pointerValue <=13 ? _markValue = 3.5
                                : widget.age == 12 && !widget.gender  && widget.pointerValue <=12 ? _markValue = 3.5
                                : widget.age == 13 && widget.gender  && widget.pointerValue <=13 ? _markValue = 3.5
                                : widget.age >= 13 && widget.age <= 14 && !widget.gender && widget.pointerValue <=14 ? _markValue = 3.5
                                : widget.age == 14  && widget.gender && widget.pointerValue <=15 ? _markValue = 3.5
                                : widget.age == 15  && widget.pointerValue <=15 ? _markValue = 3.5
                                : widget.age == 16 && widget.gender  && widget.pointerValue <=15 ? _markValue = 3.5
                                : widget.age == 16 && !widget.gender  && widget.pointerValue <=16 ? _markValue = 3.5
                                : widget.age == 17 && !widget.gender && widget.pointerValue <=16 ? _markValue = 3.5
                                : widget.age == 17  && widget.gender && widget.pointerValue <=15 ? _markValue = 3.5
                                : widget.age == 18  && widget.pointerValue <=16 ? _markValue = 3.5

                         /// when age 7 to 18 ending value
                                : widget.age == 7 && widget.gender && widget.pointerValue >= 33 ? _markValue = 95.5
                                : widget.age == 7 && !widget.gender && widget.pointerValue >= 34 ? _markValue = 95.5
                                : widget.age == 8 && widget.pointerValue >= 34 ? _markValue = 95.5
                                : widget.age == 9 && widget.gender && widget.pointerValue >= 35 ? _markValue = 95.5
                                : widget.age == 9 && !widget.gender && widget.pointerValue >= 34 ? _markValue = 95.5
                                : widget.age >= 10 && widget.age <= 11 && widget.pointerValue >= 36 ? _markValue = 95.5
                                : widget.age == 12 && widget.gender && widget.pointerValue >= 36 ? _markValue = 95.5
                                : widget.age == 12 && !widget.gender && widget.pointerValue >= 37 ? _markValue = 95.5
                                : widget.age == 13 && widget.pointerValue >= 37 ? _markValue = 95.5
                                : widget.age >= 14 && widget.age <= 15 && widget.pointerValue >= 38 ? _markValue = 95.5
                                : widget.age == 16 && widget.gender && widget.pointerValue >= 38 ? _markValue = 95.5
                                : widget.age == 16 && !widget.gender && widget.pointerValue >= 39 ? _markValue = 95.5
                                : widget.age == 17 && widget.gender && widget.pointerValue >= 38 ? _markValue = 95.5
                                : widget.age == 17 && !widget.gender && widget.pointerValue >= 39 ? _markValue = 95.5
                                : widget.age == 18 && widget.gender && widget.pointerValue >= 38 ? _markValue = 95.5
                                : widget.age == 18 && !widget.gender && widget.pointerValue >= 39 ? _markValue = 95.5
                                : widget.age > 18 && widget.pointerValue <=16 ? _markValue = 3.5
                                : widget.age > 18 && widget.pointerValue >= 40 ? _markValue = 95.5
                                : _markValue = calculateMarkValue(widget.pointerValue,widget.age,widget.gender),

                        borderColor: Colors.white,
                        borderWidth: 5,
                        enableDragging: true,
                        markerType: MarkerType.triangle,
                        markerHeight: 10,
                        markerWidth: 12,
                       // onValueChangeStart: ,
                      )
                    ]
                )
              ],
            ),
          ),
    ),



        ],
      );
  }


  double calculateMarkValue(double pointerValue, double age,bool isfemale) {
    double start1 = 0;
    double mid1 = 0;
    double end1 = 0;
    double start2 = 0;
    double mid2 = 0;
    double end2 = 0;
    double start3 = 0;
    double mid3 = 0;
    double end3 = 0;

    if (isfemale) {
      switch (age) {
        case 7:
        ///fast part
          start1 = 11;
          end1 = 13.25;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 18.15;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 33.0;
          mid3 = (start3+end3)/2;
        case 8:
        ///fast part
          start1 = 11;
          end1 = 13.25;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 18.75;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 34.0;
          mid3 = (start3+end3)/2;
        case 9:
        ///fast part
          start1 = 11;
          end1 = 13.75;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 19.75;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 34.0;
          mid3 = (start3+end3)/2;

        case 10:
        ///fast part
          start1 = 12;
          end1 = 14.25;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 20.65;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 36;
          mid3 = (start3+end3)/2;

          case 11:
        ///fast part
          start1 = 12;
          end1 = 14.75;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 20.75;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 36;
          mid3 = (start3+end3)/2;
          case 12:
        ///fast part
          start1 = 13;
          end1 = 15.05;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 21.45;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 36;
          mid3 = (start3+end3)/2;
          case 13:
        ///fast part
          start1 = 13;
          end1 = 15.65;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 21.95;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 37;
          mid3 = (start3+end3)/2;
          case 14:
        ///fast part
          start1 = 15;
          end1 = 17.05;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 23.15;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 38;
          mid3 = (start3+end3)/2;
          case 15:
        ///fast part
          start1 = 15;
          end1 = 17.65;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 23.15;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 38;
          mid3 = (start3+end3)/2;
          case 16:
        ///fast part
          start1 = 15;
          end1 = 17.85;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 22.75;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 38;
          mid3 = (start3+end3)/2;
          case 17:
        ///fast part
          start1 = 15;
          end1 = 17.85;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 23.35;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 38;
          mid3 = (start3+end3)/2;
          case 18:
        ///fast part
          start1 = 16;
          end1 = 18.35;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 23.45;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 38;
          mid3 = (start3+end3)/2;




      }
    }
    else {
      switch (age) {
        case 7 :
          ///fast part
          start1 = 11;
          end1 = 13.65;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 19.15;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 34.0;
          mid3 = (start3+end3)/2;
        case 8:
        ///fast part
          start1 = 12;
          end1 = 14.25;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 19.25;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 34.0;
          mid3 = (start3+end3)/2;
        case 9:
        ///fast part
          start1 = 11;
          end1 = 13.75;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 19.35;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 34.0;
          mid3 = (start3+end3)/2;
        case 10:
        ///fast part
          start1 = 12;
          end1 = 14.65;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 21.35;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 36;
          mid3 = (start3+end3)/2;
        case 11:
        ///fast part
          start1 = 12;
          end1 = 14.35;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 21.15;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 36;
          mid3 = (start3+end3)/2;
        case 12:
        ///fast part
          start1 = 12;
          end1 = 14.85;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 21.95;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 37;
          mid3 = (start3+end3)/2;
           case 13:
        ///fast part
          start1 = 13;
          end1 = 16.25;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 21.65;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 37;
          mid3 = (start3+end3)/2;
        case 14:
        ///fast part
          start1 = 14;
          end1 = 16.75;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 22.55;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 38;
          mid3 = (start3+end3)/2;
        case 15:
        ///fast part
          start1 = 15;
          end1 = 17.85;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 23.05;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 38;
          mid3 = (start3+end3)/2;
        case 16:
        ///fast part
          start1 = 16;
          end1 = 18.55;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 23.65;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 39;
          mid3 = (start3+end3)/2;
        case 17:
        ///fast part
          start1 = 16;
          end1 = 18.65;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 23.65;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 39;
          mid3 = (start3+end3)/2;
        case 18:
        ///fast part
          start1 = 16;
          end1 = 18.65;
          mid1 = (start1+end1)/2;
          ///secend part
          start2 = end1;
          end2 = 23.95;
          mid2 = (start2+end2)/2;
          ///third part
          start3 = end2;
          end3 = 39;
          mid3 = (start3+end3)/2;

      }
    }

    if(pointerValue == 0)
      {
        return 0;
      }
    ///  when less then 18 its fast part
    else if (pointerValue <= mid1 ) {
      return 3.5 + (17 - 3.5) * ((pointerValue - start1) / (mid1 - start1));
    }
    else if ( pointerValue <= end1 ) {
      /// Linear interpolation between 17 and 33
      return 17 + (33 - 17) * ((pointerValue - mid1) / (end1 - mid1));
    }


    ///  when less then 18 its second part
    else if (pointerValue <= mid2) {
      return 33 + (49.5 - 33) * ((pointerValue - start2) / (mid2 - start2));
    }
    else if ( pointerValue <= end2) {
      /// Linear interpolation between 17 and 33
      return 49.5 + (66 - 49.5) * ((pointerValue - mid2) / (end2 - mid2));
    }


    ///  when less then 18 its third part
    else if (pointerValue <= mid3) {
      return 66 + (82.5 - 66) * ((pointerValue - start3) / (mid3 - start3));
    }
    else if ( pointerValue <= end3) {
      /// Linear interpolation between 17 and 33
      return 82.5 + (95.5 - 82.5) * ((pointerValue - mid3) / (end3 - mid3));
    }



    /// when age value greater tjen 18  {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{
    ///For range 16 to 18.5
    else if (pointerValue <= 17.25 && age >18) {
      /// Linear interpolation between 3.5 and 17
      return 3.5 + (17 - 3.5) * ((pointerValue - 16) / (17.25 - 16));
    } else if ( pointerValue <= 18.5 && age >18) {
      /// Linear interpolation between 17 and 33
      return 17 + (33 - 17) * ((pointerValue - 17.25) / (18.50 - 17.25));
    }

    ///For range 18.5 to 25...............
    else if (pointerValue <= 21.75 && age >18) {
      /// Linear interpolation between 33 and 49.5
      return 33 + (49.5 - 33) * ((pointerValue - 18.5) / (21.75 - 18.5));
    } else if ( pointerValue <=25 && age >18) {
      /// Linear interpolation between 49.5 and 66
      return 49.5 + (66 - 49.5) * ((pointerValue - 21.75) / (25 - 21.75));
    }

 ///For range 25 to 40.........................
    else if (pointerValue <= 32.5 && age >18) {
      /// Linear interpolation between 66 and 82.5
      return 66 + (82.5 - 66) * ((pointerValue - 25) / (32.5 - 25));
    } else {
      /// Linear interpolation between 82.5 and 95.5
      return 82.5 + (95.5 - 82.5) * ((pointerValue - 32.5) / (40 - 32.5));
    }
/// }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
  }

   double calculateWeightThreshold(bool isFemale, int age) {
     double baseThreshold;
     if (isFemale) {
       switch (age) {
         case 8:
           baseThreshold = 13.2;
           break;
         case 9:
           baseThreshold = 13.7;
           break;
         case 10:
           baseThreshold = 14.2;
           break;
         case 11:
           baseThreshold = 14.7;
           break;
         case 12:
           baseThreshold = 15.0;
           break;
         case 13:
           baseThreshold = 15.6;
           break;
         case 14:
           baseThreshold = 17.0;
           break;
         case 15:
           baseThreshold = 17.6;
           break;
         case 16:
           baseThreshold = 17.8;
           break;
         case 17:
           baseThreshold = 17.8;
           break;
         default:
           throw Exception("Invalid age.");
       }
     } else {
       switch (age) {
         case 8:
           baseThreshold = 14.2;
           break;
         case 9:
           baseThreshold = 13.7;
           break;
         case 10:
           baseThreshold = 14.6;
           break;
         case 11:
           baseThreshold = 14.3;
           break;
         case 12:
           baseThreshold = 14.8;
           break;
         case 13:
           baseThreshold = 16.2;
           break;
         case 14:
           baseThreshold = 16.7;
           break;
         case 15:
           baseThreshold = 17.8;
           break;
         case 16:
           baseThreshold = 18.5;
           break;
         case 17:
           baseThreshold = 18.6;
           break;
         default:
           throw Exception("Invalid age.");
       }
     }

     return baseThreshold;
   }


}


