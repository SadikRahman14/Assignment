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
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Al-Rihal Addidas'),
                  Image.asset(
                      'assets/Ball-2.jpg',
                        height: 150.0,
                        width: 150.0,
                  ),
                  Text('Price : 1950 Tk.'),
                  Text('Used in World Cup 2022'),
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
            ),
            Gap(10),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text('Product Name'),
                 Image.asset(
                   'assets/Ball-3.jpg',
                   height: 150.0,
                   width: 150.0,
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
                 Gap(10.0),
                 Image.asset(
                     'assets/Ball-1.jpg',
                      height: 150.0,
                      width: 150.0,
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
        ),

      );

  }
}


class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Buy Now'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Payment Method',
              style: TextStyle(
                color: Colors.white,
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Text(
                    'Bkash',
                    style: TextStyle(
                      color: Colors.white,
                    ),

                ),
                Gap(21),
                Text(
                  'Rocket',
                  style: TextStyle(
                    color: Colors.white,
                  ),

                ),
                Gap(21),
                Text(
                  'Nagad',
                  style: TextStyle(
                    color: Colors.white,
                  ),

                ),
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
              hint: Text(
                'Select an  Option',
                style: TextStyle(
                  color: Colors.white,
                ),

              ),
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

