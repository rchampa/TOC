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
static const char *ng0 = "C:/Users/RicardoWin7/Documents/git/TOC/practica4/practica4/recursos/divider.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3140849233_1035706684(char *, char *, char *, int );


static void work_a_1259266584_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(162, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 10704);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 10496);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1259266584_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(186, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 10768);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 7U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 10512);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1259266584_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(187, ng0);

LAB3:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 10832);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 7U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 10528);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1259266584_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(189, ng0);

LAB3:    t1 = (t0 + 5992U);
    t2 = *((char **)t1);
    t1 = (t0 + 10896);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 7U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 10544);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1259266584_3212880686_p_4(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(190, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 19096U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 6U);
    t7 = (7U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 10960);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 7U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 10560);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(7U, t6, 0);
    goto LAB6;

}

static void work_a_1259266584_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(192, ng0);

LAB3:    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    t1 = (t0 + 11024);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 7U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 10576);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1259266584_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(194, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t3 = (6 - 1);
    t4 = (6 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 11088);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 10592);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1259266584_3212880686_p_7(char *t0)
{
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

LAB0:    xsi_set_current_line(199, ng0);
    t2 = (t0 + 2112U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 10608);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(200, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(203, ng0);
    t2 = (t0 + 6792U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 11152);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(201, ng0);
    t4 = (t0 + 11152);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)0;
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

}

static void work_a_1259266584_3212880686_p_8(char *t0)
{
    char t10[16];
    char t11[16];
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11};

LAB0:    xsi_set_current_line(212, ng0);
    t1 = (t0 + 6632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 10624);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(214, ng0);
    t4 = (t0 + 11216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(215, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(218, ng0);
    t1 = (t0 + 11280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB13:    goto LAB2;

LAB4:    xsi_set_current_line(222, ng0);
    t1 = (t0 + 11344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(223, ng0);
    t1 = (t0 + 11408);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(225, ng0);
    t1 = (t0 + 11472);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(226, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 19112U);
    t1 = xsi_base_array_concat(t1, t10, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 19571);
    t12 = ((IEEE_P_2592010699) + 4024);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 2;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (2 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t1, t10, (char)97, t6, t13, (char)101);
    t17 = (1U + 3U);
    t18 = (t17 + 3U);
    t3 = (7U != t18);
    if (t3 == 1)
        goto LAB15;

LAB16:    t15 = (t0 + 11536);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 7U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(227, ng0);
    t1 = (t0 + 11600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(228, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t2 = t1;
    memset(t2, (unsigned char)2, 7U);
    t4 = (t0 + 11664);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 7U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(229, ng0);
    t1 = (t0 + 11728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(230, ng0);
    t1 = (t0 + 11792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(231, ng0);
    t1 = xsi_get_transient_memory(7U);
    memset(t1, 0, 7U);
    t2 = t1;
    memset(t2, (unsigned char)2, 7U);
    t4 = (t0 + 11856);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 7U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(232, ng0);
    t1 = (t0 + 11216);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(233, ng0);
    t1 = (t0 + 11920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(234, ng0);
    t1 = (t0 + 11280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(237, ng0);
    t1 = (t0 + 11984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(238, ng0);
    t1 = (t0 + 11408);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(239, ng0);
    t1 = (t0 + 11344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(240, ng0);
    t1 = (t0 + 11472);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(241, ng0);
    t1 = (t0 + 11600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(242, ng0);
    t1 = (t0 + 11792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(243, ng0);
    t1 = (t0 + 11280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(246, ng0);
    t1 = (t0 + 11344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(247, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(250, ng0);
    t1 = (t0 + 11280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);

LAB18:    goto LAB2;

LAB7:    xsi_set_current_line(254, ng0);
    t1 = (t0 + 11728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(255, ng0);
    t1 = (t0 + 12048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(256, ng0);
    t1 = (t0 + 11408);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(257, ng0);
    t1 = (t0 + 11344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(258, ng0);
    t1 = (t0 + 11984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(259, ng0);
    t1 = (t0 + 11280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(262, ng0);
    t1 = (t0 + 11728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(263, ng0);
    t1 = (t0 + 12048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(264, ng0);
    t1 = (t0 + 11984);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(265, ng0);
    t1 = (t0 + 11280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(268, ng0);
    t1 = (t0 + 11344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(269, ng0);
    t1 = (t0 + 11472);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(270, ng0);
    t1 = (t0 + 11600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(271, ng0);
    t1 = (t0 + 11728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(272, ng0);
    t1 = (t0 + 11920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(273, ng0);
    t1 = (t0 + 11792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(274, ng0);
    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t1 = (t0 + 19256U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t10, t2, t1, 1);
    t5 = (t0 + 11856);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t12 = *((char **)t8);
    memcpy(t12, t4, 7U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(275, ng0);
    t1 = (t0 + 11280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(278, ng0);
    t1 = (t0 + 11920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(279, ng0);
    t1 = (t0 + 11344);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(280, ng0);
    t1 = (t0 + 11472);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(281, ng0);
    t1 = (t0 + 11600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(282, ng0);
    t1 = (t0 + 11792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(284, ng0);
    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t1 = (t0 + 19256U);
    t16 = (6 - 3);
    t3 = ieee_p_1242562249_sub_3140849233_1035706684(IEEE_P_1242562249, t2, t1, t16);
    if (t3 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(287, ng0);
    t1 = (t0 + 11280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB21:    goto LAB2;

LAB11:    xsi_set_current_line(291, ng0);
    t1 = (t0 + 11280);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB12:    xsi_set_current_line(216, ng0);
    t1 = (t0 + 11280);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB15:    xsi_size_not_matching(7U, t18, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(248, ng0);
    t1 = (t0 + 11280);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_set_current_line(285, ng0);
    t4 = (t0 + 11280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    goto LAB21;

}


extern void work_a_1259266584_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1259266584_3212880686_p_0,(void *)work_a_1259266584_3212880686_p_1,(void *)work_a_1259266584_3212880686_p_2,(void *)work_a_1259266584_3212880686_p_3,(void *)work_a_1259266584_3212880686_p_4,(void *)work_a_1259266584_3212880686_p_5,(void *)work_a_1259266584_3212880686_p_6,(void *)work_a_1259266584_3212880686_p_7,(void *)work_a_1259266584_3212880686_p_8};
	xsi_register_didat("work_a_1259266584_3212880686", "isim/simu4b_3_6_isim_beh.exe.sim/work/a_1259266584_3212880686.didat");
	xsi_register_executes(pe);
}
