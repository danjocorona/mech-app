import 'package:flutter/widgets.dart';
import 'app_database.dart';

class DatabaseProvider extends InheritedWidget {
  final AppDatabase database;

  const DatabaseProvider({
    super.key,
    required this.database,
    required super.child,
  });

  static AppDatabase of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<DatabaseProvider>();

    assert(provider != null, 'No DatabaseProvider found in context');
    return provider!.database;
  }

  @override
  bool updateShouldNotify(DatabaseProvider oldWidget) {
    return database != oldWidget.database;
  }
}
