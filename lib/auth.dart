// import 'package:firebase_auth/firebase_auth.dart';

// Future<UserCredential?> createAccount(String name, String email, String password) async {
//   FirebaseAuth _auth = FirebaseAuth.instance;

//   try {
//     UserCredential user = (await _auth.createUserWithEmailAndPassword(
//             email: email, password: password))
//         .user ;

//     if (user != null) {
//       print('Account created successful');
//       return user;
//     } else {
//       print('Failed');
//       return user;
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// Future<UserCredential?> logIn(String name, String password) async {
//   FirebaseAuth _auth = FirebaseAuth.instance;

//   try {
//     UserCredential user = (await _auth.signInWithEmailAndPassword(
//             email: name, password: password))
//         .user ;

//     if (user != null) {
//       print('Successful');
//       return user;
//     } else {
//       print('Failed');
//       return user;
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// Future logOut() async {
//   FirebaseAuth _auth = FirebaseAuth.instance;

//   try {
//     await _auth.signOut().then((value){
//       ////
//     });
//   } catch (e) {
//     print('Error');
//   }
// }























// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';

// // import 'screens/login_screen.dart';

// // Future<User?> createAccount(String name, String email, String password) async {
// //   FirebaseAuth _auth = FirebaseAuth.instance;

// //   FirebaseFirestore _firestore = FirebaseFirestore.instance;

// //   try {
// //     UserCredential userCrendetial = await _auth.createUserWithEmailAndPassword(
// //         email: email, password: password);

// //     print("Account created Succesfull");

// //     userCrendetial.user!.updateDisplayName(name);

// //     await _firestore.collection('users').doc(_auth.currentUser!.uid).set({
// //       "name": name,
// //       "email": email,
// //       "status": "Unavalible",
// //       "uid": _auth.currentUser!.uid,
// //     });

// //     return userCrendetial.user;
// //   } catch (e) {
// //     print(e);
// //     return null;
// //   }
// // }

// // Future<User?> logIn(String email, String password) async {
// //   FirebaseAuth _auth = FirebaseAuth.instance;
// //   FirebaseFirestore _firestore = FirebaseFirestore.instance;

// //   try {
// //     UserCredential userCredential = await _auth.signInWithEmailAndPassword(
// //         email: email, password: password);

// //     print("Login Sucessfull");
// //     _firestore
// //         .collection('users')
// //         .doc(_auth.currentUser!.uid)
// //         .get()
// //         .then((value) => userCredential.user!.updateDisplayName(value['name']));

// //     return userCredential.user;
// //   } catch (e) {
// //     print(e);
// //     return null;
// //   }
// // }

// // Future logOut(BuildContext context) async {
// //   FirebaseAuth _auth = FirebaseAuth.instance;

// //   try {
// //     await _auth.signOut().then((value) {
// //       Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
// //     });
// //   } catch (e) {
// //     print("error");
// //   }
// // }
