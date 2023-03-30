// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_sliver_tutorial/screens/home_screen.dart' as _i4;
import 'package:flutter_sliver_tutorial/screens/sliver_grid_example.dart'
    as _i3;
import 'package:flutter_sliver_tutorial/screens/sliver_list_example.dart'
    as _i2;
import 'package:flutter_sliver_tutorial/screens/sliver_persistant_header_screen.dart'
    as _i1;

abstract class $AppRoutes extends _i5.RootStackRouter {
  $AppRoutes([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SliverPersistantHeaderRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SliverPersistantHeaderScreen(),
      );
    },
    SliverListRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SliverListScreen(),
      );
    },
    SliverGridRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SliverGridExample(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.SliverPersistantHeaderScreen]
class SliverPersistantHeaderRoute extends _i5.PageRouteInfo<void> {
  const SliverPersistantHeaderRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SliverPersistantHeaderRoute.name,
          initialChildren: children,
        );

  static const String name = 'SliverPersistantHeaderRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SliverListScreen]
class SliverListRoute extends _i5.PageRouteInfo<void> {
  const SliverListRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SliverListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SliverListRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SliverGridExample]
class SliverGridRoute extends _i5.PageRouteInfo<void> {
  const SliverGridRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SliverGridRoute.name,
          initialChildren: children,
        );

  static const String name = 'SliverGridRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
