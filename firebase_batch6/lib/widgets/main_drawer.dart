import 'package:firebase_batch6/auth/firebase_auth.dart';
import 'package:firebase_batch6/pages/launcher_page.dart';
import 'package:firebase_batch6/pages/profile_page.dart';
import 'package:flutter/material.dart';

import '../pages/chat_room_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.blue.shade700,
          ),
          ListTile(
            onTap: () => Navigator.pushReplacementNamed(context, ProfilePage.routeName),
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
          ),
          ListTile(
            onTap: () => Navigator.pushReplacementNamed(context, ChatRoomPage.routeName),
            leading: const Icon(Icons.chat),
            title: const Text('Chat Room'),
          ),
          ListTile(
            onTap: () {
              AuthService.logOut()
                  .then((value) =>
                  Navigator.pushReplacementNamed(context, LauncherPage.routeName));
            },
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
