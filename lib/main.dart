// import 'package:costream/screen/coster_detail.dart';
import 'package:costream/screen/chipin_detail.dart';
import 'package:costream/screen/root.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Costream',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xFF010101),
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: Colors.transparent),
          fontFamily: 'Poppins',
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xff073FCF)),
            ),
          ),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              titleTextStyle:
                  TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          textTheme: const TextTheme(
              headline1: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
              headline2: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 35,
              ),
              headline3: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
              headline4: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
              headline5: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              headline6: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
              bodyText1: TextStyle(
                  fontWeight: FontWeight.w600, color: Color(0xff272727)),
              button: TextStyle(fontWeight: FontWeight.w700))),
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xff073FCF),
        backgroundColor: Colors.grey.shade900,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent, elevation: 0),
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.transparent),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xff073FCF)),
          ),
        ),
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Color(0xff272727)),
            headline2: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 35,
                color: Color(0xff868686)),
            headline3: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
            headline4: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0xFF000000)),
            headline5: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
            headline6: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
            bodyText1: TextStyle(
                fontWeight: FontWeight.w600, color: Color(0xff272727)),
            button: TextStyle(fontWeight: FontWeight.w700)),
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case 'root':
            return CupertinoPageRoute(
                builder: (_) => const Root(), settings: settings);
          case 'chipin_detail':
            return CupertinoPageRoute(
                builder: (_) => const ChipinDetail(), settings: settings);
        }
        return CupertinoPageRoute(
            builder: (_) => const Root(), settings: settings);
      },
      home: const Root(),
    );
  }
}
