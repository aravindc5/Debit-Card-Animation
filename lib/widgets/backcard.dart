import 'package:flutter/material.dart';

class BackCard extends StatelessWidget {
  final double pi = 3.14;
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(pi * 1),
      origin: Offset(MediaQuery.of(context).size.width / 2, 0),
      child: Center(
          child: Card(
              elevation: 30,
              shadowColor: Colors.black38,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        color: Colors.grey[600],
                        width: double.maxFinite,
                        height: 50,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                        color: Colors.grey[400],
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 10),
                              color: Colors.grey[300],
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.09,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.03,
                              child: const Image(
                                image: NetworkImage(
                                    'https://www.searchpng.com/wp-content/uploads/2019/02/Paytm-Logo-With-White-Border-PNG-image-1024x325.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )))),
    );
  }
}
