import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final double size;
  const ProfileAvatar({required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundImage: const AssetImage('assets/profile.jpg'),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
    );
  }
}
