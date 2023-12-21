import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysomethingnew/getx/api/productController.dart';
class ProductListView extends StatelessWidget {
    ProductListView({super.key});

  final ProductController productController=Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MakeUp List"
        ),
      ),
      body: Obx(() {
        if(ProductController.isLoading.value)
           return Center(
             child: CircularProgressIndicator(),
           );
        else{
          return  ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          margin: EdgeInsets.all(8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(productController.productList[index].imageLink!,
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Flexible(child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(productController.productList[index].name!,
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(productController.productList[index].brand!,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            Text(productController.productList[index].category!,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        )
                )
                      ],
                    ),
                Container(
                height: 2,
                )
                  ],
                );

          });
        }

      }),
    );
  }
}
