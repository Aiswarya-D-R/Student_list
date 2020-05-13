import 'package:flutter/material.dart';

class Contlistpg extends StatefulWidget {
  @override
  _ContlistpgState createState() => _ContlistpgState();
}

class _ContlistpgState extends State<Contlistpg> {
  var name = [];
  var roll = [];
  var admn = [];
  TextEditingController namecontroller = TextEditingController();
  TextEditingController rollcontroller = TextEditingController();
  TextEditingController admncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Text(
                "Enter Details",
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                    hintText: "Enter name",
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: rollcontroller,
                decoration: InputDecoration(
                    hintText: "Enter roll number",
                    labelText: "Roll no",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: admncontroller,
                decoration: InputDecoration(
                  hintText: "Enter adminssion number",
                  labelText: "Admin no",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    var getName = namecontroller.text;
                    var getRoll = rollcontroller.text;
                    var getAdmn = admncontroller.text;
                    namecontroller.clear();
                    rollcontroller.clear();
                    admncontroller.clear();
                    name.add(getName);
                    roll.add(getRoll);
                    admn.add(getAdmn);
                  });
                },
                child: Text(
                  "ADD",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.indigo,
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: name.length == null ? 0 : name.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5.0,
                        child: ListTile(
                          leading: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.indigo,
                          ),
                          title: Text(
                            "Name: " + name[index],
                            style: TextStyle(fontSize: 15.0),
                          ),
                          subtitle: Text("Roll no: " +
                              roll[index] +
                              "\nAdmn no: " +
                              admn[index]),
                          trailing: GestureDetector(
                            onTap: () {
                              setState(() {
                                name.removeAt(index);
                                roll.removeAt(index);
                                admn.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
