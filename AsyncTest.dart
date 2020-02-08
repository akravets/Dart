import 'dart:core';

createOrderMessage() async {
  fetchUserOrder().then((value) => print(value)).catchError((error) => print("Error occured: " + error.toString()));
}

Future<String> fetchUserOrder() {
  String type = "tea";

  // Imagine that this function is more complex and slow
  return Future.delayed(Duration(seconds: 1)).then((onValue) =>
      checkOrder(type)
  );
}

checkOrder(var value){
  if(value == "teaa"){
    throw Exception("not coffee");
  }
  return "Coffee!";

}

void main () {
  createOrderMessage();
}