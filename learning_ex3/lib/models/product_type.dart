enum ProductType {
  dart,
  flutter,
  firebase 
}

String getProductName(ProductType type){
  switch(type){
    case ProductType.dart: 
    return 'Dart';
    case ProductType.flutter:
    return 'Flutter';
    case ProductType.firebase: 
    return 'Firebase';
  }
}

String getProductImage( ProductType type){
  switch(type){
    case ProductType.dart:
    return 'asset/ex3/dart.png';
    case ProductType.flutter: 
    return 'asset/ex3/flutter.png';
    case ProductType.firebase: 
    return 'asset/ex3/firebase.png';
  }
}

String getProductDescription(ProductType type){
  switch(type){ 
    case ProductType.dart: 
    return 'The best object-oreinted language';
    case ProductType.flutter: 
    return 'The best mobile widget library!';
    case ProductType.firebase:
    return 'the base claude database';
  }
}