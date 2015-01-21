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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_3156740924_4150518722_3488435398_init();
    simprim_a_0314276563_2431929443_3450598047_init();
    simprim_a_0314276563_2431929443_3399637571_init();
    simprim_a_0314276563_2431929443_1575702512_init();
    simprim_a_0314276563_2431929443_1467310842_init();
    simprim_a_0314276563_2431929443_3370443802_init();
    simprim_a_0314276563_2431929443_3374747181_init();
    simprim_a_0314276563_2431929443_3429472424_init();
    simprim_a_0314276563_2431929443_3459196657_init();
    simprim_a_0314276563_2431929443_1546200519_init();
    simprim_a_0314276563_2431929443_3113191758_init();
    simprim_a_0314276563_2431929443_3092112249_init();
    simprim_a_0314276563_2431929443_2234370761_init();
    simprim_a_0314276563_2431929443_2230296830_init();
    simprim_a_0314276563_2431929443_3488435398_init();
    simprim_a_3936907874_4055128042_3113191758_init();
    simprim_a_1402405708_1957906245_3113191758_init();
    simprim_a_2798491816_1957906245_3113191758_init();
    simprim_a_2976863235_1957906245_3092112249_init();
    simprim_a_4021053430_1957906245_2234370761_init();
    simprim_a_3042382073_1957906245_2234370761_init();
    simprim_a_2818321423_1957906245_2230296830_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_0822590248_0632001823_init();
    work_a_2955627477_2372691052_init();


    xsi_register_tops("work_a_2955627477_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}
