# random_avatar #

<img src="https://raw.githubusercontent.com/multiavatar/Multiavatar/main/logo.png?v=001" width="65">

Flutter Wrapper for [Multiavatar](https://multiavatar.com)

[Multiavatar](https://multiavatar.com) is a multicultural avatar maker.

Random Avatar represents people from multiple races, multiple cultures, multiple age groups, multiple worldviews and walks of life.

In total, it is possible to generate **12,230,590,464** unique avatars.



### Installation and usage ###

Add random_avatar to your pubspec:

```yaml
dependencies:
  random_avatar: any # or the latest version on Pub
```
get avatar string

```dart
String svgCode = randomAvatarString('saytoonz');
```
get avatar string with transparent background

```dart
String svgCode = randomAvatarString('saytoonz', trBackground: true);
```

get avatar svg widget

```dart
Widget svgCode = randomAvatar('saytoonz', height: 50, width: 50);
```
get avatar svg widget with transparent background

```dart
Widget svgCode = randomAvatar('saytoonz', trBackground: true, height: 50, width: 50);
```

check the example (https://github.com/saytoonz/random_avatar/tree/main/exemple)

### Info ###

To create new avatars, the Multiavatar mixes different parts of different avatars, and different color themes.

The total number of unique avatars: 48^6 = 12,230,590,464

One of the main Multiavatar functions is to work as an identicon. Every unique avatar can be identified by the unique string of characters, associated with the avatar.

The string of characters is also the input for the Multiavatar package, which converts the provided string into a 6 double-digit numbers (range 00-47), each representing an individual part of the final avatar.

`000000000000` - this string of numbers represents the very first avatar + its A theme. You can also read it like this: `00 00 00 00 00 00`.

`474747474747` - this is the 12,230,590,464th avatar (or the 16th initial avatar + its "C" color theme).

More info can be found in the `random_avatar.dart` file comments.



### Support the package (optional) ###
If you find this package useful, you can support it for free by giving it a thumbs up at the top of this page.  Here's another option to support the package:
<a href="https://www.buymeacoffee.com/saytoonz"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=saytoonz&button_colour=5F7FFF&font_colour=ffffff&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00" /></a>



### License ###


A Dart implementation based on [multiavatar](https://github.com/multiavatar) script for Flutter apps.


### Screenshots ###

<img src="https://multiavatar.com/press/img/screenshots/screenshot-02.png?v=001">

<img src="https://multiavatar.com/press/img/screenshots/screenshot-03.png?v=001">

<img src="https://multiavatar.com/press/img/screenshots/screenshot-09.png?v=001">

<img src="https://multiavatar.com/press/img/screenshots/screenshot-10.png?v=001">


## Visitors Count

<img align="left" src = "https://profile-counter.glitch.me/rendom_avatar/count.svg" alt ="Loading">