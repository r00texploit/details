import 'package:details/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 4, 72, 77),
      padding: const EdgeInsets.all(25),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFFEDECF2),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "ERCHAD",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEDECF2),
              ),
            ),
          ),
          SizedBox(
            width: 122,
          ),
          IconButton(
              onPressed: () {
                AuthController con = Get.put(AuthController());
                con.signOut();
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}