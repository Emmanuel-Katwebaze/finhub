import 'package:flutter/material.dart';

class LockStatus extends StatefulWidget {
  const LockStatus({super.key});

  @override
  State<LockStatus> createState() => LockStatusState();
}

class LockStatusState extends State<LockStatus> {
  late TextEditingController _planNameController;
  String _selectedFrequency = '';

  @override
  void initState() {
    super.initState();
    _planNameController = TextEditingController();
  }

  @override
  void dispose() {
    _planNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Container(
              color: const Color(0xFF2B5BBA),
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'LOCK STATUS',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Do you want to lock this savings account?",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Questrial',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
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
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                RadioListTile<String>(
                  activeColor: const Color(0xFF2B5BBA),
                  title: const Text(
                    'Lock with Interest',
                    style: TextStyle(
                      color: Color(0xFF433D3D),
                      fontFamily: 'Questrial',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  value: 'Lock with Interest',
                  groupValue: _selectedFrequency,
                  onChanged: (value) {
                    setState(() {
                      _selectedFrequency = value.toString();
                    });
                  },
                ),
                RadioListTile<String>(
                  activeColor: const Color(0xFF2B5BBA),
                  title: const Text(
                    'Lock without interest',
                    style: TextStyle(
                      color: Color(0xFF433D3D),
                      fontFamily: 'Questrial',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  value: 'Lock without interest',
                  groupValue: _selectedFrequency,
                  onChanged: (value) {
                    setState(() {
                      _selectedFrequency = value.toString();
                    });
                  },
                ),
                RadioListTile<String>(
                  activeColor: const Color(0xFF2B5BBA),
                  title: const Text(
                    "Don't Lock",
                    style: TextStyle(
                      color: Color(0xFF433D3D),
                      fontFamily: 'Questrial',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  value: "Don't Lock",
                  groupValue: _selectedFrequency,
                  onChanged: (value) {
                    setState(() {
                      _selectedFrequency = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 250),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/page2');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2B5BBA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Questrial',
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
