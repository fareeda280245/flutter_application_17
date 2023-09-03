import 'package:flutter_application_17/model/config.dart';
import 'package:flutter_application_17/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_17/screens/login.dart';
import 'package:flutter_application_17/model/users.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    String accountName = "Waraporn seaelee";
    String accountEmail = "Waraporn.se@mail.wu.ac.th";
    String accountUrl = "https://i.pinimg.com/564x/d2/9f/6a/d29f6a8a1355008a8bfe2f81e378571a.jpg";
    
    Users user = Configure.login;
    if(user.id != null) {
      accountName = user.fullname!;
      accountEmail = user.email!;
    }
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(accountName), 
            accountEmail: Text(accountEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(accountUrl),
              backgroundColor: Colors.white,
            ),
            ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Login"),
            onTap: () {
              Navigator.pushNamed(context, Login.routeName);
            },
          )
        ],
      ),
    );
  }
}