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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/hlocal/TOC/practica4/practica4/recursos/reg_c.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2412283972_3212880686_p_0(char *t0)
{
    char t21[16];
    char t22[16];
    char t25[16];
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
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t23;
    unsigned int t24;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3592);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
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

LAB14:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 3672);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 11U);
    xsi_driver_first_trans_fast_port(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(50, ng0);
    t4 = xsi_get_transient_memory(11U);
    memset(t4, 0, 11U);
    t11 = t4;
    memset(t11, (unsigned char)2, 11U);
    t12 = (t0 + 3672);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 11U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t2 = (t0 + 3672);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 11U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB13:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t17 = (10 - 2);
    t18 = (10 - t17);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t2 = (t5 + t20);
    t8 = (t0 + 1672U);
    t11 = *((char **)t8);
    t6 = *((unsigned char *)t11);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t22 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 8;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t23 = (0 - 8);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t24;
    t8 = xsi_base_array_concat(t8, t21, t12, (char)97, t2, t22, (char)99, t6, (char)101);
    t15 = ((IEEE_P_2592010699) + 4024);
    t14 = xsi_base_array_concat(t14, t25, t15, (char)99, (unsigned char)2, (char)97, t8, t21, (char)101);
    t24 = (9U + 1U);
    t26 = (1U + t24);
    t7 = (11U != t26);
    if (t7 == 1)
        goto LAB15;

LAB16:    t16 = (t0 + 3672);
    t27 = (t16 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t14, 11U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB9;

LAB15:    xsi_size_not_matching(11U, t26, 0);
    goto LAB16;

}


extern void work_a_2412283972_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2412283972_3212880686_p_0};
	xsi_register_didat("work_a_2412283972_3212880686", "isim/simu4b_4_10_isim_beh.exe.sim/work/a_2412283972_3212880686.didat");
	xsi_register_executes(pe);
}
