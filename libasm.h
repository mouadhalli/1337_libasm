/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mhalli <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/05 14:12:59 by mhalli            #+#    #+#             */
/*   Updated: 2021/02/05 14:13:00 by mhalli           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h> 
#include <errno.h>

size_t		ft_strlen(const char *str);
ssize_t		ft_read(int fd, void *buf, size_t count);
ssize_t     ft_write(int fd, const void *buf, size_t count);
int			ft_strcmp(const char *s1, const char *s2);
char 		*ft_strcpy(char *dest, const char *src);
char		*ft_strdup(const char *s1);

#endif

