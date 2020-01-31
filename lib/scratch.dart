void main() {
  performTask();
}

void performTask() async {
  print(task1());
  print(await task2());
  print(task3());
}

String task1() {
  return 'Task1';
}

Future task2() async {
  String result;
  await Future.delayed(Duration(seconds: 2), () {
    result = 'Task2';
  });
  return result;
}

String task3() {
  return 'Task3';
}
