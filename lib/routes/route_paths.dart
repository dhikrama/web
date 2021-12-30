import 'package:angular_router/angular_router.dart';
import 'package:renang/pages/404/not_found.dart';
import 'package:renang/routes/routes.dart';

abstract class RoutePaths {
  static final home = RoutePath(path: '/');
  static final about = RoutePath(path: '/about');
  static final contact = RoutePath(path: '/contact');
  static final blog = RoutePath(path: '/blog');
  static final notFound = RoutePath(path: '/404');
}
