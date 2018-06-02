# LIBFT

I re-wrote Standard LIB C functions, understood them, and learnt how to use them.

# Rules
* Project had been written in accordance with the Norm.
* Functions are not quit unexpectedly (segmentation fault, bus error, double free, etc) apart from undefined behaviors. 
* All heap allocated memory space must be properly freed when necessary.
* Only the following libc functions are allowed : malloc(3), free(3) and write(2).

I created the following functions:

# First part

```• memset • bzero • memcpy • memccpy • memmove • memchr • memcmp • strlen • strdup • strcpy • strncpy • strcat • strncat • strlcat • strchr • strrchr • strstr • strnstr • strcmp • strncmp • atoi • isalpha • isdigit • isalnum • isascii • isprint • toupper • tolower```

# Second part

* ft_memalloc - Allocates (with malloc(3)) and returns a “fresh” memory area. The memory allocated is initialized to 0. If the allocation fails, the function returns NULL.
* ft_memdel - Takes as a parameter the address of a memory area that needs to be freed with free(3), then puts the pointer to NULL.
* ft_strnew - Allocates (with malloc(3)) and returns a “fresh” string ending with ’\0’. Each character of the string is initialized at ’\0’. If the allocation fails the function returns NULL.
* ft_strdel - Takes as a parameter the address of a string that need to be freed with free(3), then sets its pointer to NULL.
* ft_strclr - Sets every character of the string to the value ’\0’.
* ft_striter - Applies the function f to each character of the string passed as argument. Each character is passed by address to f to be modified if necessary.
* ft_striteri - Applies the function f to each character of the string passed as argument, and passing its index as first argument. Each character is passed by address to f to be modified if necessary.
* ft_strmap - Applies the function f to each character of the string given as argument to create a “fresh” new string (with malloc(3)) resulting from the successive applications of f.
* ft_strmapi - Applies the function f to each character of the string passed as argument by giving its index as first argument to create a “fresh” new string (with malloc(3)) resulting from the successive applications of f.
* ft_strequ - Lexicographical comparison between s1 and s2. If the 2 strings are identical the function returns 1, or 0 otherwise.
* ft_strnequ - Lexicographical comparison between s1 and s2 up to n characters or until a ’\0’ is reached. If the 2 strings are identical, the function returns 1, or 0 otherwise.
* ft_strsub - Allocates (with malloc(3)) and returns a “fresh” substring from the string given as argument. The substring begins at indexstart and is of size len. If start and len aren’t refering to a valid substring, the behavior is undefined. If the allocation fails, the function returns NULL.
* ft_strjoin - Allocates (with malloc(3)) and returns a “fresh” string end- ing with ’\0’, result of the concatenation of s1 and s2. If the allocation fails the function returns NULL.
* ft_strtrim - Allocates (with malloc(3)) and returns a copy of the string given as argument without whitespaces at the beginning or at the end of the string. Will be considered as whitespaces the following characters ’ ’, ’\n’ and ’\t’. If s has no whites- paces at the beginning or at the end, the function returns a copy of s. If the allocation fails the function returns NULL.
* ft_strsplit - Allocates (with malloc(3)) and returns an array of “fresh” strings (all ending with ’\0’, including the array itself) ob- tained by spliting s using the character c as a delimiter. If the allocation fails the function returns NULL.
* ft_itoa - Allocate (with malloc(3)) and returns a “fresh” string end- ing with ’\0’ representing the integer n given as argument. Negative numbers must be supported. If the allocation fails, the function returns NULL.
* ft_putchar - Outputs the character c to the standard output.
* ft_putstr - Outputs the string s to the standard output.
* ft_putendl - Outputs the string s to the standard output followed by a ’\n’.
* ft_putnbr - Outputs the integer n to the standard output.
* ft_putchar_fd - Outputs the char c to the file descriptor fd.
* ft_putstr_fd - Outputs the string s to the file descriptor fd.
* ft_putendl_fd - Outputs the string s to the file descriptor fd followed by a ’\n’.
* ft_putnbr_fd - Outputs the integer n to the file descriptor fd.

