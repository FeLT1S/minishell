/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   dlst_del.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jiandre <kostbg1@gmail.com>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/05 16:11:57 by jiandre           #+#    #+#             */
/*   Updated: 2020/11/26 02:34:38 by jiandre          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void				dlst_del(t_node **root, t_del_func deletor)
{
	while (*root)
		dlst_del_elem(root, *root, deletor);
	*root = NULL;
}
