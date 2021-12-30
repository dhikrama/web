import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:renang/routes/route_paths.dart';
import 'package:renang/routes/routes.dart';

@Component(
  selector: 'header',
  templateUrl: 'header.html',
  styleUrls: [
    'css/desktop.css',
    'css/tablet.css',
    'css/mobile.css',
  ],
  directives: [
    routerDirectives,
    coreDirectives,
  ],
  exports: [Routes, RoutePaths],
  encapsulation: ViewEncapsulation.None,
)
class Header {
  @ViewChild('hamburger')
  Element? h;
  @ViewChild('nav')
  Element? nav;
  Element? mainClass;

  void hamburgert() => togleMenu();
  void togleMenu() {
    mainClass = document.querySelector('main');
    h?.classes.toggle('active');
    mainClass?.classes.toggle('hidden');
    nav?.classes.toggle('active');
  }

  void removeClass() {
    h?.classes.remove('active');
    mainClass?.classes.remove('hidden');
    nav?.classes.remove('active');
  }
}
