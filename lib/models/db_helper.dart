import 'package:shodai_mama/models/item.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDatabase();
  }

  initDatabase() async {
    io.Directory docDirectory = await getApplicationDocumentsDirectory();
    String path = join(docDirectory.path, 'item.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE item (id INTEGER PRIMARY KEY ,title TEXT, description TEXT , category TEXT, image TEXT ,)',
    );
  }

  Future<Item> insert(Item item) async {
    var dbClient = await db;
    await dbClient!.insert('item', item.toMap());
    return item;
  }
}
