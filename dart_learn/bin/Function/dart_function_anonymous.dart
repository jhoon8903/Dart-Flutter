void main(List<String> args) {
  forEachCopy((int numbers) => print(numbers));
}

void forEachCopy(Function(int) fnct) {
  fnct(5);
}
