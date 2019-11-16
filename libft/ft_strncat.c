/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbessa <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/17 12:55:34 by kbessa            #+#    #+#             */
/*   Updated: 2019/04/17 12:58:46 by kbessa           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

char	*ft_strncat(char *restrict s1, const char *restrict s2, size_t n)
{
	char *ret;

	ret = s1;
	while (*s1)
		s1++;
	while (n--)
		if (!(*s1++ = *s2++))
			return (ret);
	*s1 = 0;
	return (ret);
}
