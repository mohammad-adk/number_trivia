import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:numbertrivia/core/error/failures.dart';
import 'package:numbertrivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:numbertrivia/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> execute({@required number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
