import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แบบฟอร์มบันทึกคะแนนสอบ"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              Text(
                "ชื่อ",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              Text(
                "นามสกุล",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              Text(
                "อีเมล",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              Text(
                "คะแนน",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(),
              SizedBox(
                child: ElevatedButton(
                    child: Text(
                      "บันทึกข้อมูล",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
