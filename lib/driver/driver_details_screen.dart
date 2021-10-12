import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DriverDetails extends StatelessWidget {
  const DriverDetails(String driverId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Driver"),
      ),
    );
  }
}
