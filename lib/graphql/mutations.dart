const String addTaskMutation = r'''
mutation AddTask($title: String!, $status: String!) {
  insert_tasks_one(object: {title: $title, status: $status}) {
    id
    title
    status
  }
}
''';
