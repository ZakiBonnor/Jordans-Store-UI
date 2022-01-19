import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.black54,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.person,
                          size: 45,
                        ),
                        radius: 45,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'John Hancock',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Johnhancock@email.com',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                color: Colors.white,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    customListTile(
                      Icons.edit,
                      'Infos',
                      Icons.chevron_right,
                    ),
                    customListTile(
                      Icons.settings,
                      'Settings',
                      Icons.chevron_right,
                    ),
                    customListTile(
                      Icons.info,
                      'Help',
                      Icons.chevron_right,
                    ),
                    customListTile(
                      Icons.comment,
                      'Comments',
                      Icons.chevron_right,
                    ),
                    customListTile(
                      Icons.warning,
                      'About',
                      Icons.chevron_right,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          return print('CLICKED');
        },
        child: Icon(Icons.check)),
      ),
    );
  }

  Column customListTile(
    IconData leadingIcon,
    String title,
    IconData trailingIcon,
  ) {
    return Column(
      children: [
        ListTile(
          leading: Icon(leadingIcon),
          title: Text(title),
          trailing: Icon(trailingIcon),
        ),
        Divider(),
      ],
    );
  }
}
