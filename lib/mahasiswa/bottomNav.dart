import 'package:akademik/mahasiswa/home1.dart';
import 'package:akademik/mahasiswa/notification.dart';
import 'package:akademik/mahasiswa/profile.dart';
import 'package:flutter/material.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<HalamanUtama> {
  int _SelectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  List<Widget> pages = [
    Home1(),
    notification(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30,
        selectedItemColor: Color.fromARGB(255, 0, 153, 255),
        currentIndex: _SelectedIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(_SelectedIndex == 2
                  ? Icons.home_rounded
                  : Icons.home_rounded),
              label: 'Beranda'),
          // BottomNavigationBarItem(
          //   icon: Icon(_SelectedIndex ==1 ? Icons.description_outlined : Icons.description_outlined),
          // label:'Keterangan'
          // ),
          BottomNavigationBarItem(
              icon: Icon(_SelectedIndex == 2
                  ? Icons.notifications
                  : Icons.notifications),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(_SelectedIndex == 3 ? Icons.person : Icons.person),
              label: 'Profile'),
        ],
      ),
    );
  }
}
