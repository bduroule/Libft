/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_memmove.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: beduroul <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/10/04 16:25:52 by beduroul     #+#   ##    ##    #+#       */
/*   Updated: 2018/10/04 16:25:56 by beduroul    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>

void	*ft_memmove(void *dest, const void *src, size_t len)
{
	size_t		i;
	char		*tmp_dest;
	const char	*tmp_src;

	i = -1;
	tmp_src = src;
	tmp_dest = dest;
	if (tmp_src < tmp_dest)
		while ((int)(--len) >= 0)
			*(tmp_dest + len) = *(tmp_src + len);
	else
		while (++i < len)
			*(tmp_dest + i) = *(tmp_src + i);
	return (dest);
}
