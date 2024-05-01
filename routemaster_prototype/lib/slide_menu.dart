import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'John Doe',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'john.doe@gmail.com',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://randomuser.me/api/portraits/men/1.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1603378611747-2d75a6b86410?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGJhYmVjYSUyMHNyYXAlMjBmb3IlMjBwcm9maWxlJTIwbGFuZ3VhZ2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text('Bio'),
            subtitle: Text('Software Developer'),
            leading: Icon(Icons.info),
          ),
          ListTile(
            title: Text('Location'),
            subtitle: Text('New York'),
            leading: Icon(Icons.location_on),
          ),
        ],
      ),
    );
  }
}
