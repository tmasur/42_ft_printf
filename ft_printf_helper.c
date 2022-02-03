/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_helper.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmasur <tmasur@mail.de>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/31 03:15:33 by tmasur            #+#    #+#             */
/*   Updated: 2022/02/03 08:20:25 by tmasur           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_print_str(char *s, int fd)
{
	int	len;

	if (!s)
		return (ft_print_str("(null)", 1));
	len = ft_strlen(s);
	ft_putstr_fd(s, fd);
	return (len);
}

int	ft_print_address(unsigned long long int n, int fd, int prefix)
{
	int	counter;

	counter = 1;
	if (prefix)
		counter += ft_print_str("0x", 1);
	if (n > 15)
		counter += ft_print_address(n / 16, fd, 0);
	ft_putchar_fd("0123456789abcdef"[n % 16], fd);
	return (counter);
}

int	ft_print_uint(unsigned int n, int fd)
{
	long	r;
	int		counter;

	r = n;
	counter = 1;
	if (r >= 10)
	{
		counter += ft_print_uint(r / 10, fd);
	}
	ft_putchar_fd(r % 10 + '0', fd);
	return (counter);
}
