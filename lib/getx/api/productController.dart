import 'package:get/get.dart';
import 'package:trysomethingnew/getx/api/ProductModel.dart';
import 'package:trysomethingnew/getx/api/apiServices.dart';

class ProductController extends GetxController{
  static var isLoading=true.obs;
  var productList= <ProductModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    fetchProduct();
    super.onInit();
  }
  void fetchProduct() async{
    try{
      isLoading(true);
      var product=await ApiServices.fetchProduct();
      productList.assignAll(product);
        }
    finally {
      isLoading(false);
    }
  }

}