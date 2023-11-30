import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductDetailsPage(),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Center(child: Text('Product Details')),
      ),
      body:
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
         children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Product Name'),
              Image.network(
                  'data:image/jpeg;base64,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'
              ),
              Text('Product Price'),
              Text('Product feature description'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyNowPage()),
                  );
                },
                child: Text('Buy Now'),
              ),
            ],
          ),
          Gap(10),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text('Product Name'),
               Image.network(
                   'data:image/jpeg;base64,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'
               ),
               Text('Product Price'),
               Text('Product feature description'),
               SizedBox(height: 20),
               ElevatedButton(
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => BuyNowPage()),
                   );
                 },
                 child: Text('Buy Now'),
               ),
             ],
           ),
           Gap(10),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text('Product Name'),
               Image.network(
                   'data:image/jpeg;base64,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'
               ),
               Text('Product Price'),
               Text('Product feature description'),
               SizedBox(height: 20),
               ElevatedButton(
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => BuyNowPage()),
                   );
                 },
                 child: Text('Buy Now'),
               ),
             ],
           ),
        ],



        ),
      );

  }
}


class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Choose Payment Method'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PaymentButton(imagePath: 'assets/bKash.png',),
                PaymentButton(imagePath: 'assets/Rocket.png'),
                PaymentButton(imagePath: 'assets/Nagad.png'),
                /*PaymentButton(imagePath: 'mastercard_image_path'),
                PaymentButton(imagePath: 'amex_image_path'),*/
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bkash'),
                Gap(21),
                Text('Rocket'),
                Gap(21),
                Text('Nagad'),
              ],
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              items: ['Bkash', 'Rocket', 'Nagad']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Do something with the selected value
              },
              hint: Text('Select an option'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String imagePath;

  const PaymentButton({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        imagePath,
        height: 50,
        width: 50,
      ),
    );
  }
}

