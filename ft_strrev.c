/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_strrev.c                                      .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: beduroul <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/08/02 12:01:08 by beduroul     #+#   ##    ##    #+#       */
/*   Updated: 2018/08/02 12:01:10 by beduroul    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

char	*ft_strrev(char *str)
{
	int		i;
	int		j;
	char	str_temp;

	i = 0;
	j = 0;
	while (str[j])
		j++;
	j--;
	while (j > i)
	{
		str_temp = str[j];
		str[j] = str[i];
		str[i] = str_temp;
		i++;
		j--;
	}
	return (str);
}
