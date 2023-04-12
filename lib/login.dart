import 'package:akademik/beranda.dart';
import 'package:akademik/mahasiswa/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void validateInput() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Berhasil')));
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HalamanUtama()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 7, 7),
                    child: Text(
                      'Login',
                      style: GoogleFonts.ubuntu(
                          fontSize: 45, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    // logintoyouraccountoZR (8:17)
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 27),
                    child: Text(
                      'Login to your Account',
                      style: GoogleFonts.abhayaLibre(fontSize: 20),
                    ),
                  ),
                  Container(
                    // logopolsubhd1Wyd (8:16)
                    margin: EdgeInsets.fromLTRB(0, 0, 11, 2),
                    width: 164,
                    height: 164,
                    child: Image.asset(
                      'images/gambar/LogoPolsub.png',
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: 'Masukan Nim',
                                labelText: 'Nomor Induk Mahasiswa :',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Nim tidak boleh kosong';
                                }
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                              autofocus: true,
                              decoration: InputDecoration(
                                hintText: 'Masukan Password',
                                labelText: 'Password :',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password tidak boleh kosong';
                                }
                              }),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 7, 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                  width: 28,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xfffcfcfc),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0, 1),
                                        blurRadius: 1.5,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Remember me',
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        'Forgot Password ?',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: validateInput,
                              child: Text('Login'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
