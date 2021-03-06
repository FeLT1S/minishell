/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   executor.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: handrow <handrow@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/21 05:28:32 by handrow           #+#    #+#             */
/*   Updated: 2020/12/02 02:20:02 by handrow          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef EXECUTOR_H
# define EXECUTOR_H

# include "forky.h"

void				set_exit_code(int exit_code, t_env_containter *env);
int					execute_instructions(t_instruction_list cmds,
										t_env_containter *env);
void				select_forky(struct s_forky_info *info);
void				fill_pipes(struct s_forky_info *info, t_node *cmd);
int					get_last_ec_n_wait(pid_t last_pid);

#endif
