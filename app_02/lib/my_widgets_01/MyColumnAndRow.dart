import "package:flutter/material.dart";

class MyColumnAndRow extends StatelessWidget {
  const MyColumnAndRow({super.key});

  @override
  Widget build(BuildContext context) {
    // Tra ve Scaffold - widget cung cap bo cuc Material Design co ban
    // Man hinh
    return Scaffold(
      // Tiêu đề của ứng dụng
      appBar: AppBar(
        // Tieu de
        title: Text("App 02"),
        // Mau nen
        backgroundColor: Colors.yellow,
        // Do nang/ do bong cua AppBar
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print("b1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("b2");
            },
            icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("b3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      // body: Center(
      //   child: Column(
      //     children: [
      //       Row(
      //         children: [
      //           const SizedBox(height: 50,),
      //           const Icon(Icons.access_alarm_outlined),
      //           const Icon(Icons.ac_unit),
      //           const Icon(Icons.accessibility_new_rounded),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Text("Text1 .........."),
      //           Text("Text2 .........."),
      //           Text("Text3 .........."),
      //           Text("Text4 .........."),
      //         ],
      //       )
      //     ],
      //   )
      // ),

      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Section 1: Row layouts
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hàng ngang (Row)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(height: 16),
                  const Text('MainAxisAlignment.spaceEvenly:'),
                  Container(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.red,
                        child: const Center(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.green,
                        child: const Center(
                          child: Icon(
                            Icons.eco,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.blue,
                        child: const Center(
                          child: Icon(
                            Icons.water_drop,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 16),
                  const Text('MainAxisAlignment.spaceBetween:'),
                  Container(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.purple,
                        child: const Center(
                          child: Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.amber,
                        child: const Center(
                          child: Icon(
                            Icons.star,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        color: Colors.teal,
                        child: const Center(
                          child: Icon(
                            Icons.lightbulb,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Section 2: Column layouts
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cột dọc (Column)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Column 1 - CrossAxisAlignment.start
                      Container(
                        width: 150,
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'CrossAxisAlignment.start',
                              style: TextStyle(fontSize: 12),
                            ),
                            Container(height: 8),
                            Container(
                              width: 130,
                              height: 40,
                              color: Colors.orange,
                              child: const Center(
                                child: Icon(
                                  Icons.flight,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(height: 8),
                            Container(
                              width: 100,
                              height: 40,
                              color: Colors.deepOrange,
                              child: const Center(
                                child: Icon(
                                  Icons.directions_car,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(height: 8),
                            Container(
                              width: 80,
                              height: 40,
                              color: Colors.red,
                              child: const Center(
                                child: Icon(
                                  Icons.directions_bike,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Column 2 - CrossAxisAlignment.center
                      Container(
                        width: 150,
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'CrossAxisAlignment.center',
                              style: TextStyle(fontSize: 12),
                            ),
                            Container(height: 8),
                            Container(
                              width: 130,
                              height: 40,
                              color: Colors.lightBlue,
                              child: const Center(
                                child: Icon(
                                  Icons.cloud,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(height: 8),
                            Container(
                              width: 100,
                              height: 40,
                              color: Colors.blue,
                              child: const Center(
                                child: Icon(
                                  Icons.umbrella,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(height: 8),
                            Container(
                              width: 80,
                              height: 40,
                              color: Colors.indigo,
                              child: const Center(
                                child: Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Section 3: Nested layouts
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bố cục lồng nhau',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Left column
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 60,
                            color: Colors.pink,
                            child: const Center(
                              child: Icon(
                                Icons.camera,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          Container(height: 8),
                          Container(
                            width: 80,
                            height: 60,
                            color: Colors.purple,
                            child: const Center(
                              child: Icon(
                                Icons.image,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Center column with nested Row
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 40,
                                color: Colors.lightGreen,
                                child: const Center(
                                  child: Icon(
                                    Icons.playlist_add_check,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(width: 4),
                              Container(
                                width: 60,
                                height: 40,
                                color: Colors.green,
                                child: const Center(
                                  child: Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(height: 8),
                          Container(
                            width: 124,
                            height: 60,
                            color: Colors.teal,
                            child: const Center(
                              child: Icon(
                                Icons.list_alt,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Right column
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 60,
                            color: Colors.amber,
                            child: const Center(
                              child: Icon(
                                Icons.shopping_cart,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          Container(height: 8),
                          Container(
                            width: 80,
                            height: 60,
                            color: Colors.orange,
                            child: const Center(
                              child: Icon(
                                Icons.local_shipping,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed");
        },
        child: const Icon(Icons.add_ic_call),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
        ],
      ),
    );
  }
}
