import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HasuraClient {
  static GraphQLClient getClient() {
    final HttpLink httpLink = HttpLink(
      dotenv.env['HTTP_URL']!,
      defaultHeaders: {
        'x-hasura-admin-secret': dotenv.env['X_HASURA_ADMIN_SECRETE']!,
      },
    );

    return GraphQLClient(
      cache: GraphQLCache(),
      link: httpLink,
    );
  }
}
