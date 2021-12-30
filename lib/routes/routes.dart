import 'package:angular_router/angular_router.dart';
import 'package:renang/pages/about/about_page.template.dart'
    deferred as about_page;
import 'package:renang/pages/home/home_page.dart';
import 'package:renang/pages/home/home_page.template.dart';
import 'package:renang/routes/route_paths.dart';
import 'package:renang/pages/contact/contact_page.template.dart'
    deferred as contact_page;
import 'package:renang/pages/blog/blog.template.dart' deferred as blog_page;
import 'package:renang/pages/404/not_found.template.dart' deferred as not_found;

abstract class Routes {
  static final homePage = RouteDefinition(
    routePath: RoutePaths.home,
    component: HomePageNgFactory,
  );

  static final aboutPage = RouteDefinition.defer(
    routePath: RoutePaths.about,
    loader: () async {
      await about_page.loadLibrary();
      return about_page.AboutPageNgFactory;
    },
  );

  static final contactPage = RouteDefinition.defer(
    routePath: RoutePaths.contact,
    loader: () async {
      await contact_page.loadLibrary();
      return contact_page.ContactPageNgFactory;
    },
  );

  static final blog = RouteDefinition.defer(
    routePath: RoutePaths.blog,
    loader: () async {
      await blog_page.loadLibrary();
      return blog_page.BlogNgFactory;
    },
  );

  static final notFound = RouteDefinition.defer(
    routePath: RoutePaths.notFound,
    useAsDefault: true,
    loader: () async {
      await not_found.loadLibrary();
      return not_found.NotFoundNgFactory;
    },
  );

  static final redirectNotFound = RouteDefinition.redirect(
    path: '.*',
    redirectTo: '404',
  );

  static final all = <RouteDefinition>[
    homePage,
    aboutPage,
    contactPage,
    blog,
    notFound,
    redirectNotFound,
  ];
}
