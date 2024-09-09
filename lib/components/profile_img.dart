import 'package:flutter/material.dart';
import '../constant/constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(alignment: Alignment.bottomRight,
      children: [
      CircleAvatar(
          backgroundColor: Colors.white,
          radius: 68,
          child: CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/chacha.jpg'),
            radius: 65,
          )),
      CircleAvatar(
        radius: 22,
        backgroundColor: bgPrimaryColor,
        child: CircleAvatar(
          backgroundColor: iconPrimaryColor,
          child: Icon(
            Icons.edit,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
    ]);
  }
}