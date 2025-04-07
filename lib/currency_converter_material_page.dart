import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CurrencyConverterMaterialPage extends StatefulWidget{
   const CurrencyConverterMaterialPage({super.key});
  
  @override
  State<CurrencyConverterMaterialPage> createState ()=> _CurrencyConverterMaterialPageState();}


class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final textEditingController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
   
    
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
                onPressed: () async {
                  const apiUrl =
                      'https://api.exchangerate-api.com/v4/latest/USD'; // Example API URL
                  try {
                    final response = await http.get(Uri.parse(apiUrl));
                    if (response.statusCode == 200) {
                      final data = json.decode(response.body);
                      final exchangeRate =
                          data['rates']['KES']; // Fetch the rate for Kenyan Shilling (KES)

                      setState(() {
                        String input = textEditingController.text.replaceAll(
                          ',',
                          '.',
                        );
                        result =
                            double.tryParse(input) != null
                                ? double.parse(input) * exchangeRate
                                : 0;
                      });
                    } else {
                      throw Exception('Failed to fetch exchange rate');
                    }
                  } catch (e) {
                    // Handle errors (e.g., show a Snackbar or AlertDialog)
                    print('Error: $e');
                  }
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




class CurrencyConverterMaterialPageState extends StatelessWidget {
  const CurrencyConverterMaterialPageState({super.key});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}