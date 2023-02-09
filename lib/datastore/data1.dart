import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final formKey = GlobalKey<FormState>(); //key for form
  String complaint  = "";


  @override
  TextEditingController textEditingControllercontroller =
  TextEditingController();
  Widget build(BuildContext context) {
    final _conpCompliant0 = TextEditingController();
    final _conpCompliant1 = TextEditingController();
    final _conpCompliant2 = TextEditingController();
    final _conpCompliant3 = TextEditingController();
    final _conpCompliant4 = TextEditingController();
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
                          controller: _conpCompliant0,
                          decoration: InputDecoration(
                            hintText:'1',
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: _conpCompliant1,
                          decoration: InputDecoration(
                            hintText: '2',
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: _conpCompliant2,
                          decoration: InputDecoration(
                            hintText: '3',
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: _conpCompliant3,
                          decoration: InputDecoration(
                            hintText: '4',
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: _conpCompliant4,
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

                      Navigator.push(context, MaterialPageRoute(builder: (_)=> FeedbackPage()));
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
