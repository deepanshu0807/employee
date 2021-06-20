// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:employee_shared/employee_shared.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/auth/sign_up_form_bloc/signup_form_bloc.dart' as _i5;
import '../../application/auth/signinform/signinform_bloc.dart' as _i4;
import 'injectables.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final blocInjectablemodule = _$BlocInjectablemodule();
  gh.factory<_i3.AuthWatcherBloc>(() => blocInjectablemodule.authWatcherBloc);
  gh.lazySingleton<_i3.FirebaseAuth>(() => blocInjectablemodule.fbAuth);
  gh.lazySingleton<_i3.FirebaseFirestore>(() => blocInjectablemodule.fStore);
  gh.lazySingleton<_i3.FirebaseStorage>(() => blocInjectablemodule.storage);
  gh.lazySingleton<_i3.IAuth>(() => blocInjectablemodule.fbAuthService);
  gh.factory<_i4.SigninformBloc>(() => _i4.SigninformBloc(get<_i3.IAuth>()));
  gh.factory<_i5.SignupFormBloc>(() => _i5.SignupFormBloc(get<_i3.IAuth>()));
  return get;
}

class _$BlocInjectablemodule extends _i6.BlocInjectablemodule {}
