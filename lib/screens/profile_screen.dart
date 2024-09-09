import 'package:flutter/material.dart';
import 'package:mycool_profile/components/profile_img.dart';
import 'package:mycool_profile/components/profile_menu.dart';
import 'package:mycool_profile/constant/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: iconSecondaryColor,
        ),
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 24,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),

            // Image Profile
            const ProfileImage(),

            // Detail Profile
            const SizedBox(height: 20,),
            Text('Nutchaya Panyaem', style: textTitle,),
            const SizedBox(height: 15,),
            Text('s6507012660052@email.kmutnb.ac.th', style: textSubTitle,),

            // Button Edit
            const SizedBox(height: 15,),
            const ProfileMenu(title: 'Setting', icons: Icons.settings,),
            const SizedBox(height: 15,),
            const ProfileMenu(title: 'Billing Detail', icons: Icons.wallet,),
            const SizedBox(height: 15,),
            const ProfileMenu(title: 'User Management', icons: Icons.person,),
            const SizedBox(height: 40,),
            const ProfileMenu(title: 'Information', icons: Icons.info,),
            const SizedBox(height: 15,),
            const ProfileMenu(title: 'Logout', icons: Icons.logout,),

          ],
        ),
      ),
    );
  }
}