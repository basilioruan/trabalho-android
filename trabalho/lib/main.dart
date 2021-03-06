import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trabalho/pages/home/bill/bill_details.dart';
import 'package:trabalho/pages/home/house/house_page.dart';
import 'package:trabalho/pages/home/welcome/enter_house_page.dart';
import 'package:trabalho/pages/home/home_page.dart';
import 'package:trabalho/pages/home/welcome/welcome_page.dart';
import 'package:trabalho/pages/auth/register_member_page.dart';
import 'package:trabalho/pages/error_page.dart';
import 'package:trabalho/pages/splash_screen.dart';
import 'package:trabalho/providers/member_provider.dart';
import 'package:trabalho/theme/theme_manager.dart';
import 'package:trabalho/wrapper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'pages/auth/login_page.dart';
import 'pages/auth/register_house.dart';
import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MemberProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeManager.defaultTheme(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          Routes.homePage: (_) => HomePage(),
          Routes.loginPage: (_) => LoginPage(),
          Routes.registerHouse: (_) => RegisterHouse(),
          Routes.registerMember: (_) => RegisterMember(),
          Routes.welcomePage: (_) => WelcomePage(),
          Routes.enterHousePage: (_) => EnterHousePage(),
          Routes.errorPage: (_) => ErrorPage(),
          Routes.wrapper: (_) => Wrapper(),
          Routes.billDetais: (_) => BillDetailsPage(),
          Routes.housePage: (_) => HouseViewPage()
        },
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: const [Locale('pt', 'BR')],
      ),
    );
  }
}
