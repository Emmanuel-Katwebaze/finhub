import 'package:flutter/material.dart';
import 'package:finhub/components/plan_summary_row.dart';

class PlanSummary extends StatefulWidget {
  const PlanSummary({super.key});

  @override
  State<PlanSummary> createState() => _PlanSummaryState();
}

class _PlanSummaryState extends State<PlanSummary> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B5BBA),
      body: Column(
        children: [
          Container(
            color: const Color(0xFF2B5BBA),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.chevron_left),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'PLAN SUMMARY',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Text(
                    "Please enter your mobile account number",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Questrial',
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  PlanSummaryRow(
                      keyText: "Periodic Amount", valueText: "UGX 20,000"),
                  SizedBox(height: 20),
                  PlanSummaryRow(keyText: "Frequency", valueText: "Monthly"),
                  SizedBox(height: 20),
                  PlanSummaryRow(
                      keyText: "Start Date", valueText: "12/06/2023"),
                  SizedBox(height: 20),
                  PlanSummaryRow(
                      keyText: "Withdraw Date", valueText: "12/06/2026"),
                  SizedBox(height: 20),
                  PlanSummaryRow(
                      keyText: "Interest Rate", valueText: "3% per annum"),
                  SizedBox(height: 20),
                  PlanSummaryRow(keyText: "Lock Status", valueText: "Locked"),
                  const SizedBox(
                    height: 150,
                  ),
                  SizedBox(
                    width: 349,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isLoading = true;
                        });
                        // Simulating verification process
                        Future.delayed(const Duration(seconds: 2), () {
                          setState(() {
                            _isLoading = false;
                          });
                           Navigator.pushNamed(context, '/bottom_nav');
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2B5BBA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: _isLoading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              'Confirm',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
