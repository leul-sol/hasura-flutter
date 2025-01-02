const String getTasksQuery = r'''
query GetTasks {
  tasks {
    id
    title
    status
  }
}
''';
