#ifndef PLUGIN_NATIVE_LIB_H
#define PLUGIN_NATIVE_LIB_H

#define DLLExport __declspec(dllexport)

typedef struct {
    char* string1;
    char* string2;
    char* concatenated;
} TwoStrings;

extern "C"
{
    DLLExport TwoStrings concatenate(TwoStrings parameter);
}
#endif