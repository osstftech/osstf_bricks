import 'package:device_info_plus/device_info_plus.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

///this module will help manage and inject the objects from other packages
@module
abstract class InjectionModules {
  //inject http object
  @injectable
  http.Client get clientHttp => http.Client();

  @injectable
  DeviceInfoPlugin get deviceInfoPlugin => DeviceInfoPlugin();
}
