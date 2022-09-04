import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
      "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__340.jpg",
      "https://images.unsplash.com/photo-1558871585-4c3574a1b7cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmllbGRzfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      "http://images.squarespace-cdn.com/content/v1/540623dee4b0c094f2dfde53/1490785968100-TFUYCLNTO3O4CYFM6WPF/assure-life-Online-Life-Insurance-Quote.jpg",
      "https://images.unsplash.com/photo-1589746163986-425f263795fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c29tZXJzZXR8ZW58MHx8MHx8&w=1000&q=80",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV9S7xXGZZ3D2MgD95Ow0mltokfk2kwD1-GAWm4_-6ylr9EglQ2XfeXpnU0lYR5kPyPgE&usqp=CAU",
      "https://swall.teahub.io/photos/small/0-7025_nature-wallpaper-with-flowers-image-good-morning-photo.jpg",
    ];
    return Scaffold(
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      appBar: AppBar(
        title: const Text('Home Screen'),
        leading: const Icon(Icons.menu),
        actions: [
          //Icon(Icons.search),
          IconButton(
            onPressed: () {
              debugPrint('Pressed');
            },
            icon: const Icon(Icons.search),
          ),
          const SizedBox(width: 20),
          IconButton(
            onPressed: () {
              debugPrint('Pressed');
            },
            icon: const Icon(Icons.language),
          ),
          //const Icon(Icons.language),
          const SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                for (int i = 0; i < imageList.length; i++)
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imageList[i]),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     decoration: BoxDecoration(
      //       boxShadow: const [
      //         BoxShadow(
      //           blurRadius: 10,
      //           spreadRadius: 7,
      //           offset: Offset(0, 3),
      //           color: Colors.purple,
      //         ),
      //       ],
      //       image: const DecorationImage(
      //         fit: BoxFit.cover,
      //         image: NetworkImage(
      //           'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      //         ),
      //       ),
      //       shape: BoxShape.circle,
      //       border: Border.all(
      //         color: Colors.green,
      //         width: 5,
      //       ),
      //       color: Colors.red,
      //     ),
      //   ),
      // ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 100.0,
        color: Colors.blue,
        child: const Text(
          'Bottom Navigation',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
