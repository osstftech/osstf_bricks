import 'package:fpdart/fpdart.dart';
import 'package:{{project_name.snakeCase()}}/core/util/error/failures.dart';
import 'package:{{project_name.snakeCase()}}/core/util/usecase/usecase.dart';

///[marker interface] for login use case
abstract class {{name.pascalCase)}}UseCase {}

//TODO: Replace T with your actual data type
abstract class Get{{name.pascalCase()}} extends {{name.pascalCase)}}UseCase
    implements UseCase<T, NoParams> {
  Future<Either<Failures, T>> get{{name.pascalCase()}}(NoParams params);
}