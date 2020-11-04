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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_00000000001358910285_2785529222_init();
    xilinxcorelib_ver_m_00000000001358910285_2766445512_init();
    xilinxcorelib_ver_m_00000000001687936702_4016793922_init();
    xilinxcorelib_ver_m_00000000000277421008_2667398684_init();
    xilinxcorelib_ver_m_00000000001603977570_1141355265_init();
    work_m_00000000003617559063_0830272640_init();
    unisims_ver_m_00000000001946988858_2297623829_init();
    unisims_ver_m_00000000004277362592_0142776733_init();
    unisims_ver_m_00000000003266096158_2593380106_init();
    work_m_00000000002636184189_2964965119_init();
    work_m_00000000000126182470_0286164271_init();
    work_m_00000000003585976403_1949178628_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003585976403_1949178628");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
