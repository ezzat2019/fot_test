import 'package:connectivity/connectivity.dart';

abstract class ApiHelper{
 static Future<bool> checkIntenretConnection() async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
    return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    else
      {
        return false;
      }
  }
}