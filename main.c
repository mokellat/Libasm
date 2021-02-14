#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <limits.h>
#include <errno.h>
size_t		ft_strlen(const char *s);
char		*ft_strcpy(char * dst, const char * src);
int			ft_strcmp(const char *s1, const char *s2);
ssize_t		ft_write(int fd, void const *buf, size_t nbyte);
ssize_t		ft_read(int fd, void *buf, size_t nbyte);
char 		*ft_strdup(const char *s1);
int main()
{
	char	*dst;
	int		fd;
	//printf("%zu\n", ft_strlen("hello"));
	// dst = (char *)malloc(10 * sizeof(char));
	// printf("%s\n",ft_strcpy(dst, ""));
	// printf("%s\n",dst);
	// free(dst);
	// printf("%zu\n",ft_write(-1, "hello\n", 10));
	// printf("%zu\n",write(-1, "\nhello\n", 10));
	// printf("%s\n", strerror(errno));
	// //printf("%zu\n",ft_read(1, "\nhello\n", 10));
	// fd = open("./ft_strlen.c", O_RDONLY);
	// printf("%zu\n",read(fd, dst, 100));
	// printf("%s\n", dst);
	dst = "hello";
	printf("%s\n",ft_strdup(dst));
}
