// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:music_app/screens/dashboard.dart';

// TextEditingController emailcontroller = TextEditingController();
// TextEditingController passwordcontroller = TextEditingController();
// //regiter or signup
// registeruser() async {
//   try {
//     final credential =
//         await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: emailcontroller.text,
//       password: passwordcontroller.text,
//     );
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'weak-password') {
//       print('The password provided is too weak.');
//     } else if (e.code == 'email-already-in-use') {
//       print('The account already exists for that email.');
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// //login
// userlogin() async {
//   try {
//     final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: emailcontroller.text, password: passwordcontroller.text);
//     // Navigator.push(
//     //     context, MaterialPageRoute(builder: (context) => Dashboard_View()));
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'user-not-found') {
//       print('No user found for that email.');
//     } else if (e.code == 'wrong-password') {
//       print('Wrong password provided for that user.');
//     }
//   }
// }

// //logout
// logout() async {
//   await FirebaseAuth.instance.signOut();
// }

// //google signin
// googlesignin() {
//   Future<UserCredential> signInWithGoogle() async {
//     // Trigger the authentication flow
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//     // Obtain the auth details from the request
//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;

//     // Create a new credential
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );

//     // Once signed in, return the UserCredential
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
// }

// //facebook
// // facebooklogin(){

// // Future<UserCredential> signInWithFacebook() async {
// //   // Trigger the sign-in flow
// //   final LoginResult loginResult = await FacebookAuth.instance.login();

// //   // Create a credential from the access token
// //   final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken.token);

// //   // Once signed in, return the UserCredential
// //   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
// // }
// // }
