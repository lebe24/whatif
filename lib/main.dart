import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart'as DotEnv;
import 'package:whatif/Screens/Home.dart';
import 'package:whatif/core/config/style/app_theme.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'What IF',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: AppTheme.theme,
        home:const Home());
  }
}
