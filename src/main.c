// TODO: abstract blinking an LED behind a suitable interface for
// cross-compilatoin; in the case of a dev board, it should actually blink an
// LED, in the case of a desktop build, it should probably print to screen
// somehow.
#define VADDR(addr) (*((volatile unsigned int*)addr))
#define OUT         VADDR(0xDEADBEEF)
#define INP         VADDR(0xCAFEBABE)

int idx = 0;
char buffer[1024];

int rand_start = 0x48A235E2;

void SysTick_Handler()
{
   buffer[idx] = rand_start;
   rand_start ^= (1 << 3) | (1 << 7);
   if (++idx > sizeof(buffer))
      idx = 0;
}

int main() {
  for (int k = 0; k < INP; k++)
    OUT = k;

  return 0;
}
