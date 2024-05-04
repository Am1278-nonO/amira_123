import 'package:dio/dio.dart';
import 'package:recycling_app/utilts/api_services.dart';
import 'package:recycling_app/utilts/fauiler.dart';
import 'package:dartz/dartz.dart';

class auth {
  ApiService apiService = ApiService(Dio());
  Future<Either<Failures, String>> signup({required dynamic userdata}) async {
    try {
      print("1");
      var response = await apiService.post(
        endPoint: "users/signUp",
        data: userdata,
      );
      print(right(response["token"]));
      return right(response["token"]);
    } catch (e) {
      if (e is DioException) {
        print("err1");
        return left(ServerFailure.fromDioException(e));
      }
      print("err2");
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  Future<Either<Failures, String>> signin({required dynamic userdata}) async {
    try {
      var response = await apiService.post(
        endPoint: "users/signIn",
        data: userdata,
      );
      print(right(response['token']));
      return right(response["token"]);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
