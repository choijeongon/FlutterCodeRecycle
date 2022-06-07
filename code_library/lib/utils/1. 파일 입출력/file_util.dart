import 'dart:io';
import 'package:path_provider/path_provider.dart';

writeFile(String fileName, String data) async {
  try {
    final directory = await getApplicationDocumentsDirectory();

    File file =
        await File("${directory.path}/$fileName").create(recursive: true);

    await file.writeAsString(data);
  } catch (e) {
    print(e);
    return null;
  }
}

Future<String?> readFile(String fileName) async {
  try {
    final directory = await getApplicationDocumentsDirectory();

    File file = File("${directory.path}/$fileName");
    return await file.readAsString();
  } catch (e) {
    print(e);
    return null;
  }
}
