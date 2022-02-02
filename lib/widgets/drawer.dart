// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  //final imgurl = "https://ibb.co/QJfgnB0";
  final _url =
      "https://www.kindpng.com/imgv/imTh_spiderman-venom-youtube-symmetry-area-free-hq-image/#.YfqdzkmyXGQ.link";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.lightGreen,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                // ignore: prefer_const_constructors
                accountName: Text("Hemant Srivastava"),
                // ignore: prefer_const_constructors
                accountEmail: Text("hemant@lpu.co.in"),
                currentAccountPicture: CircleAvatar(
                  radius: 65,
                  backgroundImage:
                      const AssetImage('assets/images/profile.png'),
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(_url),
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
