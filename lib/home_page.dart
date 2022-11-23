import 'package:first_app/fizzbuzz.dart';
import 'package:first_app/square.dart';
import 'package:first_app/validators/input_validator.dart';
import 'package:first_app/widgets/change_theme_widget.dart';
import 'package:first_app/widgets/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // use this controller to get what the user typed
  final _textController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  List<String> litems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FizzBuzz"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            // show info alert
            const DialogWidget().createAleartDialog(context);
          },
          child: const Icon(Icons.info_outline_rounded),
        ),
        actions: [
          // toggel the dark mode
          ChangeThemeWidget(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // get the user inputs
            Form(
              key: formKey,
              child: TextFormField(
                controller: _textController,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: InputValidator.validateInput,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Enter a number between 1 and 1000",
                  suffixIcon: IconButton(
                    onPressed: () {
                      // clear whats currently in the text field
                      setState(() {
                        _textController.clear();
                        litems = [];
                      });
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            // trigger button
            MaterialButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    litems =
                        FizzBuzz.getFizzBuzz(int.parse(_textController.text));
                  });
                }
              },
              color: Colors.green,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(46),
              child: const Text(
                "GO",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            // result fizzbuzz list
            Flexible(
              child: ListView.builder(
                itemCount: litems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListSquare(
                    child: litems[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
