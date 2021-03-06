import 'package:efe1/data/mappers/driver_mapper.dart';
import 'package:efe1/data/mappers/driver_standings_mapper.dart';
import 'package:efe1/driver/driver.dart';
import 'package:efe1/driver_standings/driver_standing.dart';
import 'dart:convert' show json;
import 'package:http/http.dart' as http;

class ApiClient {
  final String _host = "ergast.com";
  final String _endDriverStandings = "/api/f1/2021/driverStandings.json";
  final String _endDriverDetails = "api/f1/drivers";

  Future<List<DriverStanding>> fetchDriverStandings() async {
    final response = await _get(_endDriverStandings);

    return DriverStandingMapper.toDomainList(response);
  }

  Future<Driver> fetchDriver(String driverId) async {
    final response = await _get("$_endDriverDetails/$driverId.json");
    return DriverMapper.toDomain(response);
  }

  Future<Map> _get(String path) async {
    final uri = Uri.http(_host, path);
    final response = await http.get(uri);
    return json.decode(response.body);
  }
}
