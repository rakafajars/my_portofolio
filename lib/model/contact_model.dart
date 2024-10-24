import 'package:flutter/material.dart';

class ContactModel {
  final String title;
  final String value;
  final IconData icon;
  final String url;

  ContactModel({
    required this.title,
    required this.value,
    required this.icon,
    required this.url,
  });
}

final List<ContactModel> contacts = [
  ContactModel(
    title: 'Email',
    value: 'rakafajar18@gmail.com',
    icon: Icons.email_outlined,
    url: 'mailto:rakafajar18@gmail.com',
  ),
  ContactModel(
    title: 'LinkedIn',
    value: 'linkedin.com/in/rakafajars',
    icon: Icons.link,
    url: 'https://www.linkedin.com/in/rakafajars/',
  ),
  ContactModel(
    title: 'GitHub',
    value: 'github.com/rakafajars',
    icon: Icons.code,
    url: 'https://github.com/rakafajars',
  ),
];
