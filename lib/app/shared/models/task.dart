import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'task.g.dart';

@HiveType(typeId: 0)
class Task extends HiveObject {
  Task(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.isCompleted});

  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  final DateTime createdAt;

  @HiveField(3)
  bool isCompleted;

  factory Task.create({required String name, DateTime? createdAt}) => Task(
      id: const Uuid().v1(),
      name: name,
      createdAt: createdAt ?? DateTime.now(),
      isCompleted: false);
}






/* 
part 'task.g.dart';

@HiveType(typeId: 0)
class Task extends HiveObject {
  Task(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.isCompleted});

  @HiveField(0)
  final String id;

  @HiveField(1)
   String name;

  @HiveField(2)
  final DateTime createdAt;

  @HiveField(3)
   bool isCompleted;

  factory Task.create({required String name, DateTime? createdAt}) => Task(
      id: const Uuid().v1(),
      name: name,
      createdAt: createdAt ?? DateTime.now(),
      isCompleted: false);
}
 */
