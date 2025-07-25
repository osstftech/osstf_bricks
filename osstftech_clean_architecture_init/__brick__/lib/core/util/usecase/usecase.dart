import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:{{name}}/core/util/error/failures.dart';

/// this general use case structure for calling the usecase method
abstract class UseCase<Type, Params> {
  Future<Either<Failures, Type>>? call(Params params);
}

/// this class is used for no parameter method
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
