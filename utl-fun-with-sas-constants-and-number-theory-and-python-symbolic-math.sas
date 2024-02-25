%let pgm=utl-fun-with-sas-constants-and-number-theory-and-python-symbolic-math;

Fun with sas constants and number theory and python symbolic math

github
http://tinyurl.com/3z4jkzb9
https://github.com/rogerjdeangelis/utl-fun-with-sas-constants-and-number-theory-and-python-symbolic-math

SAS CONSTANTS

constant("pi");
constant("e");
constant("maceps");
constant("big");
constant("small");
constant("big");
constant("logbig");
constant("logsmall");
constant("euler");

/**************************************************************************************************************************/
/*                                                             |                                                          */
/*                                                             |                                                          */
/*  INTERESTING RELATIONSHIPS                                  |    PROCESS                                               */
/*                                                             |                                                          */
/*                                                             |                                                          */
/*  constant('big') * constant('small')          = 4           |    data _null_;                                          */
/*                                                             |      four = constant('big') * constant('small');         */
/*                                                             |      put four=;                                          */
/*                                                             |    run;quit;                                             */
/*                                                             |    four=4                                                */
/*                                                             |                                                          */
/*  exp(constant('logbig')+constant('logsmall')) = 4           |    data _null_;                                          */
/*                                                             |      four= exp(constant('logbig')+constant('logsmall')); */
/*                                                             |      put four=;                                          */
/*                                                             |    run;quit;                                             */
/*                                                             |                                                          */
/*                                                             |    four=4.0000001291                                     */
/*                                                             |                                                          */
/*  exp(constant('pi')) - constant('pi')         = ~20         |    data _null_;                                          */
/*                                                             |      twenty = exp(constant('pi')) - constant('pi');      */
/*                                                             |      put twenty=;                                        */
/*                                                             |    run;quit;                                             */
/*                                                             |                                                          */
/*                                                             |    twenty=19.999099979                                   */
/*                                                             |                                                          */
/*                                                             |                                                          */
/*  exp(I*constant('pi'))  (I is complex)        = -1          |     %utl_pybegin;                                        */
/*                                                             |     parmcards4;                                          */
/*                                                             |     from sympy import *;                                 */
/*                                                             |     r = symbols('r');                                    */
/*                                                             |     r=exp(I*pi);                                         */
/*                                                             |     print('minus one ', r);                              */
/*                                                             |     ;;;;                                                 */
/*                                                             |     %utl_pyend;                                          */
/*                                                             |                                                          */
/*                                                             |     minus one  -1                                        */
/*                                                             |                                                          */
/*                                                             |                                                          */
/*  integrate(exp(-1*x**2),(x, -oo, +oo));       = sqrt('pi')  |    Pops up frequently with statistical distributions?    */
/*                                                             |                                                          */
/*                                                             |    %utl_pybegin;                                         */
/*                                                             |    parmcards4;                                           */
/*                                                             |    from sympy import *;                                  */
/*                                                             |    x, r = symbols("x r");                                */
/*                                                             |    r=integrate(exp(-1*x**2),(x, -oo, +oo));              */
/*                                                             |    print( r)                                             */
/*                                                             |    ;;;;                                                  */
/*                                                             |    %utl_pyend;                                           */
/*                                                             |                                                          */
/*                                                             |    integral=  sqrt(pi)                                   */
/*                                                             |                                                          */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
