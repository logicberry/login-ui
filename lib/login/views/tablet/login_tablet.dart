import 'package:authify/login/widgets/button.dart';
import 'package:authify/login/widgets/textfield.dart';
import 'package:authify/utils/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTabletView extends StatefulWidget {
  const LoginTabletView({super.key});

  @override
  State<LoginTabletView> createState() => _LoginTabletViewState();
}

class _LoginTabletViewState extends State<LoginTabletView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              Text('Your Logo',
                  style: GoogleFonts.ibmPlexMono(
                      fontSize: 20, fontWeight: FontWeight.w600)),
              const Gap(40),
              Text('Sign in',
                  style: GoogleFonts.ibmPlexMono(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              const Gap(35),
              Text.rich(
                TextSpan(
                    text: 'If you don’t have an account register You can',
                    style: GoogleFonts.ibmPlexMono(fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: ' Register here !',
                          style: GoogleFonts.ibmPlexMono(
                              color: Colors.red, fontWeight: FontWeight.w500))
                    ]),
              ),
              const Gap(50),
              CustomTextField(
                  prefixIcon: SvgPicture.asset(
                    SvgIcons.message,
                    width: 12,
                    height: 12,
                    fit: BoxFit.scaleDown,
                  ),
                  label: 'Email',
                  controller: emailController,
                  hintText: 'Enter your email address'),
              const Gap(30),
              CustomTextField(
                  prefixIcon: SvgPicture.asset(
                    SvgIcons.padlock,
                    width: 12,
                    height: 12,
                    fit: BoxFit.scaleDown,
                  ),
                  suffixIcon: SvgPicture.asset(
                    SvgIcons.save,
                    width: 12,
                    height: 12,
                    fit: BoxFit.scaleDown,
                  ),
                  label: 'Password',
                  controller: passwordController,
                  hintText: 'Enter your password'),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          value: true,
                          onChanged: (v) {},
                        ),
                      ),
                      const Gap(10),
                      Text(
                        'Remember me',
                        style: GoogleFonts.ibmPlexMono(color: Colors.black),
                      ),
                    ],
                  ),
                  Text('Forgot Password?', style: GoogleFonts.ibmPlexMono())
                ],
              ),
              const Gap(40),
              CustomButton(
                text: 'Login',
                onTap: () {},
                color: Colors.red,
              ),
              const Gap(25),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'or continue with',
                  style: GoogleFonts.ibmPlexMono(
                      fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(SvgIcons.facebook),
                  const Gap(10),
                  SvgPicture.asset(SvgIcons.apple),
                  const Gap(10),
                  SvgPicture.asset(SvgIcons.google),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
