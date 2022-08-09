<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<br/>
<div align="center">
  <h3 align="center">Vain UI</h3>
  
  <p align="center">
    A Flutter UI library inspired from Carbon Design and easily extensible.
  </p>
  
  <h4 align="center">
    STILL WORK IN PROGRESS, BUT IT IS ALREADY FUNCTIONAL
  </h4>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary> Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About the Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#examples">Examples</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contirbuting">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

<!-- [![Vain UI Screenshot][product-screenshot]] -->

Carbon Design System is a gorgeous design system built mainly for web and with community-driven mobile implementations, but no official or well mantained substitute for Flutter, so I decided to build Vain UI for flutter which has its foundation highly inspired by Carbon, but in the future will slowly derive from its "parent". 

### Built With

_Vain UI_ is built using:

* [![Flutter][Flutter]][flutter-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting started

Below you can find the simple steps you need to take to get **_Vain UI_** up and running in your amazing Flutter project.

### Prerequisites

The only prerequisite is having Flutter up and running, with all its own prerequisites working.

In order to check if you have Flutter installed, and if everything is working properly, you can try running the following command in a terminal window.

```sh
flutter doctor
```

The ideal output should look something like this:
<br />
![image](https://user-images.githubusercontent.com/79089703/183656359-5de2123f-ffe4-4582-a63d-e7f0c7b0e933.png)

Make sure to have at least one working Android Studio installation with no issues.

If the command is not recognized by your shell but you did install flutter, make sure to add the installation folder to your PATH environment variable.

### Installation

1.  In order to add **_Vain UI_** to your app, you first need to clone the repo in a folder inside of your already existing project, or in the same folder as the root of the project. An example would be cloning it into `your_awesome_project/lib/ui`, or if you do not want your project to contain cloned external packages, you can have it in the parent folder of your project.

1.  After cloning the repo, import the package locally into your project by editing the `pubspec.yaml` file.
    ```yaml
      ...
      dependencies:
      vain_ui:
        path: <INSERT PATH TO VAIN UI>
        #(example1) path: lib/ui/vain_ui
        #(example2) path: ../vain_ui 
      ...
    ```

Whenever I update the library, all you need to do is to pull it by using the following command inside a terminal:

```sh
git pull
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Examples
> :warning: In the future I am planning to implement an `examples/` folder at the root of the repo containing more examples of widgets.

#### Code

```dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vain_ui/vain_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right: 32,
          top: 64,
          bottom: 16,
        ),
        child: Column(children: <Widget>[
          const VTextField(
              label: 'Enter your username', description: '', hint: 'username'),
          VTextField(
              label: 'Enter your password',
              description: '',
              hint: 'password',
              validator: (value) {
                if (value == null || value.length < 8) {
                  return VValidationResult(
                      kind: VValidationKind.error,
                      message: 'Password is not long enough.');
                } else {
                  return VValidationResult(
                      kind: VValidationKind.success,
                      message: 'The password respects all the conditions');
                }
              }),
          const SizedBox(height: 32),
          Row(children: <Widget>[
            VButton(
                label: 'Sign up',
                kind: VButtonKind.secondary,
                size: VButtonSize.md,
                onPressed: () => print('signed up')),
            VButton(
                label: 'Login',
                size: VButtonSize.md,
                onPressed: () => print('logged in'))
          ]),
          const SizedBox(height: 64),
          VButton.icon(
            iconDescription: 'Close app',
            icon: const Icon(Icons.close, color: VColors.white0),
            onPressed: () => SystemNavigator.pop(),
          )
        ]),
      ),
    );
  }
}
```

#### Result

![image](https://user-images.githubusercontent.com/79089703/183667311-032a82d0-166f-4a8c-81f3-d06111f2544b.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap

- [x] Implement color theme system (currently only the classic Carbon ones: `white`, `gray10`, `gray90`, `gray100`)
- [X] Implement checkboxes
- [X] Implement toggles
- [X] Implement forms
- [ ] Implement dropdowns
- [ ] Refactor theme-ing system for ease of use

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

I have to cleanup the code a bit and create a proper documentation first in order to get ready to easily recieve contributions, so for the moment contributions in the form of `Pull requests` will be taken into consideration but it's very unlikely for anyone to understand the code-base without docs. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

[![Twitter][twitter]](https://twitter.com/thewowvain)
![Discord][discord]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/wowvain-dev/vain_ui?style=for-the-badge
[contributors-url]: https://github.com/wowvain-dev/vain_ui/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/wowvain-dev/vain_ui?style=for-the-badge
[forks-url]: https://github.com/wowvain-dev/vain_ui/network/members
[stars-shield]: https://img.shields.io/github/stars/wowvain-dev/vain_ui?style=for-the-badge
[stars-url]: https://github.com/wowvain-dev/vain_ui/stargazers
[issues-shield]: https://img.shields.io/github/issues/wowvain-dev/vain_ui?style=for-the-badge
[issues-url]: https://github.com/wowvain-dev/vain_ui/issues
[license-shield]: https://img.shields.io/github/license/wowvain-dev/vain_ui?style=for-the-badge
[license-url]: https://github.com/wowvain-dev/vain_ui/blob/master/LICENSE.txt

[Flutter]: https://img.shields.io/badge/flutter-000000?style=for-the-badge&logo=flutter&logoColor=white
[flutter-url]: https://flutter.dev/

[twitter]: https://img.shields.io/twitter/url?color=blue&label=twitter&logo=twitter&style=for-the-badge&url=https%3A%2F%2Ftwitter.com%2Fthewowvain
[discord]: https://img.shields.io/badge/discord-!wowvain%233859-5865f2?style=for-the-badge&logo=discord
