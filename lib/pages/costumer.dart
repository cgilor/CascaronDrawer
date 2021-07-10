import 'package:drawer_pdf_report/widgets/menu.dart';
import 'package:flutter/material.dart';

class CostumerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('CostumerPage'),
      ),
      drawer: MenuWidget(),
      body: Container(
        child: Center(
          child: Text('Costumer'),
        ),
      ),
    );
  }
}
