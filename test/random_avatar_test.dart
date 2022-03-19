import 'package:flutter_test/flutter_test.dart';
import 'package:random_avatar/random_avatar.dart';

void main() {
  test('Generate svg file', () {
    final svgCode = randomAvatarString("Saytoonz");
    final noBackgroundAvatar =
        randomAvatarString('Saytoonz)5', trBackground: true);
    final avatarWidget = randomAvatar('Saytoonz)5', trBackground: true);

    /// use svg package to handle this generated string
    print(svgCode);
    print(noBackgroundAvatar);
    print(avatarWidget);
  });
}
