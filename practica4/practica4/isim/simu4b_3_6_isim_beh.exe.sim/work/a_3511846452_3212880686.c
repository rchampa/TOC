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
static const char *ng0 = "C:/Users/RicardoWin7/Documents/git/TOC/practica4/practica4/recursos/alu.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3511846452_3212880686_p_0(char *t0)
{
    char t5[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:    t15 = (t0 + 1352U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)3);
    if (t18 != 0)
        goto LAB5;

LAB6:
LAB7:    t29 = xsi_get_transient_memory(7U);
    memset(t29, 0, 7U);
    t30 = t29;
    memset(t30, (unsigned char)2, 7U);
    t31 = (t0 + 3192);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t29, 7U);
    xsi_driver_first_trans_fast_port(t31);

LAB2:    t36 = (t0 + 3112);
    *((int *)t36) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 5116U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 5132U);
    t9 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t5, t6, t1, t8, t7);
    t10 = (t0 + 3192);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 7U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t15 = (t0 + 1032U);
    t20 = *((char **)t15);
    t15 = (t0 + 5116U);
    t21 = (t0 + 1192U);
    t22 = *((char **)t21);
    t21 = (t0 + 5132U);
    t23 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t19, t20, t15, t22, t21);
    t24 = (t0 + 3192);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t23, 7U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB2;

LAB8:    goto LAB2;

}


extern void work_a_3511846452_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3511846452_3212880686_p_0};
	xsi_register_didat("work_a_3511846452_3212880686", "isim/simu4b_3_6_isim_beh.exe.sim/work/a_3511846452_3212880686.didat");
	xsi_register_executes(pe);
}
