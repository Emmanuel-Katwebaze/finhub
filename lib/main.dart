import 'package:finhub/pages/sign_up.dart';
import 'package:finhub/pages/create_saving_account.dart';
import 'package:finhub/pages/new_saving_plan.dart';
import 'package:finhub/pages/bank_details.dart';
import 'package:finhub/pages/congratulations_page.dart';
import 'package:finhub/pages/loan_received.dart';
import 'package:finhub/pages/savings_screen.dart';
import 'package:finhub/pages/saving_duration.dart';
import 'package:finhub/pages/savings_frequency.dart';
import 'package:finhub/pages/loan_summary.dart';
import 'package:finhub/pages/loan_calculator.dart';
import 'package:finhub/pages/lock_status.dart';
import 'package:finhub/pages/loan_packages.dart';
import 'package:finhub/pages/loans_screen.dart';
import 'package:finhub/pages/loan_breakdown.dart';
import 'package:finhub/pages/faqs_inquiries.dart';
import 'package:finhub/pages/loan_repayment.dart';
import 'package:finhub/pages/account_screen.dart';
import 'package:finhub/pages/loan_repayment_main.dart';
import 'package:finhub/pages/make_early_repayment.dart';
import 'package:finhub/pages/enter_phone_no.dart';
import 'package:finhub/pages/successful_screen.dart';
import 'package:finhub/pages/bottom_nav.dart';
import 'package:finhub/pages/payment_method.dart';
import 'package:finhub/pages/plan_summary.dart';
import 'package:finhub/pages/profile_info.dart';
import 'package:finhub/pages/verify_account.dart';
import 'package:finhub/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:finhub/pages/sign_in.dart';
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
        '/sign_in': (context) => SignIn(),
        '/sign_up': (context) => SignUp(),
        '/verify_account': (context) => const VerifyAccount(),
        '/create_saving_account': (context) => const CreateSavingAccount(),
        '/payment_method': (context) => const PaymentMethod(),
        '/enter_phone': (context) => const EnterPhoneNumber(),
        '/congratulations': (context) => const CongratulationsPage(),
        '/bank_details': (context) => BankDetails(),
        '/bottom_nav': (context) => BottomNavigation(),
        '/plan_summary': (context) => const PlanSummary(),
        '/profile_info': (context) => ProfileInfo(),
        '/successful_screen': (context) => const SuccessfulScreen(),
        '/loan_summary': (context) => LoanSummary(),
        '/loan_calculator': (context) => LoanCalculator(),
        '/loan_packages': (context) => LoanPackages(),
        '/loan_breakdown': (context) => LoanBreakdown(),
        '/loan_received': (context) => LoanReceived(),
        '/faqs_inquiries': (context) => FaqsInquiries(),
        '/account_screen': (context) => const AccountScreen(),
        '/loans_screen': (context) => const LoansScreen(),
        '/loan_repayment': (context) => LoanRepayment(),
        '/loan_repayment_main': (context) => LoanRepaymentMain(),
        '/make_early_repayment': (context) => MakeEarlyRepayment(),
        '/dashboard': (context) => const Dashboard(),
        '/savings_frequency': (context) => const SavingsFrequency(),
        '/new_saving_plan': (context) => const NewSavingPlan(),
        '/savings_screen': (context) => const SavingScreen(),
        '/saving_duration': (context) => const SavingDuration(),
        '/lock_status': (context) => const LockStatus(),
      },
    );
  }
}
