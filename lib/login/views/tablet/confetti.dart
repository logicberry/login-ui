import 'dart:async';
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grow/components/app_bar.dart';
import 'package:grow/components/button.dart';
import 'package:grow/constants/colors.dart';

class RatingsPage extends StatefulWidget {
  static const String routeName = '/ratings-screen';
  const RatingsPage({super.key});

  @override
  State<RatingsPage> createState() => _RatingsPageState();
}

class _RatingsPageState extends State<RatingsPage> {
  final ConfettiController _confettiController = ConfettiController();
  double userRating = 0.0;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      _confettiController.play();
      Timer(const Duration(seconds: 10), () {
        _confettiController.stop();
      });
    });
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        implyLeading: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                ConfettiWidget(
                  confettiController: _confettiController,
                  blastDirection: -pi,
                  particleDrag: 0.05,
                  emissionFrequency: 0.05,
                  numberOfParticles: 30,
                  maxBlastForce: 10,
                  minBlastForce: 2,
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.pink,
                    Colors.orange,
                  ],
                ),
                Card(
                  elevation: 20,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Congratulations!',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: AppColors.primaryColor),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'You just completed the course. Well done!',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: AppColors.black),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'How was your experience so far?',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 20),
                        RatingBar.builder(
                          initialRating: 0.0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              userRating = rating;
                            });
                          },
                        ),
                        const SizedBox(height: 15),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Very Bad',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(color: AppColors.primaryColor),
                              ),
                              Text(
                                'Very Good',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(color: AppColors.primaryColor),
                              ),
                            ]),
                        const SizedBox(height: 30),
                        GrowButton(
                          text: 'Submit',
                          textcolor: AppColors.white,
                          onpress: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


fformvalidator
void registerUser() {
    if (!_registerKey.currentState!.validate()) {
      return;
    }

    if (!isChecked) {
      errorMessage(
          message: 'Please click the checkbox to continue', context: context);
      return;
    }

    if (!FormValidations.isName(_firstName.text)) {
      errorMessage(message: 'Invalid first name', context: context);
      return;
    }

    if (!FormValidations.isName(_lastName.text)) {
      errorMessage(message: 'Invalid last Name', context: context);
      return;
    }

    if (!FormValidations.isPhone(_phoneNumber.text)) {
      errorMessage(message: 'Invalid Phone Number', context: context);
      return;
    }

    if (!FormValidations.isEmail(_email.text)) {
      errorMessage(message: 'Invalid email', context: context);
      return;
    }
    if (!FormValidations.isPassword(_password.text)) {
      errorMessage(
          message: 'Password must be at least 8 characters long',
          context: context);
      return;
    }

    form validator
    class FormValidations {
  const FormValidations._();

  static final RegExp _emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  static bool isEmail(String? value) =>
      value != null && value.isNotEmpty && _emailRegex.hasMatch(value);

  static bool isPassword(String? value) =>
      value != null && value.trim().length > 8;

  static bool isName(String? value) => value != null && value.trim().length > 2;

  static bool isPhone(String? value) =>
      value != null && value.trim().length > 8;
}


//farmschool navigateall
 import 'package:flutter/material.dart';
import 'package:grow/components/app_bar.dart';
import 'package:grow/components/button.dart';
import 'package:grow/components/snackbar.dart';
import 'package:grow/constants/colors.dart';
import 'package:grow/features/FarmSchool/controllers/farm_school_services.dart';
import 'package:grow/features/FarmSchool/screens/ratings_page.dart';
import 'package:grow/models/module.dart';
import 'package:grow/models/sub_module.dart';
import 'package:grow/models/syllabus.dart';

class CourseContentScreen extends StatefulWidget {
  static const String routeName = '/submodule-screen';
 final List<Module> modules;
  final Module module;
  const CourseContentScreen(
      {super.key, required this.modules,required this.module });

  @override
  State<CourseContentScreen> createState() => _CourseContentScreenState();
}

class _CourseContentScreenState extends State<CourseContentScreen> {
  final FarmSchoolServices farmschool = FarmSchoolServices();
  int currentModuleIndex = 0;
  int currentSubmoduleIndex = 0;
  SubModuleModel? subModuleData;
  @override
  void initState() {
    getSubModule();
    super.initState();
  }

  void getSubModule() async {
    subModuleData = await farmschool.fetchSubModule(
        context: context,submoduleId: widget.modules[currentModuleIndex].id);
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
     Module currentModule = widget.modules[currentModuleIndex];
    SubModule currentSubmodule =
        currentModule.submodules[currentSubmoduleIndex];
    return Scaffold(
        appBar: AppBarWidget(
          implyLeading: true,
          title: Text(currentSubmodule.title,
              style: Theme.of(context).textTheme.displayMedium),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subModuleData!.subModule.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      subModuleData!.subModule.contents,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 15),
                    const Spacer(),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: GrowButton(
                            text: 'Prev',
                            color: Colors.grey[400],
                            textcolor: AppColors.black,
                            onpress: () {
                             setState(() {
                                currentSubmoduleIndex--;
                                if (currentSubmoduleIndex < 0) {
                                  currentModuleIndex--;
                                  if (currentModuleIndex <= 0) {
                                    errorMessage(
                                      context: context,
                                      message: 'You\'ve reached the beginning',
                                    );
                                    currentModuleIndex = 0;
                                    currentSubmoduleIndex = 0;
                                  } else {
                                    currentSubmoduleIndex = widget
                                            .modules[currentModuleIndex]
                                            .submodules
                                            .length -
                                        1;
                                  }
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: GrowButton(
                          text: 'Next',
                          textcolor: AppColors.white,
                          onpress: () {
                            setState(() {
                              currentSubmoduleIndex++;
                              if (currentSubmoduleIndex >=
                                  currentModule.subModules.length) {
                                currentModuleIndex++;
                                currentSubmoduleIndex = 0;
                                if (currentModuleIndex >=
                                    widget.modules.length) {
                                  Navigator.pushNamed(
                                    context,
                                    RatingsPage.routeName,
                                    arguments: RatingsPage(
                                        courseId: widget.module.course),
                                  );
                                }
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
