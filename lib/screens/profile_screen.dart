import 'package:flutter/material.dart';
import '../widgets/cover_profile.dart';
import '../widgets/profile_tabs.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Facebook'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CoverProfile(),
            ProfileTabs(),
          ],
        ),
      ),
    );
  }
}
