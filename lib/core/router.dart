import 'package:axio_driver/splash_screen.dart';
import 'package:axio_driver/views/HomeView/home_view.dart';
import 'package:axio_driver/views/MapView/mapView_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:axio_driver/models/destination_model.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: "/SplashScreen",
    errorPageBuilder: (context, state) {
      return _pageSimpleRoute(
        const Scaffold(),
      );
      //return _pageAnimatedRoute(const ErrorPage());
    },
    routes: <GoRoute>[
      // TestScreen
      GoRoute(
        path: '/SplashScreen',
        name: "SplashScreen",
        pageBuilder: (context, state) {
          return _pageSimpleRoute(
            const SplashScreen(),
          );
        },
      ),
      // GoRoute(
      //     path: '/SignIn',
      //     name: "SignIn",
      //     pageBuilder: (context, state) {
      //       return _pageSimpleRoute(
      //         const SignInPage(),
      //       );
      //     }),

      // GoRoute(
      //     path: '/SignUp',
      //     name: "SignUp",
      //     pageBuilder: (context, state) {
      //       return _pageSimpleRoute(
      //         const SignUpPage(),
      //       );
      //     }),

      GoRoute(
        path: '/HomePage',
        name: "HomePage",
        pageBuilder: (context, state) {
          return _pageSimpleRoute(
            const HomePage(),
          );
        },
      ),
      GoRoute(
        path: '/mapViewRoute',
        name: 'mapViewRoute',
        pageBuilder: (context, state) {
          final destinationResponse = state.extra as DestinationResponse;
          return _pageSimpleRoute(
            MapviewPage(
              destinationResponse: destinationResponse,
            ),
          );
        },
      ),
    ],
  );

  /// Create Custom Transition for Navigation
  static Page<void> _pageAnimatedRoute(Widget page) {
    return CustomTransitionPage(
      child: page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static bool parseBool(String value) {
    return value.toLowerCase() == 'true';
  }

  /// Navigation Without Transition (Animtaion)
  static Page<void> _pageSimpleRoute(Widget page) {
    return CustomTransitionPage(
      child: page,
      transitionsBuilder: (_, anim, __, child) =>
          FadeTransition(opacity: anim, child: child),
    );
  }
}
