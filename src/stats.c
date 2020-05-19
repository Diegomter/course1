/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file <Add File Name> 
 * @brief <Add Brief Description Here >
 *
 * <Add Extended Description Here>
 *
 * @author <Diego Gomez Canales>
 * @date <Add date >
 *
 */



#include <stdio.h>

#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

	unsigned char print_array(unsigned char* , unsigned char);
	
	unsigned int find_mean(unsigned char* , unsigned char);
  	unsigned char find_maximum(unsigned char* , unsigned char);
  	unsigned char find_minimum(unsigned char* , unsigned char);
  	float find_median(unsigned char* , unsigned char);
  	float print_statistics(unsigned char* , unsigned char);
  	unsigned char sort_array(unsigned char* , unsigned char);
  	
void main() 
{

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  /* Other Variable Declarations Go Here */
  unsigned char n;

   /* Statistics and Printing Functions Go Here */

  printf("How many elements of the array do you want to work?:\n");
  scanf ("%hhu", &n);
  print_array(test, n);
  
  print_statistics(test , n);

  sort_array(test, n);
  	
  print_array(test, n);
  
  
}
 

unsigned char print_array(unsigned char* a, unsigned char b )
{
unsigned char i;
printf("The array is:\n");
	for (i = 0; i < b; ++i)
	{
	printf("%hhu, ", a[i]);
	}
	printf("\n");
}
/* Add other Implementation File Code Here */

unsigned int find_mean(unsigned char* a, unsigned char b)
{
unsigned char i;
unsigned int m = 0;
unsigned int M;
 for (i = 0; i < b; ++i)
	{
		m = m + a[i];
	}
	return (M = m/b);
	
}

unsigned char find_maximum(unsigned char* a, unsigned char b)
{

unsigned char i;
unsigned char mx = a[0];

	for (i = 0; i < b; ++i)
	{
		if (a[i]> mx)
			{
			mx = a[i];
			}
		
	}
	return mx;
	
}

unsigned char find_minimum(unsigned char* a, unsigned char b)
{
	unsigned char i;
	unsigned char mn = a[0];

		for (i = 0; i < b; ++i)
		{
			if(a[i]<mn)
			{
				mn= a[i];
			}
		}
		return mn;
		

}
float find_median(unsigned char* a, unsigned char b) 
{
    int temp;
    int i, j;
    
    for(i=0; i<b-1; i++) 
    	{
        for(j=i+1; j<b; j++) 
        	{
            if(a[j] < a[i]) 
            {
              
                temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }
        }
    }

    if(b%2==0) 
    {
        
        return((a[b/2] + a[b/2 - 1]) / 2.0);
    } else {
        
        return a[b/2];
    }
}
unsigned char sort_array(unsigned char* a, unsigned char b)
{
	int i,j,temp;
	for(i=0; i<b-1; i++) 
    	{
        for(j=i+1; j<b; j++) 
        	{
            if(a[j] > a[i]) 
            {
               
                temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }
        }
    }



}

float print_statistics(unsigned char*a , unsigned char b)
{
	printf("minimum: %hhu \n maximum: %hhu \n mean: %hhu \n median: %f \n", find_minimum(a,b), find_maximum(a, b), find_mean(a, b), find_median(a,b));

}