/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: krenken <krenken@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/10 17:19:55 by krenken           #+#    #+#             */
/*   Updated: 2025/01/04 17:07:19 by krenken          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/*
** LIBRARY: <string.h>
** SYNOPSIS: find length of string
**
** DESCRIPTION:
** 		The strlen() function computes the length of the string s.
*/

size_t	ft_strlen(const char *str)
{
	size_t	i;

	if (!str)
		return (0);
	i = 0;
	while (str[i] != '\0')
		i++;
	return (i);
}

/*int main(void)
{
	const char *str = "Hafti Abi ist der der im Lambo und Ferrari sitzt.";
	
	size_t result = ft_strlen(str);
	printf("%zu", result);
}*/