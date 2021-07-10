import 'package:drawer_pdf_report/pages/costumer.dart';
import 'package:drawer_pdf_report/pages/home.dart';
import 'package:drawer_pdf_report/pages/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomePage(),

        //'photo': (_) => PhotoReportPage(pdfName),
        'profile': (_) => ProfilePage(),
        'costumer': (_) => CostumerPage()
        // 'photo': (_) => PhotoReport(),
      },
      theme: ThemeData.dark(),
    );
  }
}
