import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EducationList extends StatelessWidget {
  const EducationList();

  @override
  Widget build(BuildContext context) {
    final items = [
      EducationItem(
        degree: 'Master of Computer Applications (MCA)',
        institution: 'Sardar Patel Institute of Technology',
        year: '2026',
        achievements:
            'CGPA: 8.5; Dean'
            's List',
      ),
      EducationItem(
        degree: 'BSC in Mathematics',
        institution: 'VMV COMMERCE JMT ARTS & JJP SCIENCE COLLEGE',
        year: '2024',
      ),
      EducationItem(
        degree: 'Class XII (Science)',
        institution: 'Sindhu Mahavidyalaya Junior College',
        year: '2020',
      ),
    ];

    return Column(children: items.map((e) => _EducationTile(item: e)).toList());
  }
}

class EducationItem {
  final String degree;
  final String institution;
  final String year;
  final String? achievements;
  EducationItem({
    required this.degree,
    required this.institution,
    required this.year,
    this.achievements,
  });
}

class _EducationTile extends StatelessWidget {
  final EducationItem item;
  const _EducationTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.degree,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              item.institution,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.calendar_month, size: 16),
                const SizedBox(width: 6),
                Text(item.year),
              ],
            ),
            if (item.achievements != null) ...[
              const SizedBox(height: 8),
              Text(
                'Achievements: ${item.achievements}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ],
        ),
      ),
    );
  }
}