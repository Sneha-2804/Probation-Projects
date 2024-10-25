import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool pushNotification = false;
  bool location = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
        Text('PROFILE', style: TextStyle(color: Colors.grey, fontSize: 12)),
          SwitchListTile(
            title: Text('Push Notification'),
            value: pushNotification,
            activeColor: Colors.orange,
            onChanged: (bool value) {
              setState(() {
                pushNotification = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Location'),
            value: location,
            activeColor: Colors.orange,
            onChanged: (bool value) {
              setState(() {
                location = value;
              });
            },
          ),
          ListTile(
            title: Text('Language'),
            subtitle: Text('English'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          SizedBox(height: 20),

          Text('OTHER', style: TextStyle(color: Colors.grey, fontSize: 12)),
          ListTile(
            title: Text('Questions & Answers'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: Text('Privacy Policy'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            title: Text('Terms and Conditions'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}