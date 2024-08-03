import 'package:dartz/dartz.dart';
import '../api.dart';


typedef EitherResponse<T> = Future<Either<AppError, T>>;
