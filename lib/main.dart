import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/app_constants.dart';
import 'utils/page_name.dart';
import 'utils/preference.dart';
import 'utils/routes.dart';
import 'widgets/size_config.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preference.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    _deviceDetails();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              onGenerateRoute: controller,
              initialRoute: PageNameConstants.splashScreen,
            );
          },
        );
      },
    );
  }

  Future<void> _deviceDetails() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var androidInfo = await deviceInfoPlugin.androidInfo;
        Preference.setString(AppConstants.imeiNo, androidInfo.androidId.toString());
        Preference.setString(AppConstants.platformVersion, androidInfo.version.release);
        Preference.setString(AppConstants.modelName, androidInfo.model);
        Preference.setString(AppConstants.deviceName, androidInfo.device);
        Preference.setString(AppConstants.productName, androidInfo.product);
        Preference.setString(AppConstants.cpuType, "A");
      } else if (Platform.isIOS) {
        var iosInfo = await deviceInfoPlugin.iosInfo;
        Preference.setString(AppConstants.imeiNo, iosInfo.identifierForVendor.toString());
        Preference.setString(AppConstants.platformVersion, iosInfo.systemVersion.toString());
        Preference.setString(AppConstants.modelName, iosInfo.model);
        Preference.setString(AppConstants.deviceName, iosInfo.systemName);
        Preference.setString(AppConstants.productName, iosInfo.localizedModel);
        Preference.setString(AppConstants.cpuType, "I");
      }
    } on PlatformException {
      print('Failed to get platform information');
    }
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return OrientationBuilder(
//           builder: (context, orientation) {
//             SizeConfig().init(constraints, orientation);
//             return MaterialApp(
//               title: 'Flutter Demo',
//               debugShowCheckedModeBanner: false,
//               // onGenerateRoute: controller,
//               // initialRoute: Constants.dashBoardPage,
//             );
//           },
//         );
//       },
//     );
//   }
// }
