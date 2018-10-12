/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_range.c                                       .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: beduroul <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/10/02 18:42:15 by beduroul     #+#   ##    ##    #+#       */
/*   Updated: 2018/10/02 18:42:18 by beduroul    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include <stdlib.h>

int	*ft_range(int min, int max)
{
	int i;
	int *dest;

	i = 0;
	if (min >= max)
		return (0);
	if (!(dest = malloc(sizeof(int) * (max - min))))
		return (0);
	while (min < max)
	{
		dest[i] = min;
		i++;
		min++;
	}
	return (dest);
}
