/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbessa <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/17 16:49:54 by kbessa            #+#    #+#             */
/*   Updated: 2019/04/30 19:45:56 by kbessa           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

char	*ft_strstr(const char *haystack, const char *needle)
{
	size_t n;

	n = ft_strlen(needle);
	if ((!*needle) && (!*haystack))
		return (char *)(needle);
	while (*haystack)
		if (!(ft_memcmp(haystack++, needle, n)))
			return (char *)(haystack - 1);
	return (0);
}
