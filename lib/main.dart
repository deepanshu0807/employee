import 'package:employee/presentation/screens/splashscreen.dart';
import 'package:employee/presentation/utils/utility.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'application/auth/sign_up_form_bloc/signup_form_bloc.dart';
import 'application/auth/signinform/signinform_bloc.dart';
import 'config/di/injection.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarColor: secondaryColor,
  ));

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        ScreenUtil.init(constraints, designSize: const Size(375, 812));
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<AuthWatcherBloc>()),
            BlocProvider(
              create: (_) => getIt<AuthWatcherBloc>()
                ..add(
                  const AuthWatcherEvent.authCheckRequested(),
                ),
            ),
            BlocProvider(create: (_) => getIt<SigninformBloc>()),
            BlocProvider(create: (_) => getIt<SignupFormBloc>()),
          ],
          child: MaterialApp(
            title: 'Employee',
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          ),
        );
      },
    );
  }
}
