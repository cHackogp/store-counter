// // import 'package:firebase/firebase_io.dart';

// // Store class that holds all store related data, with methods to manipulate the data.
// class Store {
//   String storeNumber;
//   List users = [];
//   int counter;

//   Store(String storeNumber, String user, int counter) {
//     this.storeNumber = storeNumber;
//     this.users.add(user);
//     this.counter = counter;
//   }

//   String GetStoreNumber() {
//     return storeNumber;
//   }

//   void SetStoreNumber(String storeNumber) {
//     this.storeNumber = storeNumber;
//   }

//   List GetUsers() {
//     return users;
//   }

//   void AddUser(String user) {
//     users.add(user);
//   }

//   void DeleteUser(String user) {
//     users.remove(user);
//   }

//   void IncrementCounter() {
//     counter++;
//   }

//   void DecrementCounter() {
//     counter--;
//   }

//   int CounterValue() {
//     return counter;
//   }
// }

// int main() {
//   Store store = new Store('783', 'Door 1', 0);

//   print('Marshalls Store Counter\n');
//   print(
//       '${store.GetStoreNumber()}\n${store.GetUsers()}\n${store.CounterValue()}');

//   return 0;
// }
