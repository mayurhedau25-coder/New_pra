import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mayur Hedau',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          'Mobile Developer • Software Engineer',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 12),
        Text(
          'Passionate about building beautiful, responsive apps using Flutter and bringing ideas to life. Strong interest in open-source and UX.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}