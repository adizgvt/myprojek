import 'package:aimsprojectmanagement/project_info_page.dart';
import 'package:aimsprojectmanagement/widgets/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueAccent,
            // ···
          ),
          textTheme: GoogleFonts.robotoFlexTextTheme(Theme.of(context).textTheme),
          //fontFamily: 'Rubik-Regular',
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade100
          ),
          backgroundColor: Colors.grey.shade100,
          dialogTheme: DialogTheme(
              backgroundColor: Colors.grey.shade100,
              surfaceTintColor: Colors.transparent
          )
      ),
      home: const LoginScreen(),
    );
  }
}
