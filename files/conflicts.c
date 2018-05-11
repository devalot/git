#include <stdio.h>
const char* version = "1.0";

void print_version (void) {
  printf("version %s\n", version);
}

// <<: main
int main (int argc, char** argv) {
<<<<<<< HEAD
  printf("%s\n", "Hello Everyone");
=======
  print_version();
  printf("%s\n", "Hello World!");
>>>>>>> feature
  return 0;
}
// :>>
