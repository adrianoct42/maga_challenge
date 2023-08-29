import 'package:flutter/material.dart';

class Task {
  Task(this.id, this.title, this.description, this.completed);

  final String id;
  final String title;
  final String description;
  bool completed;
}
