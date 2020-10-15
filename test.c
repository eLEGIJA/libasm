/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: msafflow <elegija4mlg@gmail.com>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/15 18:13:32 by msafflow          #+#    #+#             */
/*   Updated: 2020/10/15 19:13:29 by msafflow         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

int main()
{
	char	*str;
	int	      fd;

	str = (char *)calloc(sizeof(char), 130);
	printf("---ft_strlen---\nEMPTY STRING(expected 0): %d\n", ft_strlen(""));
	printf("LONG STRING(expected 127): %d\n", ft_strlen("str str str str str str str str str str str str str str str str str str str str str str str str str str str str str str str str"));

	printf("---ft_strcpy---\nEMPTY STRING: %s\n", ft_strcpy(str, ""));
	bzero(((void *)str), 130);
	printf("LONG STRING: %s\n", ft_strcpy(str, "str str str str str str str str str str str str str str str str str str str str str str str str str str str str str str str str"));
	bzero(((void *)str), 130);

	printf("---ft_strcmp---\n2 EMPTY STRINGS: %d\n", ft_strcmp("", ""));
	printf("2 EMPTY STRINGS as first arg: %d\n", ft_strcmp("", "test"));
	printf("EQUAL: %d\n", ft_strcmp("test", "test"));
	printf("test + tes: %d\n", ft_strcmp("test", "tes"));
	printf("tes + test: %d\n", ft_strcmp("tes", "test"));

	printf("---ft_write---\nTo stdout(expected 6): %d\n", ft_write(1, "TEST\n", 6));
	fd = open("file", O_WRONLY | O_CREAT | O_TRUNC, 0777);
	printf("Write to open fd(expected 6): %d\n", ft_write(fd, "TEST\n", 6));
	printf("Write to wrong fd(expected 9): %d\n", ft_write(-5, "TEST\n", 6));
	close(fd);

	printf("---ft_read---\nFrom stdin (buf = 5): %d %s\n", ft_read(1, str, 6), str);
	bzero(((void *)str), 130);
	fd = open("file", O_RDONLY);
	printf("Read from open fd: %d %s\n", ft_read(fd, str, 6), str);
	bzero(((void *)str), 130);
	printf("Read from wrong fd(expected 9): %d %s\n", ft_read(-5, str, 6), str);

	printf("---ft_strdup---\nEMPTY STRING: %s\n", ft_strdup(""));
	printf("LONG STRING: %s\n", ft_strdup("str str str str str str str str str str str str str str str str str str str str str str str str str str str str str str str str"));
}
