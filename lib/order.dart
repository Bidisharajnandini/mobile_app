// lib/order_page.dart

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:project/search.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int currentIndex = 0;

  final List<int> _counters =
      List.filled(8, 0); // Adjust the size based on your needs

  void _incrementCounter(int index) {
    setState(() {
      _counters[index]++;
    });
  }

  void _decrementCounter(int index) {
    setState(() {
      if (_counters[index] > 0) {
        _counters[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Buyer's name",
              style: TextStyle(color: Colors.blue),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                // Add logic for closing the page
                print("Close tapped");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Close',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderItem(orderId: '123', date: '2022-01-15', time: '15:30'),
            OrderItem(orderId: '124', date: '2022-01-16', time: '16:45'),
            OrderItem(orderId: '125', date: '2022-01-17', time: '18:00'),
            // Add more OrderItem widgets as needed
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            color: Color.fromARGB(255, 85, 91, 224),
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            items: const [
              BottomNavigationBarItem(
                label: "Lists",
                icon: Icon(
                  Icons.list_alt,
                  color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                label: "Orders",
                icon: Icon(
                  Icons.list_alt,
                  color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                label: "Invoice",
                icon: Icon(
                  Icons.list_alt,
                  color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                ),
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });

              if (currentIndex == 0) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const Search();
                }));
              } else if (currentIndex == 1) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const OrderPage();
                }));
              }
            },
          ),
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String orderId;
  final String date;
  final String time;

  const OrderItem({
    Key? key,
    required this.orderId,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Date: $date',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Time: $time',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Order ID: $orderId',
          style: TextStyle(fontSize: 16),
        ),
        Divider(),
      ],
    );
  }
}
