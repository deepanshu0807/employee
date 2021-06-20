import 'package:employee_shared/domain/auth/i_employeeuser_repo.dart';
import 'package:employee_shared/employee_shared.dart';

@module
abstract class BlocInjectablemodule {
  //Config

  //Externals
  @lazySingleton
  FirebaseAuth get fbAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get fStore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseStorage get storage => FirebaseStorage.instance;

  // Services
  @LazySingleton(as: IAuth)
  FirebaseAuthService get fbAuthService => FirebaseAuthService(fbAuth, fStore);

  @LazySingleton(as: IEmployeeUserRepo)
  EmployeeUserRepo get mmployeeUserRepo => EmployeeUserRepo(fStore);

  //Blocs
  @injectable
  AuthWatcherBloc get authWatcherBloc => AuthWatcherBloc(fbAuthService);

  //Blocs

}
