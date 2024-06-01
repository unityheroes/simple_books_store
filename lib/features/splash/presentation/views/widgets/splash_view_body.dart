import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_books_store/constants.dart';
import 'package:simple_books_store/features/home/presentation/views/home_view.dart';
import 'package:simple_books_store/features/splash/presentation/views/widgets/animation_splash_widgets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;
  late Animation<double> _scalingAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimationSplashWidgets(
        animationController: _animationController,
        fadeAnimation: _fadeAnimation,
        scalingAnimation: _scalingAnimation,
        slidingAnimation: _slidingAnimation);
  }

  // animations
  void initAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 8), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _animationController, curve: Curves.easeInOut));

    _scalingAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    _animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTranstionDuration);
    });
  }
}
