---
title: "File Management Using C"
description: File I/O using C programming language
date: 2021-03-09T06:31:25+06:00
author: "Shihab Mahamud"
image: "file_handling_c.jpg"
math:
categories : [
    "Blogs",
]
tags : [
    "Frogramming",
    "File-I/O"
]
draft: false
---

1. [Declear FILE Pointer](#declear-file-pointer)
1. [Opening file](#opening-file)
    1. [File type mode table](#file-type-mode-table)
    1. [Open file with Error checking](#open-file-with-error-checking)
1. [Closing file](#closing-file)
    1. [Closing file with Error checking](#closing-file-with-error-checking)

## Declear FILE Pointer
```c
FILE *MyFile;
```
Here FILE is not C keyword, it is a structure that define in <sthio.h> header file.

## Opening file
```c
/*
Header: <stdio.h>
Prototype: FILE *fopen(char*fname, char *made);
Return:
    - a FILE pointer    -> if successfully
    - NULL              -> On failure

*/
MyFile = fopen (“myfile.txt”,”w”);
```

### File type mode table:
```
The Legal Values for Mode

Mode        Meaning
----        -------
"r"         Open a text file for reading.
"w"         Create a text file for writing.
"a"         Append to a text file.
"rb"        Open a binary file for reading.
"wb"        Create a binary file for writing.
"ab"        Append to a binary file.
"r+"        Open a text file for read/write.
"w+"        Create a text file for read/write.
"a+"        Append or create a text file for read/write.
"r+b"       Open a binary file for read/write. You may also use "rb+".
"w+b"       Create a binary file for read/write. You may also use "wb+".
"a+b"       Append or create a binary file for read/write. You may also use "ab+".
```

### Open file with Error checking

```c
/*
Header: <stdlib.h>
Prototype: void exit (int status);
*/
/*
Header: <stdio.h>
Macro: #define NULL ((void *)0)
*/
MyFile = fopen (“myfile.txt”,”w”);
if (MyFile == NULL) {
    printf("Error opening file\n");
    exit(1); // or substitute your own error handler
}
```

The C library Macro `NULL` is the value of a null pointer constant. It may be defined as `((void*)0)`, `0` or `0L` depending on the compiler vendor. It's define in <stdio.h> header file.

```c
// This fragment is same as the previes on but more efficient
if ((MyFile = fopen("myfile.txt", "w")) == NULL) {
    printf("Error opening file\n");
    exit(1);
}
```

## Closing file
```c
/*
Header: <stdio.h>
Prototype = int fclose(FILE *fp);
Return:
    - 0             -> if the stream is successfully closed.
    - EOF or -1     -> On failure
*/

/*
Header: <stdio.h>
Macro: #define EOF (-1)
*/
fclose (MyFile);
```
### Closing file with Error checking
```c
if (fclose(MyFile) == EOF) {
    printf("Error closing destination file.\n");
    exit(1);
}
```

