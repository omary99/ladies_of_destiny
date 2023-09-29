import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ladies_of_destiny/drawer.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final formattedDate = DateFormat('dd/MM/yyyy').format(now);
    final formattedTime = DateFormat('hh:mm a').format(now);

    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
          backgroundColor: Colors.blueGrey[300],
        leading: IconButton(icon: const Icon(Icons.menu_book), onPressed: (){},),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0,
                child: Row(
                  children: [
                    // First item (Container with row)
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(30.0))),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.flag,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Toronto, Canada  ',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    // Second item (Circular Avatar)
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          backgroundImage:
                              const AssetImage('assets/images/profile_image.jpg'),
                          radius: 40.0,
                          // Green dot representing active status
                          child: Padding(
                            padding: const EdgeInsets.only(top: 35.0, left: 20.0),
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Today, $formattedDate',
                ),
              ),
              const SizedBox(height: 10,),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome, Chichidolls!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Material(
                    child: Container(
                      height: 50,
                      color: const Color(0xFFF2F3F4),
                      child: const TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(8.0),
                          hintText: 'Search by location or date',
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                          icon: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Text(
                    'Nearby Event',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 200,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 500,
                          color: Colors.blueGrey,
                          child: Image.asset(
                            'assets/images/tree.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Ladies of Destiny',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),

                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 20.0),
                                      child: Text('Event',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    )),

                              const Align(
                                  alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 20.0),
                                      child: Text('By Chichidolls',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                  ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 0.0),
                                child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                  child: const Center(
                                    child: Text(
                                      'Get a Ticket',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20.0,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.content_copy_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Upcoming Events',
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blueGrey,
                      child: Image.asset(
                        'assets/images/lemon_glass.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ladies of Destiny Event',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'By Anitha Dawson',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.watch_later_outlined,
                            color: Colors.grey,
                          ),
                          Text(
                            '$formattedDate - $formattedTime',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              //  second Row
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blueGrey,
                      child: Image.asset(
                        'assets/images/tree.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Grace of Lord Jesus',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'By Chloe Aron',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.watch_later_outlined,
                            color: Colors.grey,
                          ),
                          Text(
                            '$formattedDate - $formattedTime',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blueGrey,
                      child: Image.asset(
                        'assets/images/leaf.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Fashion Show for Ladies',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'By Chichidolls',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.watch_later_outlined,
                            color: Colors.grey,
                          ),
                          Text(
                            '$formattedDate - $formattedTime',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
