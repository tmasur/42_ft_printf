/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmasur <tmasur@mail.de>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/31 00:01:30 by tmasur            #+#    #+#             */
/*   Updated: 2022/02/03 11:57:26 by tmasur           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

#include <stdarg.h>
#include "./libft/libft.h"
#include "ft_printf_utils.h"

int	ft_printf(const char *s, ...);
// int	ft_print_str(char *s, int fd);
// int	ft_print_address(unsigned long long int n, int fd, int prefix);
// int	ft_print_uint(unsigned int n, int fd);
#endif
