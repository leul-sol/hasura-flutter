import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../graphql/hasura_client.dart';
import '../graphql/queries.dart';
import '../models/task.dart';

// This is now a FutureProvider to fetch the list of tasks asynchronously.
final tasksProvider = FutureProvider<List<Task>>((ref) async {
  final client = HasuraClient.getClient();
  final QueryOptions options = QueryOptions(document: gql(getTasksQuery));
  final QueryResult result = await client.query(options);

  if (result.hasException) {
    print(result.exception.toString());
    return [];
  }

  final tasks = result.data!['tasks'] as List<dynamic>;
  return tasks.map((task) => Task.fromJson(task)).toList();
});
