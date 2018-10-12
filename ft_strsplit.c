/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_strplit.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: beduroul <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/10/08 17:13:56 by beduroul     #+#   ##    ##    #+#       */
/*   Updated: 2018/10/08 17:55:08 by beduroul    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

static size_t	count_len(char const *s, char c, size_t i)
{
	size_t j;

	j = 0;
	while (s[i] != c && s[i])
	{
		i++;
		j++;
	}
	return (j);
}

static size_t	count_word(char const *s, char c)
{
	size_t i;
	size_t cnt;
	size_t word;

	i = 0;
	cnt = 0;
	word = 0;
	while (s[i])
	{
		if (s[i] == c)
			cnt = 0;
		else if (s[i] != c && cnt == 0)
		{
			word++;
			cnt = 1;
		}
		i++;
	}
	return (word);
}

char			**ft_strsplit(char const *s, char c)
{
	char	**tab;
	size_t	i;
	size_t	j;
	size_t	k;

	i = 0;
	j = 0;
	if (!s || !(tab = malloc(sizeof(*tab) * (count_word(s, c) + 1))))
		return (NULL);
	while (s[i])
	{
		k = 0;
		while (s[i] == c && s[i])
			i++;
		if (s[i])
		{
			if (!(tab[j] = malloc(sizeof(**tab) * (count_len(s, c, i) + 1))))
				return (NULL);
			while (s[i] != c && s[i] != '\0')
				tab[j][k++] = s[i++];
			tab[j++][k] = '\0';
		}
	}
	tab[j] = NULL;
	return (tab);
}
