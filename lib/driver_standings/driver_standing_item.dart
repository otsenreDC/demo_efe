import 'package:efe1/driver_standings/driver_standing.dart';
import 'package:flutter/cupertino.dart';

class DriverStandingItem extends StatelessWidget {
  final DriverStanding _driverStanding;

  const DriverStandingItem(this._driverStanding, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_driverStanding.name),
    );
  }
}
