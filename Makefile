# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: krenken <krenken@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/06 22:13:16 by krenken           #+#    #+#              #
#    Updated: 2024/07/22 13:58:15 by krenken          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Makefile for creating a static library

# Variables
NAME        = libft.a
SOURCES     = $(shell find . -name "*.c")
OBJECTS     = $(SOURCES:.c=.o)
CC          = gcc
RM          = rm -f
CFLAGS      = -Wall -Wextra -Werror

# Default target
all: $(NAME)

# Build the static library
$(NAME): $(OBJECTS)
	@echo "Creating library $(NAME)"
	ar rc $(NAME) $(OBJECTS)

# Compile .c files into .o files
%.o: %.c
	@echo "Compiling $<"
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up object files
clean:
	@echo "Cleaning up object files"
	$(RM) $(OBJECTS)

# Clean and remove the library
fclean: clean
	@echo "Removing library $(NAME)"
	$(RM) $(NAME)

# Rebuild everything
re: fclean all

# Declare non-file targets
.PHONY: all clean fclean re
