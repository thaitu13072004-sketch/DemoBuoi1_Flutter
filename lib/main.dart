import 'package:flutter/material.dart';

void main() {
  runApp(CarApp());
}

class CarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarHomePage(),
    );
  }
}

class CarHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ứng dụng mua bán xe ô tô PT'),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(16),
        children: [
          buildCarCard('Toyota Camry 2024', 'assets/images/car1.jpg', '850 triệu'),
          buildCarCard('Hyundai Tucson 2023', 'assets/images/car2.jpg', '1,1 tỷ'),
          buildCarCard('VinFast VF8', 'assets/images/car3.jpg', '1,3 tỷ'),
        ],
      ),
    );
  }

  Widget buildCarCard(String name, String imagePath, String price) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(price, style: TextStyle(color: Colors.red, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
