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


static void work_a_1378381957_3212880686_p_0(char *t0)
{
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
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(46, ng0);
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
LAB2:    xsi_set_current_line(47, ng0);
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

LAB8:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 5976);
    t12 = (t0 + 3616);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 5U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 5981);
    t6 = 1;
    if (5U == 5U)
        goto LAB16;

LAB17:    t6 = 0;

LAB18:    if (t6 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 5940U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t21, t4, t2, 1);
    t8 = (t0 + 3616);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 5U);
    xsi_driver_first_trans_fast(t8);

LAB14:    goto LAB9;

LAB13:    xsi_set_current_line(51, ng0);
    t13 = (t0 + 5986);
    t15 = (t0 + 3616);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t13, 5U);
    xsi_driver_first_trans_fast(t15);
    goto LAB14;

LAB16:    t17 = 0;

LAB19:    if (t17 < 5U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t11 = (t5 + t17);
    t12 = (t2 + t17);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB17;

LAB21:    t17 = (t17 + 1);
    goto LAB19;

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

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3536);
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
