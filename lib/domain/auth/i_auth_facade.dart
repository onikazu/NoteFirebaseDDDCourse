import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:notes_firebase_ddd_course/domain/auth/auth_failure.dart';
import 'package:notes_firebase_ddd_course/domain/auth/value_objects.dart';

// dart にはinterfaceがないのでIから始まる抽象クラスをそれとする。
abstract class IAuthFacade {
  // voidを使っては行けない
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword ({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword ({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}