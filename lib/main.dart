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
            mainAxisAlignment: MainAxisAlignment.center,
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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.blueGrey,
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.blueGrey,
              label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Colors.blueGrey,
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            backgroundColor: Colors.blueGrey,
            label: "Add",
          )
        ],
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PaymentButton(imagePath: 'assets/bKash.png',),
                Gap(15),
                PaymentButton(imagePath: 'assets/masterCard.png',),
                Gap(15),
                PaymentButton(imagePath: 'assets/Rocket.png'),
                Gap(15),
                PaymentButton(imagePath: 'assets/Nagad.png'),
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
                  'MasterCard',
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
              items: ['Bkash','MasterCard', 'Rocket', 'Nagad']
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