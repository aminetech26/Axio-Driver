import 'dart:async';
import 'package:axio_driver/core/app_colors.dart';
import 'package:axio_driver/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation; // new scale animation

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animController,
      curve: Curves.easeIn,
    ));

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animController,
      curve: Curves.easeOut,
    )); // initialize scale animation

    _animController.forward();

    _initializeNavigation();
  }

  Future<void> _initializeNavigation() async {
    Timer(const Duration(seconds: 5), () {
      _animController.reverse().then((_) {
        if (mounted) {
          GoRouter.of(context).go('/HomePage');
        }
      });
    });
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Center(
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset(
                'assets/axio_logo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
