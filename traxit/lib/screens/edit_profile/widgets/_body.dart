part of '../edit_profile.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final state = _ScreenState.s(context, true);
    App.init(context);

    return Scaffold(
      backgroundColor: AppTheme.c.background.main, 
      appBar: const CustomAppBar(
        type: AppBarType.withText,
        title: 'Edit Profile',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 16.h,
          bottom: MediaQuery.of(context).padding.bottom + 24.h,
          left: 24.w,
          right: 24.w,
        ),
        child: FormBuilder(
          key: state.formKey,
          initialValue: _FormData.initialValues(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// ================= PROFILE IMAGE =================
              Center(
                child: Stack(
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
                            // colorFilter: ColorFilter.mode(
                            //   AppTheme.c.primary.main!,
                            //   BlendMode.srcIn,
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Space.yf(1),

              Center(
                child: Text(
                  "Cody Fisher",
                  style: AppText.h5bm,
                ),
              ),
              Space.yf(5),

              Center(
                child: Text(
                  "@cody.fisher",
                  style: AppText.b2?.w(4).cl(AppTheme.c.text.main!),
                ),
              ),

              Space.yf(24),

              /// ================= GENERAL INFO =================
              Text(
                "General Info",
                style: AppText.h5bm?.w(5),
              ),

              Space.yf(10),

              AppTextField(
                name: _FormKeys.userName,
                type: TextFieldType.withLabelAndIcon,
                hint: 'Enter your username',
                label: 'Username',
                textInputAction: TextInputAction.next,
                prefixIcon: _icon('assets/svgs/user.svg'),
              ),

              Space.yf(10),

              AppTextField(
                name: _FormKeys.email,
                textInputType: TextInputType.emailAddress,
                type: TextFieldType.withLabelAndIcon,
                hint: 'Enter your email',
                label: 'Email address',
                textInputAction: TextInputAction.next,
                prefixIcon: _icon('assets/svgs/mail.svg'),
              ),

              Space.yf(10),

              AppTextField(
                name: _FormKeys.phone,
                textInputType: TextInputType.phone,
                type: TextFieldType.withLabelAndIcon,
                hint: 'Enter your phone number',
                label: 'Phone number',
                textInputAction: TextInputAction.next,
                prefixIcon: _icon('assets/svgs/phone.svg'),
              ),

              Space.yf(24),

              /// ================= SECURITY SETTINGS =================
              Text(
                "Security Settings",
                style: AppText.h5bm?.w(5),
              ),

              Space.yf(12),

              AppTextField(
                name: _FormKeys.oldPassword,
                isPass: true,
                type: TextFieldType.withLabelAndIcon,
                hint: 'Enter your old password',
                label: 'Old Password',
                textInputAction: TextInputAction.next,
                prefixIcon: _icon('assets/svgs/lock.svg'),
              //  suffixIcon: _icon('assetssvgs/eye.svg'),
              ),

              Space.yf(10),

              AppTextField(
                name: _FormKeys.newPassword,
                isPass: true,
                type: TextFieldType.withLabelAndIcon,
                hint: 'Enter your new password',
                label: 'New Password',
                textInputAction: TextInputAction.next,
                prefixIcon: _icon('assets/svgs/lock.svg'),
               // suffixIcon: _icon('assetssvgs/eye.svg'),
              ),

              Space.yf(10),

              AppTextField(
                name: _FormKeys.confirmPassword,
                
                isPass: true,
                
                type: TextFieldType.withLabelAndIcon,
                hint: 'Confirm your new password',
                label: 'Confirm New Password',
                textInputAction: TextInputAction.done,
                prefixIcon: _icon('assets/svgs/lock.svg'),
                //suffixIcon: _icon('assetssvgs/eye.svg'),
              
              ),

              Space.yf(24),

              /// ================= SAVE BUTTON =================
              GestureDetector(
                onTap: () {
                  if (state.formKey.currentState?.saveAndValidate() ?? false) {
                    Navigator.pop(context);
                  }
                },
                child: Container(
                  height: 52.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppTheme.c.primary.main,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Center(
                    child: Text(
                      "Save Changes",
                      style: AppText.b1b?.w(7).cl(AppTheme.c.white!),
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

//   /// Reusable SVG icon widget
  Widget _icon(String path) {
    return Padding(
       padding: EdgeInsets.only(left: 12.w, right: 8.w),
      child: SvgPicture.asset(
        path,
        width: 24.w,
        height: 24.h,
      ),
    );
  }
}
