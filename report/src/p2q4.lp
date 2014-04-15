/* Run with "lp_solve p2q4.lp" */

/* Constants:
	t1	= 12
	t2 = t3	=  6
	t4	= 15
	t5 = t6	=  4
	t7 = t8	= 11
	t9	=  1
	t10	= 21
	t11	= 16
	t12	=  1
	N	= 32
*/

/* Objective: maximize WCET */
max: WCET;


/****** Constraints begin *******/
/* WCET definition: WCET = SUM{i=1..12}(t_i*x_i) */
WCET = 12 x1 + 6 x2 + 6 x3 + 15 x4 + 4 x5 + 4 x6 + 11 x7 + 11 x8 + 1 x9 + 21 x10 + 16 x11 + 1 x12;
/* Exactly one execution */
x1 = 1;
/* Vertices constraints */
x2 + x3 = x1 + x11;
x2 = x4;
x4 + x10 = x5 + x6;
x5 = x7 + x8;
x7 = x9;
x8 = x10;
x6 + x9 = x11;
x3 = x12;
/* Termination or infinite execution */
x12 <= 1;
/* Number of outer loop iterations: x11 = N */
x11 = 32;
/* Maximum number of inner loop iterations x10 <= N*(N-1)/2 */
x10 <= 496;
/* Physical feasibility: xi >= 0 --> assumed implicitly with variable type 'int' */
/******* Constraints end ********/


/* Declarations: we are working with integers */
int WCET, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12;

