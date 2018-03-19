#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alukyane <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/25 22:31:54 by alukyane          #+#    #+#              #
#    Updated: 2017/10/25 22:31:56 by alukyane         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a
SOURCE = 	ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c 		\
            ft_memchr.c ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c 		\
            ft_strncpy.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_strchr.c 		\
            ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c 		\
            ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c 		\
            ft_isprint.c ft_toupper.c ft_tolower.c ft_memalloc.c ft_memdel.c 	\
            ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c 		\
            ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c 		\
            ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c ft_putchar.c 		\
            ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c \
            ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c ft_sqrt.c	\
            ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_strrev.c		\
            ft_positive_power.c ft_is_prime.c ft_rot42.c ft_derot42.c 			\
            ft_itoa_base.c ft_printf.c ft_get_data.c process.c ft_output_d.c 	\
            ft_print_d.c ft_print_u.c ft_align_o.c ft_print_o.c ft_print_b.c 	\
            ft_print_x.c ft_print_c_w.c ft_print_c.c ft_print_s_w.c ft_itoa_u.c \
            ft_putnbr_u.c ft_print_nbr.c ft_print_str.c ft_allupper.c ft_print_s.c

OBJS = $(SOURCE:.c=.o)

all: $(NAME)

%.o:%.c
	gcc -Wall -Wextra -Werror -o $@ -c $<

$(NAME): $(OBJS)

	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
