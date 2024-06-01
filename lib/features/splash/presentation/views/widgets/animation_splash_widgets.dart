import 'package:flutter/material.dart';
import 'package:simple_books_store/core/utils/assets_data.dart';

class AnimationSplashWidgets extends StatelessWidget {
  const AnimationSplashWidgets({
    super.key,
    required AnimationController animationController,
    required Animation<double> fadeAnimation,
    required Animation<double> scalingAnimation,
    required Animation<Offset> slidingAnimation,
  })  : _animationController = animationController,
        _fadeAnimation = fadeAnimation,
        _scalingAnimation = scalingAnimation,
        _slidingAnimation = slidingAnimation;

  final AnimationController _animationController;
  final Animation<double> _fadeAnimation;
  final Animation<double> _scalingAnimation;
  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return FadeTransition(
          opacity: _fadeAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ScaleTransition(
                scale: _scalingAnimation,
                child: Image.asset(
                  AssetsData.logoText,
                ),
              ),
              SlideTransition(
                position: _slidingAnimation,
                child: const Center(
                  child: Text(
                    'Sail the world of free books',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
