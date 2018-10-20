# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: beduroul <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/10/04 12:26:16 by beduroul     #+#   ##    ##    #+#        #
#    Updated: 2018/10/04 12:26:22 by beduroul    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #
RED = \e[31m
GREEN = \e[92m
END = \e[97m
END2 = \e[0m
GREEN2 = \e[92;7m
NAME = libft.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra -Includes
SRC = ft_atoi.c			ft_strcmp.c		\
 	  ft_strcpy.c		ft_strlen.c		\
 	  ft_strncmp.c		ft_strncpy.c	\
 	  ft_memset.c		ft_bzero.c		\
 	  ft_memcpy.c		ft_memccpy.c	\
 	  ft_memmove.c		ft_memchr.c		\
 	  ft_memcmp.c		ft_strdup.c		\
 	  ft_strcat.c		ft_strncat.c	\
 	  ft_strlcat.c		ft_strchr.c		\
 	  ft_strrchr.c		ft_strstr.c		\
 	  ft_isalpha.c		ft_isdigit.c	\
 	  ft_isalnum.c		ft_isascii.c	\
 	  ft_isprint.c		ft_toupper.c	\
 	  ft_tolower.c		ft_strnstr.c	\
 	  ft_putchar.c		ft_putstr.c		\
 	  ft_putnbr.c		ft_putendl.c	\
 	  ft_strclr.c		ft_striter.c	\
 	  ft_striteri.c		ft_memdel.c		\
 	  ft_strnew.c 		ft_memalloc.c	\
 	  ft_putchar_fd.c	ft_putstr_fd.c	\
 	  ft_putendl_fd.c	ft_putnbr_fd.c	\
 	  ft_strdel.c		ft_strmap.c		\
 	  ft_strmapi.c		ft_strequ.c		\
 	  ft_strnequ.c		ft_strsub.c		\
 	  ft_strjoin.c		ft_strtrim.c	\
 	  ft_strsplit.c		ft_intsize.c	\
 	  ft_itoa.c			ft_lstnew.c		\
 	  ft_lstdelone.c	ft_lstdel.c		\
 	  ft_lstadd.c		ft_lstiter.c	\
 	  ft_lstmap.c		ft_strrev.c		\
 	  ft_foreach.c		ft_factorial.c	\
 	  ft_power.c		ft_intsize.c	\
 	  ft_is_prime.c		ft_swap.c		\
 	  ft_range.c 		

OBJ = $(addsuffix .o, $(basename $(SRC)))

all: $(NAME) | signature

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ) $?
	@printf "\n$(GREEN)[libft built]$(END)\n"

%.o: %.c 
	@$(CC) $(CFLAGS) -c $< -o $@
	@printf "$(GREEN2) $(END2)"

clean: 
	@rm -f $(OBJ)
	@printf "$(RED)[remove obect]$(END)\n"

fclean: clean
	@rm -f $(NAME)
	@printf "$(RED)[remouve libft]$(END)\n"

re: fclean all

signature:
	@echo "  __          ________     _______      _______     ________  	"
	@echo " /_/\        /_______/\  /_______/\   /_______/\  /_________/\ 	"
	@echo " \:\ \       \__.::._\/  \::: _  \ \  \:::::_ \/  \___.::.__\/ 	" 
	@echo "  \:\ \         \::\ \    \::(_)  \/_  \:\/___/\      \::\ \   	"
	@echo "   \:\ \____    _\::\ \__  \::  _  \ \  \:::._\/       \::\ \  	"
	@echo "    \:\/___/\  /__\::\__/\  \::(_)  \ \  \:\ \          \::\ \ 	"
	@echo "     \_____\/  \________\/   \_______\/   \_\/           \__\/ 	"