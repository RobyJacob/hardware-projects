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
static const char *ng0 = "/home/roby/hardware-projects/alu/alu.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2598175070666390882_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3525738511873186323_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3525738511873258197_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_420421356293926614_1035706684(char *, char *, char *, char *);
char *ieee_p_1242562249_sub_443432982110449621_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_443655408936719335_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_443655409838522413_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_4450116696532108620_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t26[16];
    char t29[16];
    char t34[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    int t25;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5956);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB12:    t5 = (t0 + 5959);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB13:    t8 = (t0 + 5962);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB14:    t11 = (t0 + 5965);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB15:    t14 = (t0 + 5968);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB16:    t17 = (t0 + 5971);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB17:    t20 = (t0 + 5974);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB18:    t23 = (t0 + 5977);
    t25 = xsi_mem_cmp(t23, t2, 3U);
    if (t25 == 1)
        goto LAB10;

LAB19:
LAB11:    xsi_set_current_line(65, ng0);

LAB2:    t1 = (t0 + 3800);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(49, ng0);
    t27 = (t0 + 1032U);
    t28 = *((char **)t27);
    t30 = ((IEEE_P_1242562249) + 3080);
    t31 = (t0 + 5840U);
    t27 = xsi_base_array_concat(t27, t29, t30, (char)99, (unsigned char)2, (char)97, t28, t31, (char)101);
    t32 = (t0 + 1192U);
    t33 = *((char **)t32);
    t35 = ((IEEE_P_1242562249) + 3080);
    t36 = (t0 + 5856U);
    t32 = xsi_base_array_concat(t32, t34, t35, (char)99, (unsigned char)2, (char)97, t33, t36, (char)101);
    t37 = ieee_p_1242562249_sub_3525738511873186323_1035706684(IEEE_P_1242562249, t26, t27, t29, t32, t34);
    t38 = (t26 + 12U);
    t39 = *((unsigned int *)t38);
    t40 = (1U * t39);
    t41 = (9U != t40);
    if (t41 == 1)
        goto LAB21;

LAB22:    t42 = (t0 + 3912);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t37, 9U);
    xsi_driver_first_trans_fast(t42);
    goto LAB2;

LAB4:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_1242562249) + 3080);
    t5 = (t0 + 5840U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_1242562249) + 3080);
    t11 = (t0 + 5856U);
    t6 = xsi_base_array_concat(t6, t34, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_1242562249_sub_3525738511873258197_1035706684(IEEE_P_1242562249, t26, t1, t29, t6, t34);
    t14 = (t26 + 12U);
    t39 = *((unsigned int *)t14);
    t40 = (1U * t39);
    t41 = (9U != t40);
    if (t41 == 1)
        goto LAB23;

LAB24:    t15 = (t0 + 3912);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 9U);
    xsi_driver_first_trans_fast(t15);
    goto LAB2;

LAB5:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_1242562249) + 3080);
    t5 = (t0 + 5840U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_1242562249) + 3080);
    t11 = (t0 + 5856U);
    t6 = xsi_base_array_concat(t6, t34, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_1242562249_sub_2598175070666390882_1035706684(IEEE_P_1242562249, t26, t1, t29, t6, t34);
    t14 = (t26 + 12U);
    t39 = *((unsigned int *)t14);
    t40 = (1U * t39);
    t41 = (9U != t40);
    if (t41 == 1)
        goto LAB25;

LAB26:    t15 = (t0 + 3912);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 9U);
    xsi_driver_first_trans_fast(t15);
    goto LAB2;

LAB6:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_1242562249) + 3080);
    t5 = (t0 + 5840U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_1242562249) + 3080);
    t11 = (t0 + 5856U);
    t6 = xsi_base_array_concat(t6, t34, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_1242562249_sub_4450116696532108620_1035706684(IEEE_P_1242562249, t26, t1, t29, t6, t34);
    t14 = (t26 + 12U);
    t39 = *((unsigned int *)t14);
    t40 = (1U * t39);
    t41 = (9U != t40);
    if (t41 == 1)
        goto LAB27;

LAB28:    t15 = (t0 + 3912);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 9U);
    xsi_driver_first_trans_fast(t15);
    goto LAB2;

LAB7:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_1242562249) + 3080);
    t5 = (t0 + 5840U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_1242562249) + 3080);
    t11 = (t0 + 5856U);
    t6 = xsi_base_array_concat(t6, t34, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_1242562249_sub_443655408936719335_1035706684(IEEE_P_1242562249, t26, t1, t29, t6, t34);
    t14 = (t26 + 12U);
    t39 = *((unsigned int *)t14);
    t40 = (1U * t39);
    t41 = (9U != t40);
    if (t41 == 1)
        goto LAB29;

LAB30:    t15 = (t0 + 3912);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 9U);
    xsi_driver_first_trans_fast(t15);
    goto LAB2;

LAB8:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_1242562249) + 3080);
    t5 = (t0 + 5840U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_1242562249) + 3080);
    t11 = (t0 + 5856U);
    t6 = xsi_base_array_concat(t6, t34, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_1242562249_sub_443432982110449621_1035706684(IEEE_P_1242562249, t26, t1, t29, t6, t34);
    t14 = (t26 + 12U);
    t39 = *((unsigned int *)t14);
    t40 = (1U * t39);
    t41 = (9U != t40);
    if (t41 == 1)
        goto LAB31;

LAB32:    t15 = (t0 + 3912);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 9U);
    xsi_driver_first_trans_fast(t15);
    goto LAB2;

LAB9:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_1242562249) + 3080);
    t5 = (t0 + 5840U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = ieee_p_1242562249_sub_420421356293926614_1035706684(IEEE_P_1242562249, t26, t1, t29);
    t8 = (t26 + 12U);
    t39 = *((unsigned int *)t8);
    t40 = (1U * t39);
    t41 = (9U != t40);
    if (t41 == 1)
        goto LAB33;

LAB34:    t9 = (t0 + 3912);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 9U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB10:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_1242562249) + 3080);
    t5 = (t0 + 5840U);
    t1 = xsi_base_array_concat(t1, t29, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_1242562249) + 3080);
    t11 = (t0 + 5856U);
    t6 = xsi_base_array_concat(t6, t34, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_1242562249_sub_443655409838522413_1035706684(IEEE_P_1242562249, t26, t1, t29, t6, t34);
    t14 = (t26 + 12U);
    t39 = *((unsigned int *)t14);
    t40 = (1U * t39);
    t41 = (9U != t40);
    if (t41 == 1)
        goto LAB35;

LAB36:    t15 = (t0 + 3912);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 9U);
    xsi_driver_first_trans_fast(t15);
    goto LAB2;

LAB20:;
LAB21:    xsi_size_not_matching(9U, t40, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(9U, t40, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(9U, t40, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(9U, t40, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(9U, t40, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(9U, t40, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(9U, t40, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(9U, t40, 0);
    goto LAB36;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (8 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3976);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 3816);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (8 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4040);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3832);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1,(void *)work_a_0832606739_3212880686_p_2};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/alu_test_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
