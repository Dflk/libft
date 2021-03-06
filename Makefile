#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: rbaran <rbaran@student.42.fr>              +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2016/02/09 15:10:45 by rbaran            #+#    #+#             *#
#*   Updated: 2016/02/15 12:30:23 by rbaran           ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

SRCS =	ft_atoi.c \
		ft_bzero.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_isspace.c \
		ft_itoa.c \
		ft_memalloc.c \
		ft_memccpy.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memdel.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putchar.c \
		ft_putchar_fd.c \
		ft_putendl.c \
		ft_putendl_fd.c \
		ft_putnbr.c \
		ft_putnbr_fd.c \
		ft_putstr.c \
		ft_putstr_fd.c \
		ft_strcat.c \
		ft_strchr.c \
		ft_strclr.c \
		ft_strcmp.c \
		ft_strcpy.c \
		ft_strdel.c \
		ft_strdup.c \
		ft_strequ.c \
		ft_striter.c \
		ft_striteri.c \
		ft_strjoin.c \
		ft_strlen.c \
		ft_strmap.c \
		ft_strmapi.c \
		ft_strncat.c \
		ft_strlcat.c \
		ft_strncmp.c \
		ft_strncpy.c \
		ft_strnequ.c \
		ft_strnew.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strsplit.c \
		ft_strstr.c \
		ft_strsub.c \
		ft_strtrim.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_lstnew.c \
		ft_lstdelone.c \
		ft_lstdel.c \
		ft_lstadd.c \
		ft_lstiter.c \
		ft_lstmap.c \
		ft_convert_base.c \
		ft_streplace.c \
		ft_printbits.c \
		ft_swap.c \
		ft_min.c \
		ft_max.c \
		ft_strtab.c \
		ft_printtab.c \
		free.c \
		gnl/get_next_line.c
NAME = libft.a
FLAGS = -Wall -Werror -Wextra
INCDIR = ./includes/
OBJ = $(SRCS:.c=.o)

#COLORS
C_END	=	"\033[00m"
C_OK	=	"\033[32m"
C_BLUE	=	"\033[34m"

#ASCII ART
ART =  "\n   / /   /  _/ __ )/ ____/_  __/\n  / /    / // __  / /_    / /   \n / /____/ // /_/ / __/   / /    \n/_____/___/_____/_/     /_/     \n\n"

all: $(NAME)

%.o: %.c
	@gcc $(FLAGS) -I$(INCDIR) -c $< -o $@

$(NAME): $(OBJ)
	@echo $(C_BLUE)$(ART)$(C_END)
	@ar rc $@ $^
	@ranlib $(NAME)
	@echo "Compilation:\t$(NAME) \t\t ["$(C_OK)"OK"$(C_END)"]"

clean:
	@rm -f $(OBJ)
	@echo "Cleaning:\t$(NAME) \t\t ["$(C_OK)"OK"$(C_END)"]"

fclean: clean
	@rm -f $(NAME)
	@echo "Removing:\t$(NAME) \t\t ["$(C_OK)"OK"$(C_END)"]"

re: fclean all

.PHONY: fclean clean
