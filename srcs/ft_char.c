/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_char.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbessa <kbessa@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/30 22:22:23 by kbessa            #+#    #+#             */
/*   Updated: 2019/10/01 12:38:11 by kbessa           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

int		ft_charc(va_list args, t_flags *all)
{
	int c;

	c = va_arg(args, int);
	if (all->fl2)
	{
		ft_putchar1(c, all);
		while (all->width > 1)
		{
			ft_putchar1(' ', all);
			all->width--;
		}
	}
	else
	{
		while (all->width > 1)
		{
			ft_putchar1(' ', all);
			all->width--;
		}
		ft_putchar1(c, all);
	}
	return (0);
}
