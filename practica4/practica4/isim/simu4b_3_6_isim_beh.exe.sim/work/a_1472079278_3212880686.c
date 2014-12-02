/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/RicardoWin7/Documents/git/TOC/practica4/practica4/recursos/reg_divisor.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1472079278_3212880686_p_0(char *t0)
{
    char t20[16];
    char t21[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    int t22;
    unsigned int t23;
    char *t24;

LAB0:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3432);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 3512);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 7U);
    xsi_driver_first_trans_fast_port(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t4 = xsi_get_transient_memory(7U);
    memset(t4, 0, 7U);
    t11 = t4;
    memset(t11, (unsigned char)2, 7U);
    t12 = (t0 + 3512);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 7U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 3512);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 7U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB13:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t17 = (6 - 6);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t2 = (t5 + t19);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t21 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 6;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t22 = (1 - 6);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t23;
    t8 = xsi_base_array_concat(t8, t20, t11, (char)99, (unsigned char)2, (char)97, t2, t21, (char)101);
    t23 = (1U + 6U);
    t6 = (7U != t23);
    if (t6 == 1)
        goto LAB15;

LAB16:    t13 = (t0 + 3512);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t24 = *((char **)t16);
    memcpy(t24, t8, 7U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB9;

LAB15:    xsi_size_not_matching(7U, t23, 0);
    goto LAB16;

}


extern void work_a_1472079278_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1472079278_3212880686_p_0};
	xsi_register_didat("work_a_1472079278_3212880686", "isim/simu4b_3_6_isim_beh.exe.sim/work/a_1472079278_3212880686.didat");
	xsi_register_executes(pe);
}
