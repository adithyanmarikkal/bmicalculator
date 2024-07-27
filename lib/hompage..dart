import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  TextEditingController bmi=TextEditingController();
  double heightl=0;
  int weightl=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONVERSION'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.cyan,
        width: MediaQuery
            .sizeOf(context)
            .width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: height,
                onChanged: (val){
                 double heightl = double.parse(val);
              //    bmi.text=(weightl/heightl/heightl).toString();
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: const Text('height'),
                  // hintStyle: ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: weight,
                onChanged: (val2){
                  weightl=int.parse(val2);
                  bmi.text=(weightl/heightl/heightl).toString();
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: const Text('weight'),
                  // hintStyle: ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: bmi,
                decoration: InputDecoration(
                  label: const Text('BMI'),
                  // hintStyle: ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            MaterialButton(onPressed: () {
              height.text='';
              weight.text='';
              bmi.text='';
            },
              color: Colors.green,
              child: const Text('reset'),
            )
          ],
        ),
      ),
    );

  }
}
