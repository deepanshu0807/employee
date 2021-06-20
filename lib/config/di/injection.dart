import 'package:employee_shared/employee_shared.dart';

import 'injection.config.dart';

GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
