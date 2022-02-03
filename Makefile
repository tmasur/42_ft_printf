# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmasur <tmasur@mail.de>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/21 18:21:21 by tmasur            #+#    #+#              #
#    Updated: 2022/02/03 19:52:15 by tmasur           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		:=	libftprintf.a

CFLAGS		:=	-Wall -Werror -Wextra

NOLINKING	:=	-c

SRC			:=	ft_printf.c \
				ft_printf_utils.c \
				libft/ft_putnbr_fd.c \
				libft/ft_putchar_fd.c \
				libft/ft_putnbr_fd.c \
				libft/ft_putstr_fd.c \
				libft/ft_strlen.c \

OBJ			:=	$(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $^
	@echo "$(NAME) created and indexed"

%.o: %.c
	@gcc $(CFLAGS) $(NOLINKING) $< -o $@

clean:
	@rm -f $(OBJ)
	@echo "OBJ deleted"

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) deleted"

re: fclean all

.PHONY: all clean fclean re main
