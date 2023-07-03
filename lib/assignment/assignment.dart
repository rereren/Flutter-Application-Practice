import 'package:flutter/material.dart';
import 'package:my_app/statlesss/PictureButton.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  var name = '';
  var email = '';
  var address = '';
  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _addressController = TextEditingController();

  entervalue() {
    setState(() {
      name = "Name: " + _nameController.text;
      email = "Email: " + _emailController.text;
      address = "Address: " + _addressController.text;
      print(name + email + address);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Form'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name',
              ),
              onChanged: (value) {
                print('Name: $value');
              },
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
              onChanged: (value) {
                print('Email: $value');
              },
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Address',
              ),
              onChanged: (value) {
                print('Adress: $value');
              },
            ),
            SizedBox(
              height: 20,
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       entervalue();
            //     },
            //     child: Text('Submit')),
            ButtonPicture(
              buttonText: 'button',
              transparent: true,
              image: "assets/my_wife.png",
              onPressed: () {
                entervalue();
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Text(name),
                  Text(email),
                  Text(address),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
