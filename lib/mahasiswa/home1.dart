import 'package:akademik/mahasiswa/menu/jadwal.dart';
import 'package:akademik/mahasiswa/menu/kehadiran.dart';
import 'package:akademik/mahasiswa/menu/nilai.dart';
import 'package:akademik/mahasiswa/menu/perwalian.dart';
import 'package:akademik/mahasiswa/menu/transkrip.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
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
                          width: 10,
                        ),
                        Text(
                          "Hallo Welcome Back, Elang",
                          style: GoogleFonts.ubuntu(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Column(
                    children: [
                      Stack(children: [
                        Container(
                            height: 90,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                              // boxShadow: [
                              //   BoxShadow(
                              //       color: Colors.grey.withOpacity(0.10),
                              //       spreadRadius: 3,
                              //       blurRadius: 2,
                              //       offset: Offset(0, 2))
                              // ]),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Stack(children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.all(10),
                                      child: Container(
                                        height: 100,
                                        width: 50,
                                        child: InkWell(
                                          onTap: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) {
                                            return kehadiran();
                                          })),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'images/gambar/kehadiran.png'),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Kehadiran",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.all(10),
                                      child: Container(
                                        height: 100,
                                        width: 50,
                                        child: InkWell(
                                          onTap: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) {
                                              return jadwal();
                                            },
                                          )),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'images/gambar/jadwal.png'),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Jadwal",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.all(10),
                                      child: Container(
                                        height: 100,
                                        width: 50,
                                        child: InkWell(
                                          onTap: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) {
                                              return nilai();
                                            },
                                          )),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'images/gambar/nilai.png'),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Nilai",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.all(10),
                                      child: Container(
                                        height: 100,
                                        width: 50,
                                        child: InkWell(
                                          onTap: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) {
                                              return transkrip();
                                            },
                                          )),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'images/gambar/rekap-nilai.png'),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Transkrip",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.all(10),
                                      child: Container(
                                        height: 100,
                                        width: 50,
                                        child: InkWell(
                                          onTap: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (context) {
                                              return perwalian();
                                            },
                                          )),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'images/gambar/perwalian.png'),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Perwalian",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ]),
                      Container()
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      )),
    );
  }
}
