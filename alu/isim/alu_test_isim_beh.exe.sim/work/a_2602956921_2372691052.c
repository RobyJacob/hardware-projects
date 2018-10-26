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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/roby/hardware-projects/alu/alu_test.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_3525738511873186323_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_2602956921_2372691052_p_0(char *t0)
{
    char t12[16];
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    int t10;
    int t11;
    char *t14;
    int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 2984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 5448);
    t4 = (t0 + 3368);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5456);
    t4 = (t0 + 3432);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5464);
    t4 = (t0 + 3496);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(86, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2792);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5467);
    *((int *)t2) = 0;
    t3 = (t0 + 5471);
    *((int *)t3) = 7;
    t10 = 0;
    t11 = 7;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(88, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 5376U);
    t6 = (t0 + 5475);
    t8 = (t13 + 0U);
    t14 = (t8 + 0U);
    *((int *)t14) = 0;
    t14 = (t8 + 4U);
    *((int *)t14) = 2;
    t14 = (t8 + 8U);
    *((int *)t14) = 1;
    t15 = (2 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t8 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = ieee_p_1242562249_sub_3525738511873186323_1035706684(IEEE_P_1242562249, t12, t5, t4, t6, t13);
    t17 = (t12 + 12U);
    t16 = *((unsigned int *)t17);
    t18 = (1U * t16);
    t19 = (3U != t18);
    if (t19 == 1)
        goto LAB12;

LAB13:    t20 = (t0 + 3496);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t14, 3U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(89, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2792);
    xsi_process_wait(t2, t9);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB10:    t2 = (t0 + 5467);
    t10 = *((int *)t2);
    t3 = (t0 + 5471);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB11;

LAB18:    t15 = (t10 + 1);
    t10 = t15;
    t4 = (t0 + 5467);
    *((int *)t4) = t10;
    goto LAB8;

LAB12:    xsi_size_not_matching(3U, t18, 0);
    goto LAB13;

LAB14:    goto LAB10;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

}


extern void work_a_2602956921_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2602956921_2372691052_p_0};
	xsi_register_didat("work_a_2602956921_2372691052", "isim/alu_test_isim_beh.exe.sim/work/a_2602956921_2372691052.didat");
	xsi_register_executes(pe);
}
