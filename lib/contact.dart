import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro_1/sectioncard.dart';
import 'package:pro_1/socialicon.dart';

class ContactPage extends StatelessWidget {
  const ContactPage();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionCard(
            title: 'Contact & Social',
            child: SizedBox.shrink(),
          ),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('mayur.hedau25@spit.ac.in'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.link),
                    title: Text('Website'),
                    subtitle: Text('https://mayurhedau.dev'),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      SocialIcon(
                        icon: FontAwesomeIcons.linkedin,
                        url: 'https://linkedin.com/in/yourprofile',
                        label: 'LinkedIn',
                      ),
                      SocialIcon(
                        icon: FontAwesomeIcons.github,
                        url: 'https://github.com/yourusername',
                        label: 'GitHub',
                      ),
                      SocialIcon(
                        icon: FontAwesomeIcons.instagram,
                        url: 'https://instagram.com/yourusername',
                        label: 'Instagram',
                      ),
                      SocialIcon(
                        icon: FontAwesomeIcons.twitter,
                        url: 'https://twitter.com/yourusername',
                        label: 'Twitter',
                      ),
                      SocialIcon(
                        icon: Icons.email,
                        url: 'mailto:mayur.hedau25@spit.ac.in',
                        label: 'Email',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
