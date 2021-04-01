#include "Plugin.h"
#include <iostream>

using namespace std;

TwoStrings concatenate(TwoStrings parameter)
{
    int p;
    for (p = 0; parameter.string1[p] != '\0'; p++);
    for (int q = 0; parameter.string2[q] != '\0'; q++, p++)
    {
        parameter.string1[p] = parameter.string2[q];
    }
    parameter.string1[p] = '\0';
    parameter.concatenated = parameter.string1;
    return parameter;
}