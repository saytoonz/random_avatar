import 'package:flutter_test/flutter_test.dart';
import 'package:random_avatar/random_avatar.dart';

void main() {
  test('Generate svg file', () {
    final svgCode = multiavatar("Pixelium");
    final noBackgroundAvatar = multiavatar('X-SLAYER', trBackground: true);

    /// use svg package to handle this generated string
    print(svgCode);
    print(noBackgroundAvatar);
  });
}
