import 'dart:async';
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
  late Animation<double> _scaleAnimation;
  late Animation<double> _progressAnimation;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animController,
      curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
    ));

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animController,
      curve: const Interval(0.2, 0.7, curve: Curves.easeOutBack),
    ));

    _progressAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animController,
      curve: const Interval(0.3, 0.9, curve: Curves.easeInOut),
    ));

    _animController.forward();
    _initializeNavigation();
  }

  Future<void> _initializeNavigation() async {
    await Future.delayed(const Duration(seconds: 3));

    if (mounted) {
      setState(() => _isLoading = false);

      await _animController.reverse();

      if (mounted) {
        GoRouter.of(context).go('/HomePage');
      }
    }
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final logoSize = size.width * 0.5;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FadeTransition(
                opacity: _fadeAnimation,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: logoSize,
                      maxHeight: logoSize,
                    ),
                    child: Image.asset(
                      'assets/axio_logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (_isLoading)
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor,
                  ),
                  strokeWidth: 3,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
