import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController usdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text('Currency Converter',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: usdController,
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon:
                      const Icon(Icons.attach_money, color: Colors.black),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 50,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.black),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      result = 84 * double.parse(usdController.text);
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                  ), // style
                  child: const Text('Convert', style: TextStyle(fontSize: 18))),
            ),
          ],
        ),
      ),
    );
  }
}










// class CurrencyConverterMaterialPagee extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black54,
//       appBar: AppBar(
//         title: const Text('Currency Converter',
//             style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white)),
//         backgroundColor: Colors.black54,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               '0',
//               style: TextStyle(
//                   fontSize: 55,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Please enter the amount in USD',
//                   hintStyle: const TextStyle(color: Colors.black),
//                   prefixIcon:
//                       const Icon(Icons.attach_money, color: Colors.black),
//                   prefixIconConstraints: const BoxConstraints(
//                     minWidth: 50,
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(5),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//                 style: const TextStyle(color: Colors.black),
//                 keyboardType:
//                     const TextInputType.numberWithOptions(decimal: true),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextButton(
//                   onPressed: () {
//                     debugPrint('Convert button pressed');
//                   },
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.greenAccent,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     foregroundColor: Colors.black,
//                     minimumSize: const Size(double.infinity, 50),
//                   ), // style
//                   child: const Text('Convert', style: TextStyle(fontSize: 18))),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