# List part

* ft_lstnew - Allocates (with malloc(3)) and returns a “fresh” link. The variables content and content_size of the new link are ini- tialized by copy of the parameters of the function. If the pa- rameter content is nul, the variable content is initialized to NULL and the variable content_size is initialized to 0 even if the parameter content_size isn’t. The variable next is initialized to NULL. If the allocation fails, the function returns NULL.
* ft_lstdelone - Takes as a parameter a link’s pointer address and frees the memory of the link’s content using the function del given as a parameter, then frees the link’s memory using free(3). The memory of next must not be freed under any circumstance. Finally, the pointer to the link that was just freed must be set to NULL (quite similar to the function ft_memdel in the mandatory part).
* ft_lstdel - Takes as a parameter the adress of a pointer to a link and frees the memory of this link and every successors of that link using the functions del and free(3). Finally the pointer to the link that was just freed must be set to NULL (quite similar to the function ft_memdel from the mandatory part).
* ft_lstadd - Adds the element new at the beginning of the list.
* ft_lstiter - Iterates the list lst and applies the function f to each link.
* ft_lstmap - Iterates a list lst and applies the function f to each link to create a “fresh” list (using malloc(3)) resulting from the suc- cessive applications of f. If the allocation fails, the function returns NULL.



# GET NEXT LINE

A function that allowS you to read a line ending with a newline character from a file descriptor.

This project also allow you to learn a highly interesting new concept in C programming: static variables.

You gain a deeper understanding of allocations, whether they happen on the stack memory or in the heap memory, the manipulation and the life cycle of a buffer, the unexpected complexity implied in the use of one or many static variables.

Your respect of the Norm will improve the rigor of your programming.

# General Instructions

* Your project must be written in accordance with the Norm.
* You have to handle errors carefully. In no way can your program, or in this par- ticular case your function, quit in an unexpected manner (Segmentation fault, bus error, double free, etc).
* All heap allocated memory space must be properly freed when necessary.
* Your project cannot leaks.
* If you choose to submit this project using your library libft, it is strictly FORBIDDEN to bypass the limitation of the Norm by adding some specific functions from your get_next_line. That would be considered cheating during your defence. Your get_next_line must hold in 5 functions of 25 lines max. The respect of this instruction will be carefully checked during your defence. There is no need for you ask permission to the staff to add a function to your library. Use your head instead and ask yourself if your function respects this instruction. If you do everything right, you will of course be encouraged to expand your library with generic functions. You’ll discover their usage as you complete this project.
* The libc functions allowed on this project are read, malloc and free.

# Function properties

* The first parameter is the file descriptor that will be used to read.
* The second parameter is the address of a pointer to a character that will be used
to save the line read from the file descriptor.
* The return value can be 1, 0 or -1 depending on whether a line has been read, when the reading has been completed, or if an error has happened respectively.
* Your function get_next_line must return its result without ’\n’.
* Calling your function get_next_line in a loop will then allow you to read the text available on a file descriptor one line at a time until the end of the text, no matter the size of either the text or one of its lines.
* Make sure that your function behaves well when it reads from a file, from the standard output, from a redirection etc.
* In you header file get_next_line.h you must have at least the prototype of the function get_next_line and a macro that allows to choose the size of the reading buffer for the read function. This value will be modified during the defence to evaluate the strength of your function. That macro must be named BUFF_SIZE.

# Bonus

* To succeed get_next_line with a single static variable.
* To be able to manage multiple file descriptor with your get_next_line. For example, if the file descriptors 3, 4 and 5 are accessible for reading, then you can call get_next_line once on 3, once on 4, once again on 3 then once on 5 etc. without losing the reading thread on each of the descriptors.
