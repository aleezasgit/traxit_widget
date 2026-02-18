import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traxit/app_bar/app_bar.dart';
import 'package:traxit/configs/configs.dart';
import 'package:traxit/screens/widget/policy_sec.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Scaffold(
      appBar: const CustomAppBar(
        type: AppBarType.withText,
        title: 'Terms & conditions',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: Space.hf(24),
          decoration: BoxDecoration(
            color: AppTheme.c.background.main,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              PolicySection(
                title: 'Use of the App',
                description:
                    'You may use this app only for lawful purposes and in accordance with these Terms. You agree not to misuse the app, interfere with its operation, or attempt to access any unauthorized areas of the app or its services.',
              ),

              Space.yf(16),

              PolicySection(
                title: 'Account Registration',
                description:
                    'To use certain features, you may need to create an account. You are responsible for maintaining the confidentiality of your login credentials and for all activities that occur under your account. Notify us immediately of any unauthorized use.',
              ),

              Space.yf(16),

              PolicySection(
                title: 'Privacy & Data',
                description:
                    'Your use of the app is also governed by our Privacy Policy. By using this app, you consent to the collection, storage, and use of your information as described in the Privacy Policy.',
              ),

              Space.yf(16),

              PolicySection(
                title: 'Intellectual Property',
                description:
                    'All content, design, graphics, and features of the app are the intellectual property of Traxit or its licensors. You may not copy, reproduce, or distribute any part of the app without prior written permission.',
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}


