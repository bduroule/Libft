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
NAME = libft.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra -Includes
SRC = ft_atoi.o			ft_strcmp.o		\
 	  ft_strcpy.o		ft_strlen.o		\
 	  ft_strncmp.o		ft_strncpy.o	\
 	  ft_memset.o		ft_bzero.o		\
 	  ft_memcpy.o		ft_memccpy.o	\
 	  ft_memmove.o		ft_memchr.o		\
 	  ft_memcmp.o		ft_strdup.o		\
 	  ft_strcat.o		ft_strncat.o	\
 	  ft_strlcat.o		ft_strchr.o		\
 	  ft_strrchr.o		ft_strstr.o		\
 	  ft_isalpha.o		ft_isdigit.o	\
 	  ft_isalnum.o		ft_isascii.o	\
 	  ft_isprint.o		ft_toupper.o	\
 	  ft_tolower.o		ft_strnstr.o	\
 	  ft_putchar.o		ft_putstr.o		\
 	  ft_putnbr.o		ft_putendl.o	\
 	  ft_strclr.o		ft_striter.o	\
 	  ft_striteri.o		ft_memdel.o		\
 	  ft_strnew.o 		ft_memalloc.o	\
 	  ft_putchar_fd.o	ft_putstr_fd.o	\
 	  ft_putendl_fd.o	ft_putnbr_fd.o	\
 	  ft_strdel.o		ft_strmap.o		\
 	  ft_strmapi.o		ft_strequ.o		\
 	  ft_strnequ.o		ft_strsub.o		\
 	  ft_strjoin.o		ft_strtrim.o	\
 	  ft_strsplit.o		ft_intsize.o	\
 	  ft_itoa.o			ft_lstnew.o		\
 	  ft_lstdelone.o	ft_lstdel.o		\
 	  ft_lstadd.o		ft_lstiter.o	\
 	  ft_lstmap.o		ft_strrev.o		\
 	  ft_foreach.o		ft_factorial.o	\
 	  ft_power.o		ft_intsize.o	\
 	  ft_is_prime.o		ft_swap.o		\
 	  ft_range.o


all: $(NAME) | signature

$(NAME): $(SRC)
	@ar rcs $(NAME) $(SRC) $?
	@printf "\n$(GREEN)[libft built]$(END)\n"

%.o: %.c 
	@$(CC) $(CFLAGS) -c $< -o $@
	@printf "$(GREEN)#$(END)"

clean: 
	@rm -f $(SRC)
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