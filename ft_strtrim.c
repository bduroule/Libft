/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_strtrim.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: beduroul <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/10/08 13:52:03 by beduroul     #+#   ##    ##    #+#       */
/*   Updated: 2018/10/08 13:52:08 by beduroul    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strtrim(char const *s)
{
	size_t i;
	size_t len;

	i = 0;
	if (!s)
		return (NULL);
	while (s[i] == '\n' || s[i] == '\t' || s[i] == ' ')
		i++;
	if (!s[i])
		return (ft_strdup(s + i));
	len = ft_strlen((char *)s) - 1;
	while ((s[len] == '\n' || s[len] == '\t' || s[len] == ' ') && len > 0)
		len--;
	return (ft_strsub(s, i, len - i + 1));
}
