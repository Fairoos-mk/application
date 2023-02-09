import 'package:flutter/material.dart';

class Spareparts extends StatefulWidget {
  @override
  _SparepartsState createState() => _SparepartsState();
}

class _SparepartsState extends State<Spareparts> {
  final formKey = GlobalKey<FormState>(); //key for form
  String complaint  = "";


  @override
  TextEditingController textEditingControllercontroller =
  TextEditingController();
  Widget build(BuildContext context) {
    final _sparepart0 = TextEditingController();
    final _sparepart1 = TextEditingController();
    final _sparepart2 = TextEditingController();
    final _sparepart3 = TextEditingController();
    final _sparepart4 = TextEditingController();
    final _sparepart5 = TextEditingController();
    final _sparepart6 = TextEditingController();
    final _sparepart7 = TextEditingController();
    final _sparepart8 = TextEditingController();

    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;

    return Scaffold(
        key: _scaffoldKey,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white10,
                    Colors.black87,
                  ])),

          child: ListView(
              children: [
                Form(
                  key: formKey, //key for form
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.07),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "E-Lab",
                          style: TextStyle(fontSize: 30, color: Color(0xff1b5e20)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Service cender",
                          style: TextStyle(fontSize: 20, color: Color(0xff1b5e20)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller:  _sparepart0,
                          decoration: InputDecoration(
                            hintText:'1',
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller:  _sparepart1,
                          decoration: InputDecoration(
                            hintText: '2',
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller:  _sparepart2,
                          decoration: InputDecoration(
                            hintText: '3',
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: _sparepart3,
                          decoration: InputDecoration(
                            hintText: '4',
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: _sparepart4,
                          decoration: InputDecoration(
                            hintText: '5',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.01 ,
                ),
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: w/2,
                  child: TextButton(
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Spareparts()));
                    },
                    child: Text(
                      'Next',
                      style:
                      TextStyle(color: Colors.black),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),

              ]
          ),
        ));
  }
}
