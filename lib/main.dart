import 'package:flutter/material.dart';

import 'app.dart';
import 'core/database/app_database.dart';
import 'core/database/database_provider.dart';

void main() {
  final database = AppDatabase();

  runApp(
    DatabaseProvider(
      database: database,
      child: const MechApp(),
    ),
  );
}
