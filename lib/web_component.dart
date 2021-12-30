import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:renang/pages/layout/footer/footer.dart';
import 'package:renang/routes/route_paths.dart';
import 'package:renang/routes/routes.dart';

import 'pages/layout/header/header.dart';

@Component(
  selector: 'dhikrama-web',
  templateUrl: 'web_component.html',
  styles: [
    '''
    .hidden{
      margin: 0; 
      height: 100%; 
      overflow: hidden;
      display: none;
    }'''
  ],
  directives: [
    coreDirectives,
    routerDirectives,
    Footer,
    Header,
  ],
  exports: [Routes, RoutePaths],
  encapsulation: ViewEncapsulation.None,
)
class WebComponent {}
