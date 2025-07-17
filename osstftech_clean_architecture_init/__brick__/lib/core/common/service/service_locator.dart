import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'service_locator.config.dart';

final sl = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async {
  sl.init(); // <-- Use the extension method instead of $initGetIt
}
