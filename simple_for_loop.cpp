#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <sys/time.h>
#define COLUMNS    10000
#define ROWS       10000
double simple_matrix[COLUMNS][ROWS];

void initialize();
int main()
{  initialize();
    struct timeval start_time, stop_time, elapsed_time;
    gettimeofday(&start_time,NULL);
    int i, j;
    #pragma omp parallel for private(i,j)
    for(i=0; i<COLUMNS;i++)
    {
        for(j=0; j<COLUMNS;j++)
        {simple_matrix[i][j]=simple_matrix[i][j]+100;}
    }
    gettimeofday(&stop_time,NULL);
    timersub(&stop_time, &start_time, &elapsed_time); // Unix time subtract routine
    printf("Total time was %f seconds.\n", elapsed_time.tv_sec+elapsed_time.tv_usec/1000000.0);

    return 0;
}

void initialize(){

  int i,j;

  for(i = 0; i < ROWS; i++){
    for (j = 0; j < COLUMNS; j++){
      simple_matrix[i][j] = 0.0;
    }
  }
}
