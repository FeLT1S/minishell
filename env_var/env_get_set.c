/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   env_get_set.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: handrow <handrow@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/14 18:39:23 by handrow           #+#    #+#             */
/*   Updated: 2020/12/02 06:48:00 by handrow          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "env_var.h"
#include "libft.h"
#include "err_msg.h"

const char	*env_get(t_env_containter *env, const char *key)
{
	const t_node			*node = *env;
	const struct s_env_var	*var;

	while (node)
	{
		var = node->content;
		if (ft_strcmp(var->key, key) == 0)
			return (var->value);
		node = node->next;
	}
	return (NULL);
}

void		*env_set(t_env_containter *env, const char *key, const char *val)
{
	t_node				*node;
	struct s_env_var	*var;

	node = *env;
	while (node)
	{
		if (ft_strcmp((var = node->content)->key, key) == 0)
		{
			free(var->value);
			var->value = (!val) ? NULL : ft_strdup(val);
			if (val && !var->value)
				err_system_n_exit(1, NULL);
			return (var->value);
		}
		node = node->next;
	}
	if (!(var = malloc(sizeof(struct s_env_var))))
		err_system_n_exit(1, NULL);
	var->key = ft_strdup(key);
	var->value = val ? ft_strdup(val) : NULL;
	node = dlst_elem(var);
	if (!var->key || (val && !var->value) || !node)
		err_system_n_exit(1, NULL);
	dlst_push_front(env, node);
	return (node);
}
