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
static const char *ng0 = "C:/Users/RicardoWin7/Documents/git/TOC/practica_final/practica_final/recursos/contador.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );


static void work_a_1378381957_3212880686_p_0(char *t0)
{
    char t20[16];
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
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4320);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 2472U);
    t11 = *((char **)t4);
    t4 = (t0 + 4416);
    t12 = (t4 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 5U);
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

LAB11:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t2 = (t0 + 4416);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 5U);
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB13:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t1 = 1;
    if (5U == 5U)
        goto LAB30;

LAB31:    t1 = 0;

LAB32:    if (t1 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 7248U);
    t5 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t20, t4, t2, 1);
    t8 = (t0 + 4416);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 5U);
    xsi_driver_first_trans_fast(t8);

LAB28:
LAB16:    goto LAB9;

LAB15:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2152U);
    t8 = *((char **)t2);
    t2 = (t0 + 2312U);
    t11 = *((char **)t2);
    t9 = 1;
    if (5U == 5U)
        goto LAB21;

LAB22:    t9 = 0;

LAB23:    if (t9 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 7248U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t20, t4, t2, 1);
    t8 = (t0 + 4416);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 5U);
    xsi_driver_first_trans_fast(t8);

LAB19:    goto LAB16;

LAB18:    xsi_set_current_line(57, ng0);
    t13 = (t0 + 2472U);
    t14 = *((char **)t13);
    t13 = (t0 + 4416);
    t15 = (t13 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t14, 5U);
    xsi_driver_first_trans_fast(t13);
    goto LAB19;

LAB21:    t16 = 0;

LAB24:    if (t16 < 5U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t2 = (t8 + t16);
    t12 = (t11 + t16);
    if (*((unsigned char *)t2) != *((unsigned char *)t12))
        goto LAB22;

LAB26:    t16 = (t16 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(63, ng0);
    t11 = (t0 + 2312U);
    t12 = *((char **)t11);
    t11 = (t0 + 4416);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t12, 5U);
    xsi_driver_first_trans_fast(t11);
    goto LAB28;

LAB30:    t16 = 0;

LAB33:    if (t16 < 5U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t2 = (t4 + t16);
    t8 = (t5 + t16);
    if (*((unsigned char *)t2) != *((unsigned char *)t8))
        goto LAB31;

LAB35:    t16 = (t16 + 1);
    goto LAB33;

}

static void work_a_1378381957_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4480);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4336);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1378381957_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1378381957_3212880686_p_0,(void *)work_a_1378381957_3212880686_p_1};
	xsi_register_didat("work_a_1378381957_3212880686", "isim/test_contador_isim_beh.exe.sim/work/a_1378381957_3212880686.didat");
	xsi_register_executes(pe);
}
