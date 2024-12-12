# Cuenty App

Cuenty is an accounting app specifically designed for small shops and businesses. With Cuenty, business owners can keep accurate and efficient records of their accounts, expenses, and income in a simple and reliable way. The app offers an intuitive and user-friendly interface, allowing users to effectively manage their finances without prior accounting knowledge. Cuenty offers features such as sales tracking, expense recording, inventory management, financial reporting, and more. Additionally, the app can also help users set budgets, calculate taxes, and maintain detailed control of their business transactions. Cuenty presents itself as a trusted virtual accountant, providing users with a comprehensive and accessible tool to efficiently manage their finances and make informed decisions for their business growth.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Coverage

### Generating Coverage Report
To generate the coverage report, run the following command:

```bash
flutter test --coverage
```

### Viewing the Coverage Report

#### Option 1: Visualize in the terminal with `genhtml`

1. **Install `lcov`:**
   - On macOS:
     ```bash
     brew install lcov
     ```
   - On Linux:
     ```bash
     sudo apt-get install lcov
     ```

2. **Generate the HTML report:**
   Run the following command in the root of your project:
   ```bash
   genhtml coverage/lcov.info -o coverage/html
   ```
   This will create a report in the `coverage/html` directory.

3. **Open the report in your browser:**
   - On macOS:
     ```bash
     open coverage/html/index.html
     ```
   - On Linux:
     ```bash
     xdg-open coverage/html/index.html
     ```

#### Option 2: Using VS Code Extension

1. **Install the "Coverage Gutters" extension:**
   - [Coverage Gutters](https://marketplace.visualstudio.com/items?itemName=ryanluker.vscode-coverage-gutters).

2. **Load the coverage file:**
   - Open the command palette in VS Code and select the option to load coverage.
   - Point it to the file `coverage/lcov.info`.

   This will highlight the code coverage directly in your editor.

### Quick Check
If you don't want to use tools, you can open `coverage/lcov.info` in any text editor, but the output will be less user-friendly.
