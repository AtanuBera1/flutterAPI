import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final dpPic =
      "https://secure.gravatar.com/avatar/914060dc8fffb27865ae8dc3d00ac019?s=128&d=mm&r=g";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(children: [
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            currentAccountPicture:
                CircleAvatar(backgroundImage: NetworkImage(dpPic)),
            accountName: Text("Atanu Bera"),
            accountEmail: Text("atanubera2012@gmail.com")),
        ListTile(
          leading: Icon(
            Icons.person,
            color: Colors.white,
          ),
          title: Text("Atanu Bera", style: TextStyle(color: Colors.white)),
          subtitle: Text("Username", style: TextStyle(color: Colors.white)),
          trailing: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.email,
            color: Colors.white,
          ),
          title: Text("Atanu Bera", style: TextStyle(color: Colors.white)),
          subtitle: Text("Username", style: TextStyle(color: Colors.white)),
          trailing: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.web,
            color: Colors.white,
          ),
          title: Text("Atanu Bera", style: TextStyle(color: Colors.white)),
          subtitle: Text("Username", style: TextStyle(color: Colors.white)),
          trailing: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.android,
            color: Colors.white,
          ),
          title: Text("Atanu Bera", style: TextStyle(color: Colors.white)),
          subtitle: Text("Username", style: TextStyle(color: Colors.white)),
          trailing: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onTap: () {},
        ),
        SizedBox(
          height: 30.0,
        ),
        ElevatedButton(
          style: ButtonStyle(
              maximumSize: MaterialStateProperty.all(Size.fromWidth(65.0))),
          child: Text("Login"),
          onPressed: () => Navigator.pushNamed(context, "/"),
        )
      ]),
    );
  }
}
