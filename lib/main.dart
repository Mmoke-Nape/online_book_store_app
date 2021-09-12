import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_book_store_app/screens/details/details_screen.dart';
import 'package:online_book_store_app/top_level_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Gothic A1',
        textTheme: const TextTheme(
          headline6: TextStyle(fontFamily: 'EB Garamond'),
          headline5: TextStyle(fontFamily: 'EB Garamond'),
          headline3:
              TextStyle(fontFamily: 'EB Garamond', fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontFamily: 'Carrois Gothic SC'),
          //bodyText2: TextStyle(fontSize: 20.0),
        ),
      ),
      getPages: [
        GetPage(
          name: '/detailsScreen',
          page: () => DetailsScreen(),
        ),
      ],
      home: const TopLevelApp(),
    );
  }
}
