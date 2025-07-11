import '../models/model_product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ProductService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Product>> getProducts() async {
    final snapshot = await _db.collection('products').get();
    return snapshot.docs
        .map((doc) => Product.fromMap(doc.data(), doc.id))
        .toList();
  }

  Future<void> addProduct(Product product) async {
    await _db.collection('products').add({
      'name': product.name,
      'description': product.description,
      'price': product.price,
      'imageUrl': product.imageUrl,
    });
  }

  Future<void> deleteProduct(String productId) async {
  await _db.collection('products').doc(productId).delete();
}

}
