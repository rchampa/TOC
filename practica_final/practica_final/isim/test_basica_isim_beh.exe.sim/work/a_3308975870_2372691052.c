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
static const char *ng0 = "C:/Users/RicardoWin7/Documents/git/TOC/practica_final/practica_final/recursos/test.vhd";



static void work_a_3308975870_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3400);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3400);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3308975870_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4416);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    memset(t3, (unsigned char)2, 4U);
    t4 = (t0 + 4480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(104, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    memset(t3, (unsigned char)2, 4U);
    t4 = (t0 + 4544);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(105, ng0);
    t9 = (190 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 7572);
    t4 = (t0 + 4480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(111, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);
    t9 = (20000 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB18;

LAB19:    t10 = (unsigned char)0;

LAB20:    if (t10 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(118, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t2 = (t0 + 7576);
    xsi_report(t2, 22U, (unsigned char)2);
    goto LAB17;

LAB18:    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    t10 = t14;
    goto LAB20;

LAB21:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 7598);
    t4 = (t0 + 4480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(122, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

LAB25:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(124, ng0);
    t9 = (20000 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB31:    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

LAB29:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t12 = *((unsigned char *)t3);
    t13 = (t12 == (unsigned char)3);
    if (t13 == 1)
        goto LAB38;

LAB39:    t11 = (unsigned char)0;

LAB40:    if (t11 == 1)
        goto LAB35;

LAB36:    t10 = (unsigned char)0;

LAB37:    if (t10 == 0)
        goto LAB33;

LAB34:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB49:    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

LAB33:    t18 = (t0 + 7607);
    xsi_report(t18, 22U, (unsigned char)2);
    goto LAB34;

LAB35:    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t2 = (t0 + 7602);
    t16 = 1;
    if (5U == 5U)
        goto LAB41;

LAB42:    t16 = 0;

LAB43:    t10 = t16;
    goto LAB37;

LAB38:    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t14 = *((unsigned char *)t4);
    t15 = (t14 == (unsigned char)2);
    t11 = t15;
    goto LAB40;

LAB41:    t17 = 0;

LAB44:    if (t17 < 5U)
        goto LAB45;
    else
        goto LAB43;

LAB45:    t7 = (t5 + t17);
    t8 = (t2 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB42;

LAB46:    t17 = (t17 + 1);
    goto LAB44;

LAB47:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4416);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 7629);
    t4 = (t0 + 4544);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(134, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB53:    *((char **)t1) = &&LAB54;
    goto LAB1;

LAB48:    goto LAB47;

LAB50:    goto LAB48;

LAB51:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(136, ng0);
    t9 = (20000 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB57:    *((char **)t1) = &&LAB58;
    goto LAB1;

LAB52:    goto LAB51;

LAB54:    goto LAB52;

LAB55:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 4416);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t12 = *((unsigned char *)t3);
    t13 = (t12 == (unsigned char)3);
    if (t13 == 1)
        goto LAB64;

LAB65:    t11 = (unsigned char)0;

LAB66:    if (t11 == 1)
        goto LAB61;

LAB62:    t10 = (unsigned char)0;

LAB63:    if (t10 == 0)
        goto LAB59;

LAB60:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(142, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB75:    *((char **)t1) = &&LAB76;
    goto LAB1;

LAB56:    goto LAB55;

LAB58:    goto LAB56;

LAB59:    t18 = (t0 + 7638);
    xsi_report(t18, 22U, (unsigned char)2);
    goto LAB60;

LAB61:    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t2 = (t0 + 7633);
    t16 = 1;
    if (5U == 5U)
        goto LAB67;

LAB68:    t16 = 0;

LAB69:    t10 = t16;
    goto LAB63;

LAB64:    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t14 = *((unsigned char *)t4);
    t15 = (t14 == (unsigned char)2);
    t11 = t15;
    goto LAB66;

LAB67:    t17 = 0;

LAB70:    if (t17 < 5U)
        goto LAB71;
    else
        goto LAB69;

LAB71:    t7 = (t5 + t17);
    t8 = (t2 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB68;

LAB72:    t17 = (t17 + 1);
    goto LAB70;

LAB73:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 7660);
    t4 = (t0 + 4480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(146, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB79:    *((char **)t1) = &&LAB80;
    goto LAB1;

LAB74:    goto LAB73;

LAB76:    goto LAB74;

LAB77:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(148, ng0);
    t9 = (20000 * 1000LL);
    t2 = (t0 + 3648);
    xsi_process_wait(t2, t9);

LAB83:    *((char **)t1) = &&LAB84;
    goto LAB1;

LAB78:    goto LAB77;

LAB80:    goto LAB78;

LAB81:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t12 = *((unsigned char *)t3);
    t13 = (t12 == (unsigned char)3);
    if (t13 == 1)
        goto LAB90;

LAB91:    t11 = (unsigned char)0;

LAB92:    if (t11 == 1)
        goto LAB87;

LAB88:    t10 = (unsigned char)0;

LAB89:    if (t10 == 0)
        goto LAB85;

LAB86:    xsi_set_current_line(151, ng0);

LAB101:    *((char **)t1) = &&LAB102;
    goto LAB1;

LAB82:    goto LAB81;

LAB84:    goto LAB82;

LAB85:    t18 = (t0 + 7669);
    xsi_report(t18, 22U, (unsigned char)2);
    goto LAB86;

LAB87:    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t2 = (t0 + 7664);
    t16 = 1;
    if (5U == 5U)
        goto LAB93;

LAB94:    t16 = 0;

LAB95:    t10 = t16;
    goto LAB89;

LAB90:    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t14 = *((unsigned char *)t4);
    t15 = (t14 == (unsigned char)2);
    t11 = t15;
    goto LAB92;

LAB93:    t17 = 0;

LAB96:    if (t17 < 5U)
        goto LAB97;
    else
        goto LAB95;

LAB97:    t7 = (t5 + t17);
    t8 = (t2 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB94;

LAB98:    t17 = (t17 + 1);
    goto LAB96;

LAB99:    goto LAB2;

LAB100:    goto LAB99;

LAB102:    goto LAB100;

}


extern void work_a_3308975870_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3308975870_2372691052_p_0,(void *)work_a_3308975870_2372691052_p_1};
	xsi_register_didat("work_a_3308975870_2372691052", "isim/test_basica_isim_beh.exe.sim/work/a_3308975870_2372691052.didat");
	xsi_register_executes(pe);
}
