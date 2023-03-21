import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../model/note.dart';

class NotesDatabase {
  static final NotesDatabase instance = NotesDatabase._init();

  static Database? _database;

  NotesDatabase._init();

  Future<Database> get database async {
    // hay que aumentar el signo de admiracion para asegurar que no se esta enviando una variable
    if (_database != null) return _database!;
    _database = await openDatabase('note.db');
    return _database!;
  }

  // instanciando que todo salga bien
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  //definir el tipo de dato que nos va a tocar ose el id etc del NOte
  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final boolType = 'BOOLEAN NOT NULL';
    final textType = 'TEXT NOT NULL';
    final integerType = 'INTEGER NOT NULL';
    await db.execute('''
      CREATE TABLE $tableNotes(
        ${NoteFields.id} $idType,
        ${NoteFields.isImportant} $boolType,
        ${NoteFields.number} $textType,
        ${NoteFields.title} $textType,
        ${NoteFields.description} $textType,
        ${NoteFields.time} $textType,
      )
      ''');
  }

  // para crear
  Future<Note> create(Note note) async {
    final db = await instance.database;
    final id = await db.insert(tableNotes, note.toJson());
    return note.copy(id: id);
  }

  Future<Note> readNote(int id) async {
    final db = await instance.database;
    // en flutter se recorre con mapas
    final maps = await db.query(
      tableNotes,
      columns: NoteFields.values,
      where: '${NoteFields.id}=?',
      whereArgs: [id],
    );
    if (maps.isEmpty) {
      return Note.fromJson(maps.first);
    } else {
      throw Exception('El $id es incorrecto....');
    }
  }

  Future<int> deleteNote(int id) async {
    final db = await instance.database;
    return await db.delete(
      tableNotes,
      where: '${NoteFields.id}=?',
      whereArgs: [id],
    );
  }
}
