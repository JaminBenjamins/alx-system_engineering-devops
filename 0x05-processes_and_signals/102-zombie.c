#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/**
 * infinite_while - A function that runs an infinite loop
 *
 * Return: 0
 */
int infinite_while(void)
{
	while(1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - make xpmbie process
 *
 * Return: Always 0
 */
int main(void)
{
	pid_t pid;
	char index = 0;

	while (index < 5)
	{
		pid = fork();
		if (pid > 0)
		{
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);
			index++;
		}
		else
			exit(0);
	}
	infinite_while();

	return(EXIT_SUCCESS);	
}
