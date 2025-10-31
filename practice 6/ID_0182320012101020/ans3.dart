enum Gender { male, female, others }

void main() {
  print("All Gender values:");
  for (var g in Gender.values) {
    print(g);
  }
}
