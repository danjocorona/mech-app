import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Vehicles])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'mechanic.db'));

  @override
  int get schemaVersion => 1;

  Future<List<Vehicle>> getAllVehicles() {
    return select(vehicles).get();
  }

  Future<int> addVehicle(VehiclesCompanion vehicle) {
    return into(vehicles).insert(vehicle);
  }
}
