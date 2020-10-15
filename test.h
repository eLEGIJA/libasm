/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: msafflow <elegija4mlg@gmail.com>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/15 18:14:52 by msafflow          #+#    #+#             */
/*   Updated: 2020/10/15 18:35:11 by msafflow         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <stdlib.h>
# include <stddef.h>
# include <stdio.h>
# include <fcntl.h>
# include <string.h>
# include <unistd.h>

int	ft_strlen(const char *s);
char	*ft_strcpy(char *dest, const char *src);
int	ft_write(int fd, const void *src, unsigned int size);
int	ft_read(int fd, const void *src, unsigned int size);
int	ft_strcmp(const char *s1, const char *s2);
char 	*ft_strdup(const char *s);


#endif