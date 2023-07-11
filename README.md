
# Inner Glow

##### This package allows you to easily create inner glow effects for your containers, elevating the visual appeal of your Flutter applications. With InnerGlowContainers, you can add stunning and eye-catching inner glow effects to your UI elements, unlocking new possibilities for design and aesthetics. Elevate your Flutter projects with the InnerGlowContainers package and unleash your creativity like never before.

## Download

[![pub.dev](https://img.shields.io/badge/download-pub.dev-blue)](https://pub.dev/packages/inner_glow)

#### With Flutter:

 ```
$ flutter pub add inner_glow
 ```
This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```
dependencies:
  inner_glow: ^1.0.0
```
Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

Import it
Now in your Dart code, you can use:

```
import 'package:inner_glow/inner_glow.dart';
```


## Screenshots

<div style="display: flex; justify-content: space-between;">
    <img src="https://raw.githubusercontent.com/han023/InnerGlow/master/example/assets/01.jpg" alt="first" width="400" >
    <img src="https://raw.githubusercontent.com/han023/InnerGlow/master/example/assets/02.jpg" alt="first" width="400" >
</div>


## Usage/Examples

Simple Usage

```
InnerGlow(
    width: width(context, 0.4),
    height: width(context, 0.4),
),
```

With Option
```
InnerGlow(
    width: width(context, 0.4),
    height: width(context, 0.2),
    glowRadius: 20,
    thickness: 10,
    glowBlur: 5,
    strokeLinearGradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.white,Colors.black]
    ),
    baseDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.lightBlueAccent,Colors.teal]
        ),
    ),
    child: Center(
            child: Text('Play',style: 
            TextStyle(fontSize: 32,color: Colors.blue,),
        )
    ),
)
```


## Options

- ```width``` define the width of the container
- ```height``` define the height of the container
- ```glowBlur``` control the blur of the inner glow 
- ```glowRadius``` define the radius for the inner glow
- ```thickness``` control the opacity for the inner glow
- ```blurBackground``` this will blur any thing on the background
- ```strokeLinearGradient``` give color to your glow by default it is white, white
- ```baseDecoration``` this will aspect a boxDecoration and allow you to modify like a container by default it is BoxDecoration(color: Colors.transparent)
- ```margin``` this will give margin to your container by default it is EdgeInsets.all(0) 
- ```child``` this will allow you add child to glow container



## Authors

- [@han023](https://github.com/han023)


## License

[MIT](https://github.com/han023/InnerGlow/blob/master/LICENSE)


## Contributing

Contributions are always welcome!


