import 'package:flutter/material.dart';
import 'package:gd1_c_1668/isiShowProfile.dart';
import 'package:gd1_c_1668/utilities/constant.dart';

class ShowProfile extends StatelessWidget {
  const ShowProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColor,
        // Menambahkan AppBar
        appBar: AppBar(
          backgroundColor: kColor,
          title: const Text('Profile'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    kSizeBox2,
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/download.jpg'),
                    ),
                    kSizeBox2,
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Kent Richard Purnomo', style: kTextStyle4),
                          Text('220711668', style: kTextStyle5),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: const [
                          Text('3', style: kTextStyle3),
                          Text('Flowers', style: kTextStyle3),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: const [
                          Text('10', style: kTextStyle3),
                          Text('Following', style: kTextStyle3),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: const [
                          Text('4', style: kTextStyle3),
                          Text('Post', style: kTextStyle3),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              kSizeBox,
              const IsiShowProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
