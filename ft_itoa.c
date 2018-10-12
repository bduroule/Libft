/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_itoa.c                                        .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: beduroul <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/10/08 18:04:52 by beduroul     #+#   ##    ##    #+#       */
/*   Updated: 2018/10/08 18:04:54 by beduroul    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

char	*ft_itoa(int n)
{
	char			*res;
	int				i;
	unsigned int	tmp;

	i = ft_intsize(n);
	if (!(res = (char *)malloc(sizeof(char) * i + 1)))
		return (NULL);
	res[i] = '\0';
	if (n < 0)
	{
		tmp = -n;
		res[0] = '-';
	}
	else
		tmp = n;
	if (tmp == 0)
		res[0] = '0';
	while (tmp)
	{
		res[i - 1] = tmp % 10 + '0';
		tmp /= 10;
		i--;
	}
	return (res);
}
