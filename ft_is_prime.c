/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_is_prime.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alukyane <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/09/23 22:16:38 by alukyane          #+#    #+#             */
/*   Updated: 2017/09/23 22:17:02 by alukyane         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_is_prime(int nb)
{
	int i;
	int h;

	if (nb <= 1)
		return (0);
	i = 2;
	h = nb / 2 + 1;
	while (i < h)
	{
		if (nb % i == 0)
			return (0);
		++i;
	}
	return (1);
}
