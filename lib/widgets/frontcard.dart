import 'package:flutter/material.dart';

class FrontCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 30,
        shadowColor: Colors.black38,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.2,
                child: const Image(
                    image: NetworkImage(
                        'https://www.searchpng.com/wp-content/uploads/2019/02/Paytm-Logo-With-White-Border-PNG-image-1024x325.png')),
              ),
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.01,
                color: Colors.blue,
              ),
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.01,
                color: Colors.blue[800],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.maxFinite,
                child: const Text(
                  '1234   5678   1234   5678',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'VALID UPTO',
                        style: TextStyle(fontSize: 10),
                      ),
                      const Text(
                        '10/25',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      const Text(
                        'PLATINUM',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'ARAVIND C',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: 70,
                      child: const Image(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Rupay-Logo.png/1199px-Rupay-Logo.png')),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
