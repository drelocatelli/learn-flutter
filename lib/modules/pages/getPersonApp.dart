import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testing/components/app_bar.dart';
import 'package:testing/controller/getxStates/data.dart';
import 'package:testing/controller/getxStates/person_controller.dart';

import '../../classes/person.dart';

class GetPersonApp extends StatelessWidget {
  GetPersonApp({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>(debugLabel: 'formDataPerson');

  TextEditingController _dataController = TextEditingController(
    text: json.encode({"name": "John", "lastName": "Doe", "age": 0})
  );

  final _controller = Get.put(PersonController());

  _submitForm() {
    final value = json.decode(_dataController.text);
    Person pessoa = Person.fromJson(value);
    _controller.setPerson(personInput: pessoa);
  }

  @override
  Widget build(BuildContext context) {
    return MainBar(
      child: Container(
        child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * .5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Getx person data app"),
              Obx(() => Visibility(
                visible: _controller.person.value != null,
                child: Text("Data will appear here: ${_controller.person.value?.name} ${_controller.person.value?.lastName} has ${_controller.person.value?.age} years old"),
              )),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _dataController,
                      onFieldSubmitted: (value) => _submitForm(),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(onPressed: () => _submitForm(), child: Text("Set person data")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      )
    );
  }
}