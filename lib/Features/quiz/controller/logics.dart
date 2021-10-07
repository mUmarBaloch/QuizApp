import 'package:basic_app/core/data/local_db.dart';
import 'package:basic_app/core/data/temp_data.dart';

highScoreLogic() async {
  if (score > highScore) {
    highScore = score;
    await LocalDb().setHighScore();
  }
}
