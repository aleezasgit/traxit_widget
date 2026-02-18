import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traxit/app_bar/app_bar.dart';
import 'package:traxit/configs/configs.dart';
import 'package:traxit/screens/widget/arrow.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Scaffold(
      appBar: const CustomAppBar(
        type: AppBarType.textOnlyLeft,
        title: 'Profile',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: Space.hf(24),
          color: AppTheme.c.background.main,
          child: Column(
            children: [

              /// ================= PROFILE IMAGE =================
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                      'assets/pngs/OB_2.png',
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                    ),
                  ),

                  /// Floating Edit Icon (Centered Bottom)
                  Positioned(
                    bottom: -10.h,
                    child: Container(
                      height: 22.h,
                      width: 22.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppTheme.c.primary.shade100,
                        
                        
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/svgs/tabler_edit.svg',
                          width: 14.w,
                          height: 14.h,
                          colorFilter: ColorFilter.mode(
                            AppTheme.c.primary.main!,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Space.yf(12),

              Text(
                "Cody Fisher",
                style: AppText.h5bm,
              ),

              Space.yf(5),

              Text(
                "@cody.fisher",
                style: AppText.b2?.w(4).cl(AppTheme.c.text.main!),
              ),

              Space.yf(16),

              /// ================= MENU ITEMS =================

              _menuTile(
                iconPath: 'assets/svgs/tabler_edit.svg',
                title: 'Edit Profile',
                onTap: () {},
              ),

              Space.yf(14),

              _menuTile(
                iconPath: 'assets/svgs/locked-02.svg',
                title: 'Privacy Policy',
                onTap: () {},
              ),

              Space.yf(14),

              _menuTile(
                iconPath: 'assets/svgs/shield-key-hole.svg',
                title: 'Terms & conditions',
                onTap: () {},
              ),

              Space.yf(16),

              /// ================= DELETE ACCOUNT BUTTON =================
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: Space.vf(14),
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppTheme.c.primary.main,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/Vector.svg',
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                          AppTheme.c.white!,
                          BlendMode.srcIn,
                        ),
                      ),
                      Space.xf(8),
                      Text(
                        "Delete account",
                        style: AppText.b1b?.w(7).cl(AppTheme.c.white!),
                      ),
                    ],
                  ),
                ),
              ),

              Space.yf(7),

              /// ================= LOG OUT BUTTON =================
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: Space.vf(15),
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppTheme.c.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: AppTheme.c.lightGrey.main!,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Log out",
                      style: AppText.b1bm?.w(6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// ================= MENU TILE WIDGET =================
  Widget _menuTile({
    required String iconPath,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: Space.all(8),
        decoration: BoxDecoration(
          color: AppTheme.c.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            Container(
              padding: Space.all(5.5),
              decoration: BoxDecoration(
                color: AppTheme.c.primary.shade100,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: SvgPicture.asset(
                iconPath,
                width: 24.w,
                height: 24.h,
              ),
            ),

            Space.xf(12),

            Expanded(
              child: Text(
                title,
                style: AppText.b1bm?.w(6),
              ),
            ),

            Arrow()
          ],
        ),
      ),
    );
  }
}
