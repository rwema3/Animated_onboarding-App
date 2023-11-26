import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:animated_onboarding/model/onboard_page_item.dart';
import 'package:animated_onboarding/components/fading_sliding_widget.dart';
import 'package:animated_onboarding/screens/onboard/welcome_page.dart';
import 'package:animated_onboarding/screens/onboard/onboard_page.dart';
import 'package:animated_onboarding/screens/mainscreen.dart';

class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> with SingleTickerProviderStateMixin {
  List<OnboardPageItem> onboardPageItems = [
    OnboardPageItem(
      lottieAsset: 'assets/animations/video_call.json',
      text: 'See friends stories and events going on around you',
    ),
    OnboardPageItem(
      lottieAsset: 'assets/animations/work_from_home.json',
      text: 'See friends stories and events going on around you',
      animationDuration: const Duration(milliseconds: 1100),
    ),
    OnboardPageItem(
      lottieAsset: 'assets/animations/group_working.json',
      text: 'See friends stories and events going on around you',
    ),
  ];

  PageController? _pageController;

  List<Widget> onboardItems = [];
  double _activeIndex = 0.0;
