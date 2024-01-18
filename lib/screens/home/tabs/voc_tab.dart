import 'package:flutter/material.dart';

class VocTab extends StatefulWidget {
  const VocTab({super.key});

  @override
  State<VocTab> createState() => _VocTabState();
}

class _VocTabState extends State<VocTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'VOC',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Recommended values',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 30, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(40, 40),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 1, 35, 65),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'First Line',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 1, 30, 52),
                        ),
                      ),
                      Text(
                        'Second Line',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 1, 30, 52),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(10, 10), // Width, Height
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15), // Padding inside the button
                  backgroundColor: Colors.white, // Background color
                  foregroundColor:
                      const Color.fromARGB(255, 1, 31, 63), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                onPressed: () {},
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'First Line',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 29, 52),
                      ),
                    ),
                    Text(
                      'Second Line',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 2, 28, 49),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(2),
          child: Text(
            'Current values',
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(55, 10, 30, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(40, 40),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 1, 35, 65),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'First Line',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 1, 30, 52),
                        ),
                      ),
                      Text(
                        'Second Line',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 1, 30, 52),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(10, 10), // Width, Height
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15), // Padding inside the button
                  backgroundColor: Colors.white, // Background color
                  foregroundColor:
                      const Color.fromARGB(255, 1, 31, 63), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                onPressed: () {},
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'First Line',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 29, 52),
                      ),
                    ),
                    Text(
                      'Second Line',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 2, 28, 49),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(2, 5, 2, 10),
          child: Column(
            children: [
              Text(
                'Overall value',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'Current value',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Text(
                  'Quality',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Good',
                  style: TextStyle(fontSize: 25),
                )
              ],
            )),
      ],
    );
  }
}
