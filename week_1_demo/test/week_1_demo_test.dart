import 'package:week_1_demo/week_1_demo.dart';
import 'package:test/test.dart';

void main() {
  test('promptAge', () {
    // currently this doesn't work. It hangs up, forever waiting user input.
    expect(promptAge('Enter your age: '), 99);
  });
}
