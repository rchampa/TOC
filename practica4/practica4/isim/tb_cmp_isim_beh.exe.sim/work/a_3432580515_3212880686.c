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
static const char *ng0 = "C:/Users/RicardoWin7/Documents/git/TOC/practica4/practica4/recursos/cmp.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110411308_1035706684(char *, char *, char *, char *, char *);


static void work_a_3432580515_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
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
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4668U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 4684U);
    t5 = ieee_p_1242562249_sub_2110411308_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t13 = (t0 + 4668U);
    t15 = (t0 + 1192U);
    t16 = *((char **)t15);
    t15 = (t0 + 4684U);
    t17 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t14, t13, t16, t15);
    if (t17 != 0)
        goto LAB5;

LAB6:
LAB7:    t25 = (t0 + 4742);
    t27 = (t0 + 2912);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 2U);
    xsi_driver_first_trans_fast_port(t27);

LAB2:    t32 = (t0 + 2832);
    *((int *)t32) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 4738);
    t8 = (t0 + 2912);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t6, 2U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    t18 = (t0 + 4740);
    t20 = (t0 + 2912);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 2U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB2;

LAB8:    goto LAB2;

}


extern void work_a_3432580515_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3432580515_3212880686_p_0};
	xsi_register_didat("work_a_3432580515_3212880686", "isim/tb_cmp_isim_beh.exe.sim/work/a_3432580515_3212880686.didat");
	xsi_register_executes(pe);
}
