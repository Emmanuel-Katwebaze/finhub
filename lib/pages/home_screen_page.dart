import 'package:flutter/material.dart';
import 'package:finhub/components/articles.dart';
import 'package:finhub/components/events_reminders.dart';
import 'package:finhub/components/badges.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  bool showEventsReminders = true;
  bool showArticles = false;

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/Logo-big.png',
                            height: 50.0,
                          ),
                          const SizedBox(width: 8.0),
                          const Text(
                            "FinHub",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFFF1F1F1),
                              fontFamily: 'Questrial',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              IconButton(
                                icon: Icon(Icons.notifications),
                                color: Colors.white,
                                onPressed: () {
                                  // Handle notifications button press
                                },
                              ),
                              Positioned(
                                top: 8.0,
                                right: 8.0,
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8.0),
                          const CircleAvatar(
                            backgroundImage: AssetImage('images/avatar@3x.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "UGX 120,000",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFFF1F1F1),
                        fontFamily: 'Questrial',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Available balance",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFF1F1F1),
                        fontFamily: 'Questrial',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Stack(
                          children: const [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: CircularProgressIndicator(
                                value:
                                    0.65, // Set the progress value here (e.g., 0.65 for 65%)
                                strokeWidth: 8,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xFF001948)),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "65%",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            const Text(
                              "Saving progress",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: 'Questrial',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Target: Shs ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFD9D9D9),
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "5,000,000",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFD9D9D9),
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Saved: Shs ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFD9D9D9),
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "3,500,000",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFD9D9D9),
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
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
                color: Color(0xFFE9EEF9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Badge",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF2B5BBA),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Badges(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 197,
                        height: 26,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showEventsReminders = true;
                              showArticles = false;
                            });
                          },
                          style: showEventsReminders
                              ? ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF2B5BBA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                )
                              : ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                          child: showEventsReminders
                              ? const Text(
                                  'Events & Reminders',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                )
                              : const Text(
                                  'Events & Reminders',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF2B5BBA),
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      SizedBox(
                        width: 97,
                        height: 26,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showEventsReminders = false;
                              showArticles = true;
                            });
                          },
                          style: showArticles
                              ? ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF2B5BBA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                )
                              : ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                          child: showArticles
                              ? const Text(
                                  'Articles',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                )
                              : const Text(
                                  'Articles',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Questrial',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF2B5BBA),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (showEventsReminders) const EventsReminders(),
                  if (showArticles) const Articles(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}