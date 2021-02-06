NAME = libasm.a

CC = gcc -Wall -Wextra -Werror \

NA_FLGS = -f macho64

SRC = ft_strlen.s ft_read.s ft_write.s ft_strcmp.s ft_strcpy.s ft_strdup.s

OBJ = $(SRC:.s=.o)

%.o:			%.s
				nasm $(NA_FLGS) $<

all	: $(NAME)

$(NAME): $(OBJ)
			ar -rc $@ $^

clean :
		@rm -f $(OBJ)

fclean : clean
		@rm -f $(NAME)
		@rm -f test

re : fclean all

test : $(NAME)
		@$(CC) $(NAME) main.c -o test
		@./test