import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return        Material(

                    borderRadius: BorderRadius.circular(15),
                    elevation: 2,
                    shadowColor: Colors.grey.shade300,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.grey.shade500,
                        ),
              
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                
                ;
  }
}