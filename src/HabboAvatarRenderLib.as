﻿package 
{
    import mx.core.SimpleApplication;
    import com.sulake.bootstrap.AvatarRenderManagerBootstrap;
    import com.sulake.iid.IIDAvatarRenderManager;

    public class HabboAvatarRenderLib extends SimpleApplication 
    {
        public static var requiredClasses:Array = new Array(AvatarRenderManagerBootstrap, IIDAvatarRenderManager);
        public static var manifest:Class = _Str_819;
        public static var user_typing_png:Class = _Str_634;
        public static var user_typing_small_png:Class = _Str_628;
        public static var user_muted_png:Class = _Str_633;
        public static var user_muted_small_png:Class = _Str_629;
        public static var user_blowkiss_png:Class = _Str_604;
        public static var user_blowkiss_small_png:Class = _Str_624;
        public static var user_guide_bubble_png:Class = _Str_601;
        public static var user_guide_requester_bubble_png:Class = _Str_630;
        public static var user_idle_left_1_png:Class = HabboAvatarRenderLib_user_idle_left_1_png;
        public static var user_idle_left_2_png:Class = HabboAvatarRenderLib_user_idle_left_2_png;
        public static var user_idle_left_1_small_png:Class = HabboAvatarRenderLib_user_idle_left_1_small_png;
        public static var user_idle_left_2_small_png:Class = HabboAvatarRenderLib_user_idle_left_2_small_png;
        public static var user_idle_right_1_png:Class = HabboAvatarRenderLib_user_idle_right_1_png;
        public static var user_idle_right_2_png:Class = HabboAvatarRenderLib_user_idle_right_2_png;
        public static var user_idle_right_1_small_png:Class = HabboAvatarRenderLib_user_idle_right_1_small_png;
        public static var user_idle_right_2_small_png:Class = HabboAvatarRenderLib_user_idle_right_2_small_png;
        public static var number_1_png:Class = HabboAvatarRenderLib_number_1_png;
        public static var number_2_png:Class = HabboAvatarRenderLib_number_2_png;
        public static var number_3_png:Class = HabboAvatarRenderLib_number_3_png;
        public static var number_4_png:Class = HabboAvatarRenderLib_number_4_png;
        public static var number_5_png:Class = HabboAvatarRenderLib_number_5_png;
        public static var number_1_small_png:Class = HabboAvatarRenderLib_number_1_small_png;
        public static var number_2_small_png:Class = HabboAvatarRenderLib_number_2_small_png;
        public static var number_3_small_png:Class = HabboAvatarRenderLib_number_3_small_png;
        public static var number_4_small_png:Class = HabboAvatarRenderLib_number_4_small_png;
        public static var number_5_small_png:Class = HabboAvatarRenderLib_number_5_small_png;
        public static var pet_experience_bubble_png:Class = _Str_615;
        public static var action_offset_lay:Class = _Str_769;
        public static var action_offset_swim:Class = _Str_956;
        public static var HabboAvatarAnimation:Class = _Str_773;
        public static var HabboAvatarFigure:Class = _Str_984;
        public static var HabboAvatarGeometry:Class = _Str_854;
        public static var HabboAvatarPartSets:Class = _Str_669;
        public static var h_std_lg_1007_2_0:Class = HabboAvatarRenderLib_h_std_lg_1007_2_0;
        public static var h_std_lg_2182_2_0:Class = HabboAvatarRenderLib_h_std_lg_2182_2_0;
        public static var h_std_sh_2178_2_0:Class = HabboAvatarRenderLib_h_std_sh_2178_2_0;
        public static var h_std_sh_8_2_0:Class = HabboAvatarRenderLib_h_std_sh_8_2_0;
        public static var h_std_ey_9_2_0:Class = HabboAvatarRenderLib_h_std_ey_9_2_0;
        public static var h_std_lg_3_2_0:Class = HabboAvatarRenderLib_h_std_lg_3_2_0;
        public static var h_std_hr_1_2_0:Class = HabboAvatarRenderLib_h_std_hr_1_2_0;
        public static var h_std_ls_1_2_0:Class = HabboAvatarRenderLib_h_std_ls_1_2_0;
        public static var h_std_lg_201_2_0:Class = HabboAvatarRenderLib_h_std_lg_201_2_0;
        public static var h_std_sh_4_2_0:Class = HabboAvatarRenderLib_h_std_sh_4_2_0;
        public static var h_std_rh_1_2_0:Class = _Str_626;
        public static var h_std_sh_7_2_0:Class = HabboAvatarRenderLib_h_std_sh_7_2_0;
        public static var h_std_ey_4_2_0:Class = HabboAvatarRenderLib_h_std_ey_4_2_0;
        public static var h_std_ch_18_2_0:Class = HabboAvatarRenderLib_h_std_ch_18_2_0;
        public static var h_std_sh_2180_2_0:Class = HabboAvatarRenderLib_h_std_sh_2180_2_0;
        public static var h_std_ey_6_2_0:Class = HabboAvatarRenderLib_h_std_ey_6_2_0;
        public static var h_std_hr_26_2_0:Class = HabboAvatarRenderLib_h_std_hr_26_2_0;
        public static var h_std_rs_1_2_0:Class = HabboAvatarRenderLib_h_std_rs_1_2_0;
        public static var h_std_hrb_26_2_0:Class = HabboAvatarRenderLib_h_std_hrb_26_2_0;
        public static var h_std_lg_7_2_0:Class = HabboAvatarRenderLib_h_std_lg_7_2_0;
        public static var h_std_lg_2181_2_0:Class = HabboAvatarRenderLib_h_std_lg_2181_2_0;
        public static var h_std_lh_1_2_0:Class = _Str_595;
        public static var h_std_fc_1_2_0:Class = _Str_620;
        public static var h_std_sh_1_2_0:Class = HabboAvatarRenderLib_h_std_sh_1_2_0;
        public static var h_std_sh_2179_2_0:Class = HabboAvatarRenderLib_h_std_sh_2179_2_0;
        public static var h_std_hd_1_2_0:Class = HabboAvatarRenderLib_h_std_hd_1_2_0;
        public static var h_std_ey_1_2_0:Class = HabboAvatarRenderLib_h_std_ey_1_2_0;
        public static var h_std_hrb_11_2_0:Class = HabboAvatarRenderLib_h_std_hrb_11_2_0;
        public static var h_std_ey_8_2_0:Class = HabboAvatarRenderLib_h_std_ey_8_2_0;
        public static var h_std_ch_207_2_0:Class = HabboAvatarRenderLib_h_std_ch_207_2_0;
        public static var h_std_ch_100_2_0:Class = HabboAvatarRenderLib_h_std_ch_100_2_0;
        public static var h_std_hr_4_2_0:Class = HabboAvatarRenderLib_h_std_hr_4_2_0;
        public static var h_std_hrb_4_2_0:Class = HabboAvatarRenderLib_h_std_hrb_4_2_0;
        public static var h_std_hr_6_2_0:Class = HabboAvatarRenderLib_h_std_hr_6_2_0;
        public static var h_std_hrb_6_2_0:Class = HabboAvatarRenderLib_h_std_hrb_6_2_0;
        public static var h_std_hrb_33_2_0:Class = HabboAvatarRenderLib_h_std_hrb_33_2_0;
        public static var h_std_ch_4_2_0:Class = HabboAvatarRenderLib_h_std_ch_4_2_0;
        public static var h_std_hd_2_2_0:Class = HabboAvatarRenderLib_h_std_hd_2_2_0;
        public static var h_std_ch_1207_2_0:Class = HabboAvatarRenderLib_h_std_ch_1207_2_0;
        public static var h_std_lg_6_2_0:Class = HabboAvatarRenderLib_h_std_lg_6_2_0;
        public static var h_std_ch_1100_2_0:Class = HabboAvatarRenderLib_h_std_ch_1100_2_0;
        public static var h_std_lg_2_2_0:Class = HabboAvatarRenderLib_h_std_lg_2_2_0;
        public static var h_std_ey_2_2_0:Class = HabboAvatarRenderLib_h_std_ey_2_2_0;
        public static var h_std_hr_24_2_0:Class = HabboAvatarRenderLib_h_std_hr_24_2_0;
        public static var h_std_sh_6_2_0:Class = HabboAvatarRenderLib_h_std_sh_6_2_0;
        public static var h_std_hrb_24_2_0:Class = HabboAvatarRenderLib_h_std_hrb_24_2_0;
        public static var h_std_ha_15_2_0:Class = HabboAvatarRenderLib_h_std_ha_15_2_0;
        public static var h_std_ch_101_2_0:Class = HabboAvatarRenderLib_h_std_ch_101_2_0;
        public static var h_std_rs_2_2_0:Class = HabboAvatarRenderLib_h_std_rs_2_2_0;
        public static var h_std_hr_11_2_0:Class = HabboAvatarRenderLib_h_std_hr_11_2_0;
        public static var h_std_ch_10_2_0:Class = HabboAvatarRenderLib_h_std_ch_10_2_0;
        public static var h_std_ey_7_2_0:Class = HabboAvatarRenderLib_h_std_ey_7_2_0;
        public static var h_std_lg_2183_2_0:Class = HabboAvatarRenderLib_h_std_lg_2183_2_0;
        public static var h_std_ls_2_2_0:Class = HabboAvatarRenderLib_h_std_ls_2_2_0;
        public static var h_std_ea_6_2_0:Class = _Str_627;
        public static var h_std_fa_12_2_0:Class = _Str_602;
        public static var h_std_hr_33_2_0:Class = HabboAvatarRenderLib_h_std_hr_33_2_0;
        public static var h_std_ch_1101_2_0:Class = HabboAvatarRenderLib_h_std_ch_1101_2_0;
        public static var h_std_ha_3_2_0:Class = HabboAvatarRenderLib_h_std_ha_3_2_0;
        public static var h_std_ch_1_2_0:Class = HabboAvatarRenderLib_h_std_ch_1_2_0;
        public static var h_std_bd_1_2_0:Class = _Str_606;
        public static var h_std_hrb_1_2_0:Class = HabboAvatarRenderLib_h_std_hrb_1_2_0;
        public static var h_std_hr_36_2_0:Class = HabboAvatarRenderLib_h_std_hr_36_2_0;
        public static var h_std_hrb_36_2_0:Class = HabboAvatarRenderLib_h_std_hrb_36_2_0;
        public static var h_std_hr_16_2_0:Class = HabboAvatarRenderLib_h_std_hr_16_2_0;
        public static var h_std_hrb_16_2_0:Class = HabboAvatarRenderLib_h_std_hrb_16_2_0;
        public static var h_std_hr_32_2_0:Class = HabboAvatarRenderLib_h_std_hr_32_2_0;
        public static var h_std_hrb_32_2_0:Class = HabboAvatarRenderLib_h_std_hrb_32_2_0;
        public static var h_std_hr_35_2_0:Class = HabboAvatarRenderLib_h_std_hr_35_2_0;
        public static var h_std_hrb_35_2_0:Class = HabboAvatarRenderLib_h_std_hrb_35_2_0;
        public static var h_std_hr_200_2_0:Class = HabboAvatarRenderLib_h_std_hr_200_2_0;
        public static var h_std_hrb_200_2_0:Class = HabboAvatarRenderLib_h_std_hrb_200_2_0;
        public static var h_std_ey_5_2_0:Class = HabboAvatarRenderLib_h_std_ey_5_2_0;
        public static var h_std_ey_3_2_0:Class = HabboAvatarRenderLib_h_std_ey_3_2_0;
        public static var h_std_ch_5_2_0:Class = HabboAvatarRenderLib_h_std_ch_5_2_0;
        public static var h_std_ch_202_2_0:Class = HabboAvatarRenderLib_h_std_ch_202_2_0;
        public static var h_std_ch_1202_2_0:Class = HabboAvatarRenderLib_h_std_ch_1202_2_0;
        public static var h_std_ch_16_2_0:Class = HabboAvatarRenderLib_h_std_ch_16_2_0;
        public static var h_std_ch_15_2_0:Class = HabboAvatarRenderLib_h_std_ch_15_2_0;
        public static var h_std_ch_2_2_0:Class = HabboAvatarRenderLib_h_std_ch_2_2_0;
        public static var h_std_ch_201_2_0:Class = HabboAvatarRenderLib_h_std_ch_201_2_0;
        public static var h_std_lg_1_2_0:Class = HabboAvatarRenderLib_h_std_lg_1_2_0;
        public static var h_std_lg_4_2_0:Class = HabboAvatarRenderLib_h_std_lg_4_2_0;
        public static var h_std_lg_5_2_0:Class = HabboAvatarRenderLib_h_std_lg_5_2_0;
        public static var h_std_sh_3_2_0:Class = HabboAvatarRenderLib_h_std_sh_3_2_0;
        public static var h_std_sh_5_2_0:Class = HabboAvatarRenderLib_h_std_sh_5_2_0;
        public static var h_std_ls_2050_2_0:Class = HabboAvatarRenderLib_h_std_ls_2050_2_0;
        public static var h_std_ch_2050_2_0:Class = HabboAvatarRenderLib_h_std_ch_2050_2_0;
        public static var h_std_rs_2050_2_0:Class = HabboAvatarRenderLib_h_std_rs_2050_2_0;
        public static var h_std_ch_2165_2_0:Class = HabboAvatarRenderLib_h_std_ch_2165_2_0;
        public static var h_std_ls_2165_2_0:Class = HabboAvatarRenderLib_h_std_ls_2165_2_0;
        public static var h_std_rs_2165_2_0:Class = HabboAvatarRenderLib_h_std_rs_2165_2_0;
        public static var h_std_ch_2166_2_0:Class = HabboAvatarRenderLib_h_std_ch_2166_2_0;
        public static var h_std_ls_2166_2_0:Class = HabboAvatarRenderLib_h_std_ls_2166_2_0;
        public static var h_std_rs_2166_2_0:Class = HabboAvatarRenderLib_h_std_rs_2166_2_0;
        public static var h_std_lg_2494_2_0:Class = HabboAvatarRenderLib_h_std_lg_2494_2_0;
        public static var h_std_sh_2111_2_0:Class = HabboAvatarRenderLib_h_std_sh_2111_2_0;
        public static var h_std_sh_2112_2_0:Class = HabboAvatarRenderLib_h_std_sh_2112_2_0;
        public static var h_std_lg_2037_2_0:Class = HabboAvatarRenderLib_h_std_lg_2037_2_0;
    }
}