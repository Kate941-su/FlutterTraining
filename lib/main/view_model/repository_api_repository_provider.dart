import 'package:flutter_training/main/repository/repository_api_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final repositoryApiRepositoryProvider = Provider((ref) => RepositoryApiRepository());