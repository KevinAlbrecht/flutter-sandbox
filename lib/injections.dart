import 'package:get_it/get_it.dart';

import 'services/index.dart';

GetIt locator = GetIt();
void setupLocator() {
  locator.registerSingleton(MovieApiService());
  locator.registerSingleton(MovieService());
}
