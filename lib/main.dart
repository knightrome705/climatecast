import 'package:climatecast/routes/name_route.dart';
import 'package:climatecast/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.siginscreen,
      onGenerateRoute: Routes.generateRoute,
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //   useMaterial3: true,
      //),
        // darkTheme: ThemeData.dark(),
    // );
    );
  }
}
