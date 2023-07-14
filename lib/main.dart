import 'package:finhub/pages/create_account.dart';
import 'package:finhub/pages/create_saving_account.dart';
import 'package:finhub/pages/bank_details.dart';
import 'package:finhub/pages/congratulations_page.dart';
import 'package:finhub/pages/loan_received.dart';
import 'package:finhub/pages/loan_summary.dart';
import 'package:finhub/pages/loan_calculator.dart';
import 'package:finhub/pages/loan_packages.dart';
import 'package:finhub/pages/loans_screen.dart';
import 'package:finhub/pages/loan_breakdown.dart';
import 'package:finhub/pages/loan_repayment.dart';
import 'package:finhub/pages/loan_repayment_main.dart';
import 'package:finhub/pages/make_early_repayment.dart';
import 'package:finhub/pages/enter_phone_no.dart';
import 'package:finhub/pages/successful_screen.dart';
import 'package:finhub/pages/bottom_nav.dart';
import 'package:finhub/pages/payment_method.dart';
import 'package:finhub/pages/plan_summary.dart';
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
      home: SplashScreen(),
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
        '/bank_details': (context) => BankDetails(),
        '/bottom_nav': (context) => BottomNavigation(),
        '/plan_summary': (context) => const PlanSummary(),
        '/successful_screen': (context) => const SuccessfulScreen(),
        '/loan_summary': (context) => LoanSummary(),
        '/loan_calculator': (context) => LoanCalculator(),
        '/loan_packages': (context) => LoanPackages(),
        '/loan_breakdown': (context) => LoanBreakdown(),
        '/loan_received': (context) => LoanReceived(),
        '/loans_screen': (context) => LoansScreen(),
        '/loan_repayment': (context) => LoanRepayment(),
        '/loan_repayment_main': (context) => LoanRepaymentMain(),
        '/make_early_repayment': (context) => MakeEarlyRepayment(),
        '/dashboard': (context) => const Dashboard(),
      },
    );
  }
}
