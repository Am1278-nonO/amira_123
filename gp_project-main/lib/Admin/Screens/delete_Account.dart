
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';
class DeleteAccountPage extends StatefulWidget {
  final String accountId;
  DeleteAccountPage({Key? key, required this.accountId}) : super(key: key);
  @override
  _DeleteAccountPageState createState() => _DeleteAccountPageState();
}
class _DeleteAccountPageState extends State<DeleteAccountPage> {
  bool _isLoading = false;
  String _message = '';
  void _deleteAccount(String accountId) async {
    setState(() {
      _isLoading = true;
    });
    try {
      final dio = Dio();
      dio.options.headers['token'] = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NjMzYzYxYzIzOTA4ZTBhODZkZTVlYmMiLCJyb2xlIjoiQWRtaW4iLCJpYXQiOjE3MTQ3MjA2ODV9.obPEQtBGCmutmCsqdlaRwf5y17xgeBAAWMb-An9uoaE'; // Replace YOUR_AUTH_TOKEN with your actual authentication token
      final response = await dio.delete(
          'https://robbikya.onrender.com/api/v1/users/deleteAccount/{$widget.accountId}',
      );
      if (response.statusCode == 200) {
        setState(() {
          _message = 'Account deleted successfully';
        });
      } else {
        setState(() {
          _message = 'Failed to delete account';
        });
      }
    } catch (error) {
      setState(() {
        _message = 'Error: $error';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt('Delete Account',Colors.white,20,false),
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Are you sure you want to delete this account?',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  green_color,
                ),
              ),
              onPressed: () => _deleteAccount(widget.accountId),
              //onPressed: _deleteAccount,
              child: txt('Delete Account',Colors.white,20,false),
            ),
            SizedBox(height: 10),
            Text(_message),
          ],
        ),
      ),
    );
  }
}
