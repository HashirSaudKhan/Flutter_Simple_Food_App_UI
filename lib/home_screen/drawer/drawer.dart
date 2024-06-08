import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xffFFA451)),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "HsK",
                style: TextStyle(fontSize: 20),
              ),
            ),
            accountName: Text(
              "Hashir",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "hashirsaudkhan@gmail.com",
              style: TextStyle(color: Colors.black),
            )),
        InkWell(
          child: const ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
