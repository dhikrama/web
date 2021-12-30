import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'footer',
  templateUrl: 'footer.html',
  styleUrls: [
    'css/desktop.css',
    'css/tablet.css',
    'css/mobile.css',
  ],
  directives: [coreDirectives],
  encapsulation: ViewEncapsulation.None,
)
class Footer {}
