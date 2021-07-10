import 'package:drawer_pdf_report/widgets/menu.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('ProfilePage'),
      ),
      drawer: MenuWidget(),
      body: Container(
        child: Center(
          child: Text('ProfilePage'),
        ),
      ),
    );
  }
}
