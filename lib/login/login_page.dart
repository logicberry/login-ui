import 'package:authify/login/views/desktop/login_desktop.dart';
import 'package:authify/login/views/mobile/login_mobile.dart';
import 'package:authify/login/views/tablet/login_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const LoginMobileView(),
      tablet: (context) => const LoginTabletView(),
      desktop: (context) => const LoginDesktopView(),
    );
  }
}
