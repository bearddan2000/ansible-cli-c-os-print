#include <stdio.h>
#include <stdlib.h>
#include <sys/utsname.h>

int main(int argc, char **argv) {
  struct utsname uts;
  if(uname(&uts) !=0 ) {
    return EXIT_FAILURE;
  }
  printf("[OUTPUT] You are running %s\n",uts.sysname);
  return EXIT_SUCCESS;
}
