import 'package:efe1/driver_standings/driver_standing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverStandingItem extends StatelessWidget {
  final DriverStanding _driverStanding;

  const DriverStandingItem(this._driverStanding, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text("${_driverStanding.position} - ${_driverStanding.name}"),
          subtitle: Text(_driverStanding.constructor),
          trailing: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}
