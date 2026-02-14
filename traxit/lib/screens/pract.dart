import 'package:flutter/material.dart';
import 'package:traxit/configs/configs.dart';
import 'package:traxit/router/router.dart';
import 'package:traxit/screens/policy.dart';
import 'package:traxit/screens/widget/course_card.dart';
import 'package:traxit/screens/widget/penalty.dart';
import 'package:traxit/screens/widget/short_lap.dart';
import 'package:traxit/screens/widget/student_card.dart';
import 'package:traxit/screens/widget/penalty.dart';
import 'package:traxit/screens/widget/time_based.dart';
import 'package:traxit/screens/widget/grade_breakdown.dart';
import 'package:traxit/screens/policy.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    App.init(context);
    return Scaffold(
     
      
      body: 
       SingleChildScrollView(
         child: Container(
          color: AppTheme.c.black,
           child: Column(
            
            
            children: [
            
              ShortLapCard(
                ontap: (){},
                 date: '5 May 2019',
                 title: 'Lap 1',
                 duration: '1h 30min',
                 students: '12 students',
                ),
                Space.yf(8),

                StudentCard(
                  name: 'Cody Fisher',
                  completionTime: 'Completion time: 1h 15min',
                  onTap: () {
                  print("Card tapped");
  },
),


            Space.yf(10),


            Penalty(name: 'Cody',
             completionTime: 'Completion time: 1h 15min',
              showPenalty: 'over time: 1h 15min',
              overtime: '1hr 4mins'),

              Space.yf(10),
            
                CourseCard(
               title: "Daily Focus Builder",
               description:
      "Strengthen your concentration and build a habit of focused, distraction-free work every day.",
              duration: "1h 30min",
),
Space.yf(10),


  TimeBasedPenaltiesContainer(
  title: "Time-Based Penalties",
  items: [
    PenaltyItem(
      title: "Overtime (per lap)",
      subtitle: "Every 30s past target time",
      points: "5",
    ),
    PenaltyItem(
      title: "Limit Exceeded",
      subtitle: "More than 5 mins overtime",
      points: "-10 ",
     
    ),
    PenaltyItem(
      title: "Overtime (per lap)",
      subtitle: "Every 30s past target time",
      points: "-5",
    ),
    PenaltyItem(
      title: "Overtime (per lap)",
      subtitle: "Every 30s past target time",
      points: "-5",
    ),


  ],
),
Space.yf(10),
    StudentResultCard(
  name: 'Cody Fisher',
  average: 92,
  points: 95,
  grade: 'A',
  progress: 0.50,
  onTap: () {},
),

      GestureDetector(
        onTap: () {
          navigateToScreen(context, PrivacyPolicyScreen());
        },
        child: Container(
          color: AppTheme.c.purple,
          width: double.infinity,
          
            
        ),
      )


   

                
            ],
          
                 ),
         ),
       ),
    );
  }
}