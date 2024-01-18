import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hewa_tell_air/screens/home/tabs/co_tab.dart';
import 'package:hewa_tell_air/screens/home/tabs/dust_tab.dart';
import 'package:hewa_tell_air/screens/home/tabs/ethyl_tab.dart';
import 'package:hewa_tell_air/screens/home/tabs/no_tab.dart';
import 'package:hewa_tell_air/screens/home/tabs/voc_tab.dart';
import 'package:hewa_tell_air/screens/popup/register_device.dart';
import 'package:hewa_tell_air/screens/popup/select_device.dart';
//import 'package:provider/provider.dart';
import 'package:hewa_tell_air/services/auth.dart';
//import 'package:hewa_tell_air/screens/home/settings_form.dart';
//import 'package:hewa_tell_air/screens/home/hewa_list.dart';;
//import 'package:hewa_tell_air/services/database.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Hewa Tell',
              style: GoogleFonts.bebasNeue(
                fontSize: 56,
                fontStyle: FontStyle.italic,
              )),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 35, 60),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(31))),
          ),
          elevation: 0.0,
          toolbarHeight: 150,
          actions: <Widget>[
            TextButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: const Icon(Icons.person_2),
              label: const Text('logout '),
            ),
            PopupMenuButton<int>(
                onSelected: (item) => onSelected(context, item),
                color: Colors.blue[400],
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                itemBuilder: (context) => [
                      const PopupMenuItem<int>(
                        value: 0,
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings_cell,
                              color: Colors.black,
                            ),
                            SizedBox(width: 8),
                            Text('Select Device'),
                          ],
                        ),
                      ),
                      const PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          children: [
                            Icon(
                              Icons.devices_fold_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(width: 8),
                            Text('Register Device'),
                          ],
                        ),
                      ),
                    ]),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TabBar(
                    indicator: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 55, 60),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: const Color.fromARGB(255, 2, 53, 95),
                    tabs: const [
                      Tab(
                        text: 'NO',
                      ),
                      Tab(
                        text: 'CO',
                      ),
                      Tab(
                        text: 'VOC',
                      ),
                      Tab(
                        text: 'ETHYL',
                      ),
                      Tab(
                        text: 'DUST',
                      ),
                    ]),
              ),
              const Expanded(
                child: TabBarView(
                  children: [NoTab(), CoTab(), VocTab(), EthylTab(), DustTab()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const SelectDevicePage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const RegisterDevicePage()),
        );
        break;
    }
  }
}
