# Getting Started

## Prerequisites

You should have [Flutter][1] and the the [Dart SDK][2] installed and accessible on your system's path,  with `webdev` and `stagehand` activated by pub ([instructions][3]).

See [./00-system-setup.md](./00-system-setup.md) for more information and details for setting up an Ubuntu Linux system.


## Generate the packages

1. Create the following directory structure.

    ```sh
    jsonplaceholder/
      packages/
        jsonplaceholder/
        jsonplaceholder_mobile/
        jsonplaceholder_web/
    README.md
    ```

2. Generate the three packages using [`stagehand`]() and `flutter`

    ```sh
    > cd packages/jsonplaceholder
    > stagehand package-simple
    > pub get
    > rm -rf lib/*  # Deletes everything inside the lib/ directory.

    > cd ../jsonplaceholder_mobile
    > flutter create .

    > cd ../jsonplaceholder_web
    > stagehand web-simple
    > pub get
    ```

3. Rename the directories so they are easier to use.

    ```sh
    jsonplaceholder/
      packages/
        base/
        mobile/
        web/
      README.md
    ```

## Add dependencies

Add the following without removing existing dependencies.

In `base/pubspec.yaml`:

```yaml
dependencies:
  shared_theme: ^0.1.0
  async_resource: ^0.1.0
  json_annotation: ^1.0.0

dev_dependencies:
  build_runner: ^1.0.0
  json_serializable: ^1.0.0
```

In `mobile/pubspec.yaml`:

```yaml
dependencies:
  jsonplaceholder:
    path: ../base
  shared_theme_flutter: ^0.1.0
  async_resource_flutter: ^0.1.0
```

In `web/pubspec.yaml`:

```yaml
dependencies:
  jsonplaceholder:
    path: ../base
  mdc_web: ^0.3.0

dev_dependencies:
  sass_builder: ^2.0.0
```

[1]: https://flutter.io/get-started/install
[2]: https://webdev.dartlang.org/guides/get-started#2-install-dart
[3]: https://webdev.dartlang.org/guides/get-started#3-get-cli-tools-or-webstorm-or-both