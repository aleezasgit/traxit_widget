import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traxit/app_bar/app_bar.dart';
import 'package:traxit/configs/configs.dart';
import 'package:traxit/screens/widget/policy_sec.dart';


class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);
    return Scaffold(
      
      appBar:  CustomAppBar(
        type: AppBarType.withText,
        title: 'Privacy policy',
      ),
      body: SingleChildScrollView(
        
       // padding: Space.hf(24) ,
        
      
        child: Container(
          padding: Space.hf(24),
          decoration: BoxDecoration(
            color:  AppTheme.c.background.main
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              PolicySection(
                title: 'Information We Collect',
                description:
                    'We collect information that helps us provide a better app experience. This includes personal details like your name, email, and profile information, as well as health or activity data you choose to share, such as laps, heart rate, or completion time. We also collect usage and device data to help improve performance, troubleshoot issues, and enhance app functionality.',
              ),
          
              Space.yf(16),
          
              PolicySection(
                title: 'How We Use Your Information',
                description:
                    'The information we collect is used to deliver, personalize, and improve app features. Your activity and progress data allow us to provide meaningful insights and track your performance. Additionally, we may use your information to send important updates, ensure security, and prevent misuse of the app.',
              ),
          
              Space.yf(16),
          
              PolicySection(
                title: 'Data Sharing',
                description:
                    'We do not sell your personal information to third parties. Your data may only be shared with trusted service providers who assist in operating the app, or if required by law to ensure safety and compliance. Any sharing of information always follows strict privacy standards and is limited to what is necessary.',
              ),
              // GestureDetector(
              //   onTap: Navigator.new,
              //   child: Container(
              //     color: AppTheme.c.purple,
              //   ),
              // )
            ],
         
          ),
        ),
      
      ),
    );  }
}

  
  