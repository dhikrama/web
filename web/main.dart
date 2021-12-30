import 'package:angular/angular.dart';
import 'package:renang/web_component.template.dart' as web;
import 'package:angular_router/angular_router.dart';

import 'main.template.dart' as self;

@GenerateInjector(
  [routerProvidersHash],
)
final InjectorFactory factory = self.factory$Injector;

void main() {
  runApp(web.WebComponentNgFactory, createInjector: factory);
}
