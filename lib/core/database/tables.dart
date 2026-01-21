import 'package:drift/drift.dart';

class Vehicles extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get vin => text().withLength(min: 17, max: 17)();
  TextColumn get make => text()();
  TextColumn get model => text()();
  IntColumn get year => integer()();
}
