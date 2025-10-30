# ProGuard and Reflection Example

This repository demonstrates a problem encountered when using **ProGuard** with **reflection** in a Java project.

## 🧩 Branch Overview

- **`main`** — Contains the version that reproduces the issue.
  You can reproduce it by running:
  ```bash
  sh build-script.sh
The script was tested with Java 8.
You may need to update the ProGuard JAR path inside build-script.sh to match your local setup.

solution — Contains the approach I adopted to handle ProGuard and reflection safely.

💡 The goal of this repository is to show how i solved the issue and to seek feedback to see if there is a better way to solve the problem.


