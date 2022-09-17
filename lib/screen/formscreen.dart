import 'package:flutter/material.dart';
import 'package:flutter_firebase/model/Student.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();
  Student myStudent =
      Student(fname: "ชื่อ", lname: "นามสกุล", email: "อีเมล", score: "คะแนน");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แบบฟอร์มบันทึกคะแนนสอบ"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ชื่อ",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onSaved: (String? fname) {
                    myStudent.fname = fname!;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "นามสกุล",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onSaved: (String? lname) {
                    myStudent.fname = lname!;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  height: 15,
                ),
                Text(
                  "อีเมล",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onSaved: (String? email) {
                    myStudent.fname = email!;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "คะแนน",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onSaved: (String? score) {
                    myStudent.fname = score!;
                  },
                ),
                SizedBox(
                  child: ElevatedButton(
                      child: Text(
                        "บันทึกข้อมูล",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        formKey.currentState!.save();
                        print("${myStudent.fname}");
                        print("${myStudent.lname}");
                        print("${myStudent.email}");
                        print("${myStudent.score}");
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
