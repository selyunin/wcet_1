/* Sorts the given array.                         */
/* Registers used for flow facts: r1 (array_size) */
void bubble_sort(double numbers[], int array_size)
{
/* Save the value register %i1 in the user register @size */
/* ai: instruction "bubble_sort" is entered with @size = 32; */
int i,j;
double temp;
for (i = (array_size - 1); /* Loop Bound relative to bubble_sort */
	i > 0;                 /* ai: loop here MAX (@size-1); */
	i--)
{
	for (j = 1;           /* Loop Bound relative to outer loop */
		j <= i;           /* ai: loop here MAX (@size-1); */
		j++)
	{
	/* ai?: flow (here) <= (@size * (@size-1) / 2) ("bubble_sort"); */
	/* Unfortunately, aiT is not capable of interpreting parametric flow facts */
	/* ai: flow (here) <= 496 ("bubble_sort"); */
		if (numbers[j-1] > numbers[j])
		{
			temp = numbers[j-1];
			numbers[j-1] = numbers[j];
			numbers[j] = temp;
		}
	}
}
}
