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
                "ชื่อนักเรียน",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
