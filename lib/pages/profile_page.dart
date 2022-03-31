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
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 2),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black87,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 40
                          ),
                          radius: 40,
                        ),
                        SizedBox(height: 10),
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
                SizedBox(height: 5),
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
        ),
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
