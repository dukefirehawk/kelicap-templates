import 'package:kelicap/kelicap.dart';
import 'package:kelicap_router/kelicap_router.dart';
import 'package:starter_m2_app/src/app_route.dart';
import 'package:starter_m2_app/src/pages/error/not_found_component.dart';
import 'package:starter_m2_app/src/pages/home/home_component.dart';

import 'src/pages/todo/todo_list_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    HomeComponent,
    TodoListComponent,
    NotFoundComponent,
    routerDirectives,
  ],
  providers: [ClassProvider(AppRoute)],
  exports: [AppRoute],
)
class AppComponent {
  final AppRoute routes;

  AppComponent(this.routes);
}
