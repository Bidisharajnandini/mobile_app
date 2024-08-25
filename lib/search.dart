import 'package:flutter/material.dart';
import 'package:project/lists_available.dart';
import 'package:project/order.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _currentIndex = 1;
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
                        "Buyer's name",
                        style: TextStyle(fontSize: 27),
                      ),
                      const SizedBox(
                        width: 133,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Close",
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
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 119, 119, 121)),
                      fillColor: Color.fromARGB(255, 239, 236, 236),
                      filled: true,
                    )),
                  ),
                ),
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
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });

              if (_currentIndex == 0) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const ListsAvailable();
                }));
              } else if (_currentIndex == 1) {
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
