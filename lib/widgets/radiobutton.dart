
import 'package:flutter/material.dart';

class RadioB extends StatefulWidget {
  const RadioB({Key? key}) : super(key: key);

  @override
  State<RadioB> createState() => _RadioBState();
}

class _RadioBState extends State<RadioB> {
  String selectValue='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
       body: Center(
         child: SizedBox(
           width: double.infinity,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                children: [
                  const Text("Género"),
                  const SizedBox(height: 20,),
                  RadioListTile(

                      value: "Masculino",
                      groupValue: selectValue,
                      onChanged:
                      (value){
                    setState(() {
                      selectValue = value.toString();
                    });
                  }),
                ],
              ),

              RadioListTile(
                  value: "Femenino",
                  groupValue: selectValue,
                  onChanged:
                      (value){
                    setState(() {
                      selectValue = value.toString();
                    });
                  }),

              RadioListTile(
                  value: "Otro",
                  groupValue: selectValue,
                  onChanged:
                      (value){
                    setState(() {
                      selectValue = value.toString();
                    });
                  })
            ],


      ),
         ),
       ),
    );
  }
}
