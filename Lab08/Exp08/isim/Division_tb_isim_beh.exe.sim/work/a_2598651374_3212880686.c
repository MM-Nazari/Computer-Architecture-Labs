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
static const char *ng0 = "X:/Xilinx/Memari/Exp08/Division.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2598651374_3212880686_p_0(char *t0)
{
    char t11[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    int t18;
    unsigned int t19;
    unsigned char t20;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12};

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4360);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(63, ng0);
    t4 = (t0 + 7311);
    t6 = (t0 + 4456);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 7315);
    t4 = (t0 + 4520);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4584);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 7212U);
    t7 = (t0 + 7228U);
    t1 = xsi_base_array_concat(t1, t11, t5, (char)97, t2, t6, (char)97, t4, t7, (char)101);
    t12 = (4U + 8U);
    t3 = (12U != t12);
    if (t3 == 1)
        goto LAB13;

LAB14:    t8 = (t0 + 4712);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 12U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t12 = (11 - 10);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t17 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 10;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t18 = (0 - 10);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t19;
    t4 = xsi_base_array_concat(t4, t11, t5, (char)97, t1, t17, (char)99, (unsigned char)2, (char)101);
    t19 = (11U + 1U);
    t3 = (12U != t19);
    if (t3 == 1)
        goto LAB15;

LAB16:    t7 = (t0 + 4712);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t4, 12U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t12 = (11 - 11);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t4 = (t0 + 4520);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t12 = (11 - 7);
    t15 = (t12 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t4 = (t0 + 4584);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7212U);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 7132U);
    t6 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t11, t2, t1, t5, t4);
    t7 = (t0 + 4520);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t6, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t18 = (3 - 3);
    t12 = (t18 * -1);
    t15 = (1U * t12);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t20 = (t3 == (unsigned char)3);
    if (t20 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 7U, 1, 0LL);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);

LAB18:    goto LAB2;

LAB9:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7212U);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 7132U);
    t6 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t11, t2, t1, t5, t4);
    t7 = (t0 + 4520);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t6, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 7244U);
    t4 = (t0 + 7319);
    t6 = (t17 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t18 = (3 - 0);
    t12 = (t18 * 1);
    t12 = (t12 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t12;
    t7 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t11, t2, t1, t4, t17);
    t8 = (t0 + 4456);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB11:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 7244U);
    t4 = (t0 + 7323);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t18 = (3 - 0);
    t12 = (t18 * 1);
    t12 = (t12 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t12;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t11);
    if (t3 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB21:    goto LAB2;

LAB12:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4776);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4840);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB13:    xsi_size_not_matching(12U, t12, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(12U, t19, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 4584);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t4, 7U, 1, 0LL);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_set_current_line(106, ng0);
    t7 = (t0 + 4648);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)9;
    xsi_driver_first_trans_fast(t7);
    goto LAB21;

}

static void work_a_2598651374_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4376);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(123, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 4904);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}


extern void work_a_2598651374_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2598651374_3212880686_p_0,(void *)work_a_2598651374_3212880686_p_1};
	xsi_register_didat("work_a_2598651374_3212880686", "isim/Division_tb_isim_beh.exe.sim/work/a_2598651374_3212880686.didat");
	xsi_register_executes(pe);
}
