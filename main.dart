
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mining Dashboard',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Login with fingerprint or credentials"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashboardPage()));
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(title: Text("Upload Documents")),
          ListTile(title: Text("Upcoming Events")),
          ListTile(title: Text("Unpaid Fees")),
          ListTile(title: Text("Sample Applications")),
          ListTile(title: Text("Employees Record")),
          ListTile(title: Text("Salary Details")),
        ],
      ),
    );
  }
}
