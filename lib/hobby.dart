import 'package:flutter/material.dart';

class HobbiesGrid extends StatelessWidget {
  const HobbiesGrid();

  @override
  Widget build(BuildContext context) {
    final hobbies = [
      Hobby(
        icon: Icons.camera_alt,
        name:Mayur
        title: 'Photography',
        desc: 'Landscape & portrait photography.',
      ),
      Hobby(
        icon: Icons.music_note,
        title: 'Music',
        desc: 'Guitar, listening to indie & jazz.',
      ),
      Hobby(
        icon: Icons.flight,
        title: 'Travel',
        desc: 'Exploring new cities and cultures.',
      ),
      Hobby(
        icon: Icons.book,
        title: 'Reading',
        desc: 'Non-fiction & tech blogs.',
      ),
    ];

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1.2,
      children: hobbies.map((h) => _HobbyCard(hobby: h)).toList(),
    );
  }
}

class Hobby {
  final IconData icon;
  final String title;
  final String desc;
  Hobby({required this.icon, required this.title, required this.desc});
}

class _HobbyCard extends StatelessWidget {
  final Hobby hobby;
  const _HobbyCard({required this.hobby});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: Icon(hobby.icon, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              hobby.title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Expanded(
              child: Text(
                hobby.desc,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
