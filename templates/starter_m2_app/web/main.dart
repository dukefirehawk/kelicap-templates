import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import 'package:kelicap/kelicap.dart';
import 'package:kelicap_components/kelicap_components.dart';
import 'package:kelicap_router/kelicap_router.dart';
import 'package:starter_m2_app/app_component.template.dart' as ng;

import 'main.template.dart' as self;

// Example of a [root injector]
// [popupModule] is used in [MaterialTooltipDirective]
@GenerateInjector([
  popupModule,
  routerProvidersHash, // For development
  // routerProviders, // For Production
  ClassProvider(Client, useClass: BrowserClient),
  testabilityProvider,
])
final InjectorFactory rootInjector = self.rootInjector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: rootInjector);
}
