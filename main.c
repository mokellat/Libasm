#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char * dst, const char * src);
int		ft_strcmp(const char *s1, const char *s2);
int main()
{
	// char	*dst;
	// //printf("%zu\n", ft_strlen("hello"));
	// dst = (char *)malloc(10 * sizeof(char));
	// printf("%s\n",ft_strcpy(dst, ""));
	// printf("%s\n",dst);
	// free(dst);
	char *dst = "";
	char *src = "";
	printf("%d\n", ft_strcmp(dst, src));
	printf("%d\n", strcmp(dst, src));
}
