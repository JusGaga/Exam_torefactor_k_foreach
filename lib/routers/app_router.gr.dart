// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:foreach_exam_gaetan_juston/views/fields/home_page.dart' as _i3;
import 'package:foreach_exam_gaetan_juston/views/login/login_page.dart' as _i2;
import 'package:foreach_exam_gaetan_juston/views/page_tree/page_tree.dart'
    as _i4;
import 'package:foreach_exam_gaetan_juston/views/register/register_page.dart'
    as _i1;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    RegisterRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.RegisterPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    FieldsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FieldsPage(),
      );
    },
    WidgetTree.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.WidgetTree(),
      );
    },
  };
}

/// generated route for
/// [_i1.RegisterPage]
class RegisterRoute extends _i5.PageRouteInfo<void> {
  const RegisterRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FieldsPage]
class FieldsRoute extends _i5.PageRouteInfo<void> {
  const FieldsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          FieldsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FieldsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.WidgetTree]
class WidgetTree extends _i5.PageRouteInfo<void> {
  const WidgetTree({List<_i5.PageRouteInfo>? children})
      : super(
          WidgetTree.name,
          initialChildren: children,
        );

  static const String name = 'WidgetTree';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
