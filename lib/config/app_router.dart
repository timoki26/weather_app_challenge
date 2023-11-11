import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app_challenge/src/home_page/view/home_screen.dart';

import '../src/details_page/view/details_screen.dart';


part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, initial: true, path: '/'),
    AutoRoute(page: DetailsRoute.page, path: '/details'),
  ];
}