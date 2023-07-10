import 'package:finhub/pages/create_account.dart';
import 'package:finhub/pages/create_saving_account.dart';
import 'package:finhub/pages/bank_details.dart';
import 'package:finhub/pages/congratulations_page.dart';
import 'package:finhub/pages/enter_phone_no.dart';
import 'package:finhub/pages/bottom_nav.dart';
import 'package:finhub/pages/payment_method.dart';
import 'package:finhub/pages/verify_account.dart';
import 'package:finhub/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:finhub/pages/login_page.dart';
import 'package:finhub/pages/splash_screen.dart';
import 'package:finhub/pages/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:finhub/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/onboarding': (context) => const OnBoardingScreen(),
        '/login': (context) => LoginPage(),
        '/create_account': (context) => CreateAccount(),
        '/verify_account': (context) => const VerifyAccount(),
        '/create_saving_account': (context) => const CreateSavingAccount(),
        '/payment_method': (context) => const PaymentMethod(),
        '/enter_phone': (context) => const EnterPhoneNumber(),
        '/congratulations': (context) => const CongratulationsPage(),
        '/bank_details': (context) => const CongratulationsPage(),
        '/bottom_nav': (context) => BottomNavigation(),
        '/dashboard': (context) => const Dashboard(),
      },
    );
  }
}
