import 'package:contactlist/pages/listpg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginpg extends StatelessWidget {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/backgrnd.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0),
                  )),
              height: MediaQuery.of(context).size.height - 200.0,
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 35.0),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextField(
                        controller: namecontroller,
                        decoration: InputDecoration(
                            hintText: "Enter username",
                            labelText: "Username",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ))),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      obscureText: true,
                        controller: passcontroller,
                        decoration: InputDecoration(
                            hintText: "Enter password",
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ))),
                    SizedBox(
                      height: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        var txt = namecontroller.text;
                        var pass = passcontroller.text;
                        if (txt == "admin" && pass == "12345") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contlistpg()));
                        }
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style:
                                TextStyle(fontSize: 25.0, color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF000050),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 50.0,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
