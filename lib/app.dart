import 'package:flutter/material.dart';
import 'config/app_router.dart';
import 'package:dio/dio.dart';


final dio = Dio();
final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}