import 'package:auto_route/auto_route.dart';
import 'package:flutter_sliver_tutorial/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|Example,Route')
class AppRoutes extends $AppRoutes {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
    ),
    AutoRoute(
      page: SliverPersistantHeaderRoute.page,
      path: '/sliver-persistant-header',
    ),
    AutoRoute(
      page: SliverListRoute.page,
      path: '/sliver-list-example',
    ),
    AutoRoute(
      page: SliverListWithGridRoute.page,
      path: '/sliver-list-with-grid-example',
    ),
    AutoRoute(
      page: SliverGridRoute.page,
      path: '/sliver-grid-example',
    ),
  ];
}

// @RoutePage()
// class HomeTabPage extends AutoRouter {
//   const HomeTabPage({super.key});
// }
