import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  @override
  State createState () => _CurrencyConverterMaterialPageState();
}




class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  _CurrencyConverterMaterialPageState();
  @override
  Widget build(BuildContext context) {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.deepOrange,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(50),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency converter app'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Colors.deepOrange,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(color: Colors.deepOrange),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  iconColor: Colors.blue,
                  labelText: result.toString(),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  suffix: Icon(Icons.monetization_on, color: Colors.deepOrange),
                  focusedBorder: border,
                  enabledBorder: border,
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){
                  result = double.parse(textEditingController.text)*130;
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(15),
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  )),
                ),
                child: Text(
                  'CONVERT CURRENCY ',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
