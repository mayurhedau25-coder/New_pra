import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_1/education.dart';
import 'package:pro_1/hobby.dart';
import 'package:pro_1/profileavatar.dart';
import 'package:pro_1/profiledetails.dart';
import 'package:pro_1/sectioncard.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth > 600;
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildHeader(context, isWide),
              const SizedBox(height: 16),
              const SectionCard(title: 'Education', child: EducationList()),
              const SizedBox(height: 12),
              const SectionCard(
                title: 'Hobbies & Interests',
                child: HobbiesGrid(),
              ),
            ],
          ),
        );
      },
    );
  }
  Widget _buildHeader(BuildContext context, bool isWide) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: isWide
            ? Row(
                children: [
                  ProfileAvatar(size: 120),
                  const SizedBox(width: 20),
                  const ProfileDetails(),
                ],
              )
            : Column(
                children: [
                  ProfileAvatar(size: 110),
                  const SizedBox(height: 12),
                  const ProfileDetails(),
                ],
              ),
      ),
    );
  }
}