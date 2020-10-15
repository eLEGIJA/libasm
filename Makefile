# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msafflow <elegija4mlg@gmail.com>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/15 18:13:17 by msafflow          #+#    #+#              #
#    Updated: 2020/10/15 18:35:11 by msafflow         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
INC = test.h
SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJ = $(SRC:.s=.o)
NASM = nasm -f macho64
CC = gcc -Wall -Wextra -Werror

.PHONY: all clean fclean re test

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o: %.s
	$(NASM) $<

clean:
	rm -f $(OBJ)

fclean:
	rm -f $(NAME) test
	rm -f $(OBJ)

re: fclean all

test: $(NAME) $(INC)
	$(CC) -L. -lasm test.c -o test