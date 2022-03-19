// import 'package:chat_chat/auth.dart';
// import 'package:flutter/material.dart';

// class CreateAccount extends StatefulWidget {
//   const CreateAccount({Key? key}) : super(key: key);

//   @override
//   State<CreateAccount> createState() => _CreateAccountState();
// }

// class _CreateAccountState extends State<CreateAccount> {
//   final TextEditingController _name = TextEditingController();
//   final TextEditingController _email = TextEditingController();
//   final TextEditingController _password = TextEditingController();
//   bool isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: isLoading
//           ? Center(
//               child: CircularProgressIndicator(),
//             )
//           : SingleChildScrollView(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: size.height / 20,
//                   ),
//                   Container(
//                     alignment: Alignment.centerLeft,
//                     width: size.width / 0.5,
//                     // child: IconButton(
//                     //     icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
//                   ),
//                   SizedBox(
//                     height: 90,
//                   ),
//                   Container(
//                     width: size.width / 1.1,
//                     child: Text(
//                       "Welcome",
//                       style: TextStyle(
//                         fontSize: 34,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: size.width / 1.1,
//                     child: Text(
//                       "Create Account to Continue",
//                       style: TextStyle(
//                         color: Colors.grey[700],
//                         fontSize: 25,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: size.height / 10,
//                   ),
//                   Container(
//                     width: size.width,
//                     alignment: Alignment.center,
//                     child: field(size, "Name", Icons.account_box, _name),
//                   ),
//                   SizedBox(
//                     height: 17,
//                   ),
//                   Container(
//                     width: size.width,
//                     alignment: Alignment.center,
//                     child: field(size, "Email", Icons.account_box, _email),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 18.0),
//                     child: Container(
//                       width: size.width,
//                       alignment: Alignment.center,
//                       child: field(size, "Password", Icons.lock, _password),
//                     ),
//                   ),
//                   SizedBox(
//                     height: size.height / 20,
//                   ),
//                   customButton(size),
//                   SizedBox(
//                     height: size.height / 40,
//                   ),
//                   TextButton(
//                     onPressed: () => Navigator.pop(context),
//                     child: Text(
//                       "Already have an Account, Sign in",
//                       style: TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//     );
//   }

//   Widget field(
//       Size size, String hintText, IconData icon, TextEditingController cont) {
//     return Container(
//       height: size.height / 14,
//       width: size.width / 1.1,
//       child: TextField(
//         controller: cont,
//         decoration: InputDecoration(
//           prefixIcon: Icon(icon),
//           hintText: hintText,
//           hintStyle: TextStyle(color: Colors.grey),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget customButton(Size size) {
//     return GestureDetector(
//       onTap: () {
//         if (_email.text.isNotEmpty &&
//             _email.text.isNotEmpty &&
//             _password.text.isNotEmpty) {
//           setState(() {
//             isLoading = true;
//           });

//           createAccount(_name.text, _email.text, _password.text).then((user) {
//             if (user != null) {
//               setState(() {
//                 isLoading = false;
//               });
//               print('Account created');
//             } else {
//               print('Login FAiled');
//             }
//           });
//         } else {
//           print('Please enter Credentials');
//         }
//       },
//       // onTap: () {
//       //   if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
//       //     setState(() {
//       //       isLoading = true;
//       //     });

//       //     logIn(_email.text, _password.text).then((user) {
//       //       if (user != null) {
//       //         print("Login Sucessfull");
//       //         setState(() {
//       //           isLoading = false;
//       //         });
//       //         // Navigator.push(
//       //         //     context, MaterialPageRoute(builder: (_) => HomeScreen()));
//       //       } else {
//       //         print("Login Failed");
//       //         setState(() {
//       //           isLoading = false;
//       //         });
//       //       }
//       //     });
//       //   } else {
//       //     print("Please fill form correctly");
//       //   }
//       // },
//       child: Container(
//           height: size.height / 14,
//           width: size.width / 1.2,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: Colors.blue,
//           ),
//           alignment: Alignment.center,
//           child: Text(
//             "Sign up",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           )),
//     );
//   }
// }
