# libft

I re-wrote Standard LIB C functions, understood them, and learnt how to use them.

# Rules
* Project had been written in accordance with the Norm.
* Functions are not quit unexpectedly (segmentation fault, bus error, double free, etc) apart from undefined behaviors. 
* All heap allocated memory space must be properly freed when necessary.
* Only the following libc functions are allowed : malloc(3), free(3) and write(2).

I created the following functions:

# first part

```• memset • bzero • memcpy • memccpy • memmove • memchr • memcmp • strlen • strdup • strcpy • strncpy • strcat • strncat • strlcat • strchr • strrchr • strstr • strnstr • strcmp • strncmp • atoi • isalpha • isdigit • isalnum • isascii • isprint • toupper • tolower```

# second part

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

# list part

* ft_lstnew - Allocates (with malloc(3)) and returns a “fresh” link. The variables content and content_size of the new link are ini- tialized by copy of the parameters of the function. If the pa- rameter content is nul, the variable content is initialized to NULL and the variable content_size is initialized to 0 even if the parameter content_size isn’t. The variable next is initialized to NULL. If the allocation fails, the function returns NULL.

* ft_lstdelone - Takes as a parameter a link’s pointer address and frees the memory of the link’s content using the function del given as a parameter, then frees the link’s memory using free(3). The memory of next must not be freed under any circumstance. Finally, the pointer to the link that was just freed must be set to NULL (quite similar to the function ft_memdel in the mandatory part).

* ft_lstdel - Takes as a parameter the adress of a pointer to a link and frees the memory of this link and every successors of that link using the functions del and free(3). Finally the pointer to the link that was just freed must be set to NULL (quite similar to the function ft_memdel from the mandatory part).

* ft_lstadd - Adds the element new at the beginning of the list.

* ft_lstiter - Iterates the list lst and applies the function f to each link.

* ft_lstmap - Iterates a list lst and applies the function f to each link to create a “fresh” list (using malloc(3)) resulting from the suc- cessive applications of f. If the allocation fails, the function returns NULL.

