import 'package:drawer_pdf_report/widgets/menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('HomePage'),
      ),
      drawer: MenuWidget(),
      body: Container(
        child: Center(
          child: Text('HomePage'),
        ),
      ),
    );
  }
}
