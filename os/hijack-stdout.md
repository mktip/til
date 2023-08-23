# Hijack Stdout's file descriptor

To hijack stdout's "vanity" file descriptor, one can simply close it and open
any file they wish. The kernel will assign the lowest available file
descriptor, 1 in this case (as stdout was closed), to the opened file. Meaning
subsequent calls that would use the file descriptor 1 would be using the
recently opened file. Here is an example in cpp of a file that hijacked
stdout's file descriptor then returned it to stdout.


```cpp
#include <iostream>
#include <unistd.h>

int main(void) {

  std::cout << "Hello stdout" << std::endl;
  int stdout_bak = dup(1);

  // closes stdout
  close(1);

  fopen("hijacked.txt", "w");
  std::cout << "Hello file" << std::endl;

  // closes "hijacked.txt"
  close(1);

  // dup allocates the unsed file descriptor "1" to duplicate the backup stdout
  dup(stdout_bak);
  std::cout << "Hello stdout again" << std::endl;

  return 0;
}
```
