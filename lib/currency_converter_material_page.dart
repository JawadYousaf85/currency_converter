import 'package:flutter/material.dart';

class CurrencyConverterMatrrialPage extends StatefulWidget {
  const CurrencyConverterMatrrialPage({super.key});
  @override
  State<CurrencyConverterMatrrialPage> createState() {
    return _CurrencyConverterMatrrialPageState();
  }
}

class _CurrencyConverterMatrrialPageState
    extends State<CurrencyConverterMatrrialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  void convert() {
    // setState(() {
    //   result = (double.parse(textEditingController.text) * 300);
    // });
    result = (double.parse(textEditingController.text) * 300);
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        //color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        //strokeAlign: BorderSide.strokeAlignInside,
      ),
      //borderRadius: BorderRadius.all(Radius.circular(5)),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              //margin: const EdgeInsets.all(10),
              color: Colors.black,
              child: Text(
                "PKR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2.0),
              //margin: const EdgeInsets.all(10),
              color: Colors.black,
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in PKR",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  //color(0xAARRGGBB)
                  //0xFF000000
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  //signed: true,
                ),
              ),
            ),
            //Button two types
            //1.  raised
            //2.  appear like text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: convert, //() {
                // setState(() {
                //   result = (double.parse(textEditingController.text) * 300);
                // });
                // setState(() {});

                // Three Modes in our program
                // 1. debug   2.  release   3.  profile
                // if (kDebugMode) {
                //   //debugPrint("button clicked");
                //   print(result);
                // }
                //},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize: MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                ),
                child: const Text('Convert'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
