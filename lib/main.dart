import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter_app/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('es'), const Locale('ES')],
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}
