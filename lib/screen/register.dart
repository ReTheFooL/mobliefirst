import 'package:firstmoblie/config/constant.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurname(),
                txtEmail(),
                txtPass(),
                btnSubmit()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(color: sColor, fontSize: 24),
        decoration: InputDecoration(
          labelText: "Name : ",
          icon: Icon(Icons.people),
          hintText: 'Input your name',
        ),
        validator: (val) {
          if (val!.length < 4) {
            return 'กรุณากรอกข้อมูลมากกว่า 4 ตัวอักษร';
          }
        },
        onSaved: (val){
          name = val!.trim();
        },
      ),
    );
  }

  Widget txtSurname() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
          style: TextStyle(color: sColor, fontSize: 24),
          decoration: InputDecoration(
            labelText: "Surname : ",
            icon: Icon(Icons.people),
            hintText: 'Input your surname',
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return 'กรุณากรอกข้อมูล';
            } else if (val.length < 4) {
              return 'กรุณากรอกข้อมูลมากกว่า 4 ตัวอักษร';
            }
          },
          onSaved: (val){
          surname = val!.trim();
        },
        ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(color: sColor, fontSize: 24),
        decoration: InputDecoration(
          labelText: "Email : ",
          icon: Icon(Icons.email),
          hintText: 'Input your Email',
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (val) {
          if (!((val!.contains('@')) && (val.contains('.')))) {
            return 'กรุณากรอกข้อมูลตามรูปแบบEmail';
          }
        },
        onSaved: (val){
        email = val;
        },
      ),
    );
  }

  Widget txtPass() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(color: sColor, fontSize: 24),
        decoration: InputDecoration(
          labelText: "Password : ",
          icon: Icon(Icons.lock),
          hintText: 'Input your Password',
        ),
        obscureText: true,
        onSaved: (val){
          password = val;
        },
      ),
    );
  }

  Widget btnSubmit() {
    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () {
        print('Submit');
        if(formkey.currentState!.validate()){
        formkey.currentState!.save();
        print("ชื่อ : $name");
        print("นามสกุล : $surname");
        print("อีเมล : $email");
        print("รหัสผ่าน : $password");
        }
      },
    );
  }
}
