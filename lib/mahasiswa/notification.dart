import 'package:akademik/mahasiswa/menu/jadwal.dart';
import 'package:akademik/mahasiswa/menu/kehadiran.dart';
import 'package:akademik/mahasiswa/menu/nilai.dart';
import 'package:akademik/mahasiswa/menu/perwalian.dart';
import 'package:akademik/mahasiswa/menu/transkrip.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment(0.378, -0.801),
                    end: Alignment(0.378, 0.847),
                    colors: <Color>[
                      Color.fromARGB(223, 21, 104, 228),
                      Color.fromARGB(223, 5, 68, 163),
                      Color.fromARGB(223, 0, 49, 119),
                    ],
                    stops: <double>[0, 0.394, 1],
                  )),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/gambar/LogoPolsub.png')),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      style: BorderStyle.solid,
                                      width: 2))),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Politeknik Negeri Subang",
                            style: GoogleFonts.ubuntu(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 45),
                    Row(
                      children: [
                        Container(
                          width: 45,
                          child: Icon(
                            Icons.notifications_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Semua Notifikasi",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.4),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 2))
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.4),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 2))
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.4),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 2))
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.4),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 2))
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.4),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 2))
                                ]),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
