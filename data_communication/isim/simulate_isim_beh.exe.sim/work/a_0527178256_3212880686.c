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
static const char *ng0 = "/home/roby-jacob/hardware-projects/data_communication/test_receiver.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0527178256_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5216);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5088);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0527178256_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    if (t3 == 1)
        goto LAB3;

LAB7:    if (t3 == 2)
        goto LAB4;

LAB8:    if (t3 == 3)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 8800);
    t4 = (t0 + 5280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);

LAB2:    t1 = (t0 + 5104);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 8788);
    t5 = (t0 + 5280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB2;

LAB4:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 8792);
    t4 = (t0 + 5280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB5:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 8796);
    t4 = (t0 + 5280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB10:;
}

static void work_a_0527178256_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(114, ng0);
    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 5344);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 2928U);
    t4 = *((char **)t1);
    t6 = *((int *)t4);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 5344);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 4);
    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 + 1);
    t1 = (t0 + 5408);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t6;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 5408);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

}

static void work_a_0527178256_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(138, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(159, ng0);
    t1 = (t0 + 8893);
    t5 = (t0 + 5472);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 7U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t1 = (t0 + 5136);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t6 = (7 - 1);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 8804);
    t11 = 1;
    if (2U == 2U)
        goto LAB8;

LAB9:    t11 = 0;

LAB10:    if (t11 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = (7 - 1);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 8813);
    t3 = 1;
    if (2U == 2U)
        goto LAB16;

LAB17:    t3 = 0;

LAB18:    if (t3 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = (7 - 1);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 8822);
    t3 = 1;
    if (2U == 2U)
        goto LAB24;

LAB25:    t3 = 0;

LAB26:    if (t3 != 0)
        goto LAB22;

LAB23:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = (7 - 2);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 8831);
    t3 = 1;
    if (3U == 3U)
        goto LAB32;

LAB33:    t3 = 0;

LAB34:    if (t3 != 0)
        goto LAB30;

LAB31:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = (7 - 2);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 8841);
    t3 = 1;
    if (3U == 3U)
        goto LAB40;

LAB41:    t3 = 0;

LAB42:    if (t3 != 0)
        goto LAB38;

LAB39:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = (7 - 2);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 8851);
    t3 = 1;
    if (3U == 3U)
        goto LAB48;

LAB49:    t3 = 0;

LAB50:    if (t3 != 0)
        goto LAB46;

LAB47:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = (7 - 2);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 8861);
    t3 = 1;
    if (3U == 3U)
        goto LAB56;

LAB57:    t3 = 0;

LAB58:    if (t3 != 0)
        goto LAB54;

LAB55:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = (7 - 3);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 8871);
    t3 = 1;
    if (4U == 4U)
        goto LAB64;

LAB65:    t3 = 0;

LAB66:    if (t3 != 0)
        goto LAB62;

LAB63:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t6 = (7 - 3);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t5 = (t0 + 8882);
    t3 = 1;
    if (4U == 4U)
        goto LAB72;

LAB73:    t3 = 0;

LAB74:    if (t3 != 0)
        goto LAB70;

LAB71:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(140, ng0);
    t15 = (t0 + 8806);
    t17 = (t0 + 5472);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t15, 7U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB6;

LAB8:    t12 = 0;

LAB11:    if (t12 < 2U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t13 = (t1 + t12);
    t14 = (t9 + t12);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB9;

LAB13:    t12 = (t12 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(142, ng0);
    t14 = (t0 + 8815);
    t16 = (t0 + 5472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 7U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB16:    t12 = 0;

LAB19:    if (t12 < 2U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t10 = (t1 + t12);
    t13 = (t5 + t12);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB17;

LAB21:    t12 = (t12 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(144, ng0);
    t14 = (t0 + 8824);
    t16 = (t0 + 5472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 7U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB24:    t12 = 0;

LAB27:    if (t12 < 2U)
        goto LAB28;
    else
        goto LAB26;

LAB28:    t10 = (t1 + t12);
    t13 = (t5 + t12);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB25;

LAB29:    t12 = (t12 + 1);
    goto LAB27;

LAB30:    xsi_set_current_line(146, ng0);
    t14 = (t0 + 8834);
    t16 = (t0 + 5472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 7U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB32:    t12 = 0;

LAB35:    if (t12 < 3U)
        goto LAB36;
    else
        goto LAB34;

LAB36:    t10 = (t1 + t12);
    t13 = (t5 + t12);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB33;

LAB37:    t12 = (t12 + 1);
    goto LAB35;

LAB38:    xsi_set_current_line(148, ng0);
    t14 = (t0 + 8844);
    t16 = (t0 + 5472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 7U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB40:    t12 = 0;

LAB43:    if (t12 < 3U)
        goto LAB44;
    else
        goto LAB42;

LAB44:    t10 = (t1 + t12);
    t13 = (t5 + t12);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB41;

LAB45:    t12 = (t12 + 1);
    goto LAB43;

LAB46:    xsi_set_current_line(150, ng0);
    t14 = (t0 + 8854);
    t16 = (t0 + 5472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 7U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB48:    t12 = 0;

LAB51:    if (t12 < 3U)
        goto LAB52;
    else
        goto LAB50;

LAB52:    t10 = (t1 + t12);
    t13 = (t5 + t12);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB49;

LAB53:    t12 = (t12 + 1);
    goto LAB51;

LAB54:    xsi_set_current_line(152, ng0);
    t14 = (t0 + 8864);
    t16 = (t0 + 5472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 7U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB56:    t12 = 0;

LAB59:    if (t12 < 3U)
        goto LAB60;
    else
        goto LAB58;

LAB60:    t10 = (t1 + t12);
    t13 = (t5 + t12);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB57;

LAB61:    t12 = (t12 + 1);
    goto LAB59;

LAB62:    xsi_set_current_line(154, ng0);
    t14 = (t0 + 8875);
    t16 = (t0 + 5472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 7U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB64:    t12 = 0;

LAB67:    if (t12 < 4U)
        goto LAB68;
    else
        goto LAB66;

LAB68:    t10 = (t1 + t12);
    t13 = (t5 + t12);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB65;

LAB69:    t12 = (t12 + 1);
    goto LAB67;

LAB70:    xsi_set_current_line(156, ng0);
    t14 = (t0 + 8886);
    t16 = (t0 + 5472);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 7U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB72:    t12 = 0;

LAB75:    if (t12 < 4U)
        goto LAB76;
    else
        goto LAB74;

LAB76:    t10 = (t1 + t12);
    t13 = (t5 + t12);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB73;

LAB77:    t12 = (t12 + 1);
    goto LAB75;

}


extern void work_a_0527178256_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0527178256_3212880686_p_0,(void *)work_a_0527178256_3212880686_p_1,(void *)work_a_0527178256_3212880686_p_2,(void *)work_a_0527178256_3212880686_p_3};
	xsi_register_didat("work_a_0527178256_3212880686", "isim/simulate_isim_beh.exe.sim/work/a_0527178256_3212880686.didat");
	xsi_register_executes(pe);
}
