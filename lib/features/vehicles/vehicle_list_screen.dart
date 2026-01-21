import 'package:flutter/material.dart';

import '../../core/database/database_provider.dart';
import '../../core/database/app_database.dart';

class VehicleListScreen extends StatelessWidget {
  const VehicleListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final db = DatabaseProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicles'),
      ),
      body: FutureBuilder<List<Vehicle>>(
        future: db.getAllVehicles(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final vehicles = snapshot.data ?? [];

          if (vehicles.isEmpty) {
            return const Center(
              child: Text('No vehicles yet'),
            );
          }

          return ListView.builder(
            itemCount: vehicles.length,
            itemBuilder: (context, index) {
              final vehicle = vehicles[index];
              return ListTile(
                title: Text('${vehicle.year} ${vehicle.make} ${vehicle.model}'),
                subtitle: Text(vehicle.vin),
              );
            },
          );
        },
      ),
    );
  }
}
