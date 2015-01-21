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
static const char *ng0 = "C:/Users/RicardoWin7/Documents/git/TOC/practica5/practica5/recursos/reg_contador.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_4281654957_3212880686_p_0(char *t0)
{
    char t17[16];
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
    int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3520);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB12:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(40, ng0);
    t4 = xsi_get_transient_memory(6U);
    memset(t4, 0, 6U);
    t11 = t4;
    memset(t11, (unsigned char)2, 6U);
    t12 = (t0 + 3616);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 6U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 5904U);
    t8 = (t0 + 5941);
    t12 = (t17 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 5;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t18 = (5 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t19;
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t2, t8, t17);
    if (t6 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 5904U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t4, t2, 1);
    t8 = (t17 + 12U);
    t19 = *((unsigned int *)t8);
    t23 = (1U * t19);
    t1 = (6U != t23);
    if (t1 == 1)
        goto LAB16;

LAB17:    t11 = (t0 + 3616);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 6U);
    xsi_driver_first_trans_fast(t11);

LAB14:    goto LAB9;

LAB13:    xsi_set_current_line(43, ng0);
    t13 = xsi_get_transient_memory(6U);
    memset(t13, 0, 6U);
    t14 = t13;
    memset(t14, (unsigned char)2, 6U);
    t15 = (t0 + 3616);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 6U);
    xsi_driver_first_trans_fast(t15);
    goto LAB14;

LAB16:    xsi_size_not_matching(6U, t23, 0);
    goto LAB17;

}

static void work_a_4281654957_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 6U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3536);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4281654957_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4281654957_3212880686_p_0,(void *)work_a_4281654957_3212880686_p_1};
	xsi_register_didat("work_a_4281654957_3212880686", "isim/reg_contador_isim_beh.exe.sim/work/a_4281654957_3212880686.didat");
	xsi_register_executes(pe);
}
