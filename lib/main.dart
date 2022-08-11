import 'package:flutter/material.dart';
import 'package:flutter_test_1/screens/home/home_screen.dart';
import 'package:flutter_test_1/size_config.dart';
import 'package:flutter_test_1/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder( builder: (context, constraints)
    {
      SizeConfig().init(constraints);

      return MaterialApp(
          title: 'Flutter Ecommerse App',
          color: Colors.white,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: kPrimaryColor,
              textTheme: GoogleFonts.montserratTextTheme(Theme
                  .of(context)
                  .textTheme)
          ),
          home: HomeScreen()
      );
  });
    // throw UnimplementedError();
  }


}