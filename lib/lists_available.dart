import 'package:flutter/material.dart';
import 'package:project/search.dart';
import 'package:project/order.dart';

class ListsAvailable extends StatefulWidget {
  const ListsAvailable({super.key});

  @override
  State<ListsAvailable> createState() => _ListsAvailableState();
}

class _ListsAvailableState extends State<ListsAvailable> {
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 35,
          ),
          child: Column(
            children: [
              Material(
                elevation: 4,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Lists",
                        style: TextStyle(fontSize: 27),
                      ),
                      const SizedBox(
                        width: 219,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Add list",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 88, 86, 214)),
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 43,
                  child: Theme(
                    data: ThemeData(
                      primaryColor: Colors.redAccent,
                      primaryColorDark: Colors.red,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 239, 236, 236))),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 134, 134, 134),
                        ),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: Color.fromARGB(255, 134, 134, 134),
                        ),
                        contentPadding: EdgeInsets.only(top: 10),
                        hintText: "Add product",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 119, 119, 121)),
                        fillColor: Color.fromARGB(255, 239, 236, 236),
                        filled: true,
                      ),
                    ),
                  ),
                ),
              ),
              for (int i = 0; i < _counters.length; i++)
                Container(
                  padding: const EdgeInsets.only(left: 23, top: 25),
                  child: Row(
                    children: [
                      Image.asset(
                        "images/onion.png",
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "Beetles",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 45,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(11),
                              backgroundColor:
                                  const Color.fromARGB(255, 239, 239, 242)),
                          onPressed: () {
                            _decrementCounter(i);
                          },
                          child: const Icon(
                            Icons.remove,
                            color: Colors.black,
                          )),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '${_counters[i]} kg',
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(11),
                              backgroundColor:
                                  const Color.fromARGB(255, 239, 239, 242)),
                          onPressed: () {
                            _incrementCounter(i);
                          },
                          child: const Icon(
                            Icons.add,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
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
