import 'package:axio_driver/core/router.dart';
import 'package:axio_driver/core/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AxioApp extends StatelessWidget {
  const AxioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: themeData,
              title: 'LocalAlgerianRestaurantsApp',
              routerConfig: AppRouter.router,
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context),
                  child: ScrollConfiguration(
                      behavior: const CupertinoScrollBehavior(),
                      child: child ?? const Scaffold()),
                );
              });
        });
  }
}
