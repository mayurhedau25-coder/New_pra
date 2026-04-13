import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  final String label;
  const SocialIcon({
    required this.icon,
    required this.url,
    required this.label,
  });

  Future<void> _open() async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      // ignore: avoid_print
      print('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: _open,
      icon: Icon(icon, size: 18),
      label: Text(label),
    );
  }
}