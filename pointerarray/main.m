//
//  main.m
//  pointerarray
//
//  Created by Ming-Han Chang on 2016/3/31.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

int arraySum (int array[], int n)
{
    int *ptr, sum=0;
    for (ptr = array; ptr < array + n ; ptr++)
        sum += *ptr;
    
    return sum;
}

void exchange (int *pint1, int *pint2)
{
    int temp;
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
    
}

void copyString(char *to, char *from)
{
    /*for (; *from != '\0' ; from++, to++)
        *to = *from;
     */
    while (*from)
        *to++ = *from++;
    
    *to = '\0';
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int array[10] = {1,2,5,2,6,8,2,-6,5,1};
        arraySum (array, 10);
        
        void exchange (int *pint1, int *pint2);
        int i1 = -5, i2 = 66, *p1 = &i1, *p2 = &i2;
        
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        

        
        exchange (p1, p2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        exchange (&i1, &i2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        char string1[] = "A string to be copied";
        char string2[50];
        copyString (string2, string1);
        NSLog(@"%s", string2);
        
        copyString(string2, "So is this");
        NSLog(@"%s",string2);

        NSLog(@"size of %i", sizeof (array));
         goto out_of_data;
    out_of_data: NSLog(@"unexpected end of data");
        
    }
    return 0;
}
