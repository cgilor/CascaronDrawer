import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf, color: Colors.blue),
            title: Text('Reports'),
            onTap: () => Navigator.pushReplacementNamed(context, 'home'),
          ),
          ListTile(
            leading: Icon(Icons.person_add, color: Colors.blue),
            title: Text('Costumer'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'costumer');
            },
          ),
          ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text('Settings'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.pushReplacementNamed(
                  context,
                  'profile',
                );
              }),
        ],
      ),
    );
  }
}
