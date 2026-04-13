import 'package:flutter/material.dart';
import 'package:pro_1/sectioncard.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage();

  @override
  Widget build(BuildContext context) {
    final skills = [
      Skill(name: 'Dart & Flutter', level: SkillLevel.advanced),
      Skill(name: 'Java', level: SkillLevel.intermediate),
      Skill(name: 'Python', level: SkillLevel.intermediate),
      Skill(name: 'C / C++', level: SkillLevel.advanced),
      Skill(name: 'Git & GitHub', level: SkillLevel.advanced),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionCard(
            title: 'Technical Skills',
            child: SizedBox.shrink(),
          ),
          const SizedBox(height: 12),
          ...skills.map((s) => _SkillTile(skill: s)),
        ],
      ),
    );
  }
}

enum SkillLevel { beginner, intermediate, advanced }

class Skill {
  final String name;
  final SkillLevel level;
  Skill({required this.name, required this.level});
}

class _SkillTile extends StatelessWidget {
  final Skill skill;
  const _SkillTile({required this.skill});

  double _levelValue() {
    switch (skill.level) {
      case SkillLevel.beginner:
        return 0.33;
      case SkillLevel.intermediate:
        return 0.66;
      case SkillLevel.advanced:
        return 0.95;
    }
  }

  String _levelLabel() {
    switch (skill.level) {
      case SkillLevel.beginner:
        return 'Beginner';
      case SkillLevel.intermediate:
        return 'Intermediate';
      case SkillLevel.advanced:
        return 'Advanced';
    }
  }

  @override
  Widget build(BuildContext context) {
    final value = _levelValue();
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  skill.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _levelLabel(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(value: value, minHeight: 10),
            ),
          ],
        ),
      ),
    );
  }
}
