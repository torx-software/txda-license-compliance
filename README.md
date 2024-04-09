# Torx Design-Analyze License Compliance

This repository contains the source code for Torx Design-Analyze dependencies that are licensed under copyleft licenses.

## Adding a dependency

To add a dependency to this repository, follow these steps:

1. Update the `compile-depenedencies.sh` script to include the new dependency in the `DEPENDENCIES` array.
    - The format of each entry in the `DEPENDENCIES` array is `[<dependency name>-<version>]=<package zip URL>`.
2. Run the `compile-depenedencies.sh` script to download the new dependency to the right location in this repository.
3. Commit the changes to this repository.
