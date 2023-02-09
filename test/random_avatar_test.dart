import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_avatar/random_avatar.dart';

void main() {
  group("Generate SVG", () {
    test('SVG String with background', () {
      String svgCode = RandomAvatarString("Saytoonz");
      //SVG String with background would be generated
      print(svgCode);
    });

    test('SVG String with a transparent background', () {
      String noBackgroundAvatar =
          RandomAvatarString('Saytoonz)5', trBackground: true);
      //SVG String with a transparent background would be generated
      print(noBackgroundAvatar);
    });

    test('SVG Widget', () {
      Widget avatarWidget = RandomAvatar('Saytoonz)5', trBackground: true);
      //SVG Widget would be generated
      print(avatarWidget);
    });
  });
}
