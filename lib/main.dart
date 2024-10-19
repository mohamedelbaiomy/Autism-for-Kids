import 'package:autism_for_kids/poviders/random_number_provider.dart';
import 'package:autism_for_kids/views/options/views/games/2048/models/board_adapter.dart';
import 'package:autism_for_kids/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  await Hive.initFlutter();
  Hive.registerAdapter(BoardAdapter());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NumberProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return const GetMaterialApp(
            title: 'Autism',
            debugShowCheckedModeBanner: false,
            home: WelcomeScreen(),
          );
        });
  }
}
