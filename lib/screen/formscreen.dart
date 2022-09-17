import 'package:flutter/material.dart';
import 'package:flutter_firebase/model/Student.dart';
import 'package:form_field_validator/form_field_validator.dart';

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
                  validator:
                      RequiredValidator(errorText: "กรุณาป้อนชื่อด้วยค่ะ"),
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
                  validator:
                      RequiredValidator(errorText: "กรุณาป้อนนามสกุลด้วยค่ะ"),
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
                  validator: RequiredValidator(errorText: "กรุณาอีเมลด้วยค่ะ"),
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
                  validator:
                      RequiredValidator(errorText: "กรุณาป้อนคะแนนด้วยค่ะ"),
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
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          print(
                              "ข้อมูล = ${myStudent.fname}${myStudent.lname}${myStudent.email}${myStudent.score}");
                        }
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
