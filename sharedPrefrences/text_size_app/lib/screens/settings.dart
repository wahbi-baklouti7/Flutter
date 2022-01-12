
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_size_app/provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Consumer<TextSizeProvider>(builder: (context, pro, child) {
          return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ListTile(
              leading: Radio(
                  value: 30,
                  groupValue: pro.textSize,
                  onChanged: (val) {
                    pro.changeTextSize(val);
                  }),
              title: const Text("30"),
            ),
            ListTile(
              leading: Radio(
                  value: 60,
                  groupValue: pro.textSize,
                  onChanged: (value) {
                    pro.changeTextSize(value);
                  }),
              title: const Text("60"),
            ),
            ListTile(
              leading: Radio(
                  value: 12,
                  groupValue: pro.textSize,
                  onChanged: (value) {
                    pro.changeTextSize(value);
                  }),
              title: const Text("12"),
            ),
            const SizedBox(height: 15),
            Text("Text Text",
                style: TextStyle(fontSize: pro.textSize.toDouble()))
          ]);
        }),
      ),
    );
  }
}
