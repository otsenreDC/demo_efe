class DriverStanding {
  String driverId = "";
  String position = "";
  String name = "";
  String constructor = "";

  DriverStanding(
      {required this.driverId,
      required this.position,
      required this.name,
      required this.constructor});

  @override
  String toString() {
    return "$driverId, $position, $name, $constructor";
  }
}
