import 'package:flutter/material.dart';
import 'features/vehicles/vehicle_list_screen.dart';

class MechApp extends StatelessWidget {
  const MechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mechanic App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const VehicleListScreen(),
    );
  }
}
