﻿package 
{
    import mx.core.SimpleApplication;
    import com.sulake.bootstrap.HabboFriendBarBootstrap;
    import com.sulake.iid.IIDHabboFriendBar;
	import snowwar.assets.PlaySnowstormTabXML;
	import snowwar.assets.PlaySnowstormIcon;

    public class HabboFriendBarCom extends SimpleApplication 
    {
        public static var manifest:Class = _Str_13284;
        public static var bar_xml:Class = _Str_12993;
        public static var new_bar_xml:Class = _Str_15565;
        public static var entity_xml:Class = _Str_14839;
        public static var new_friend_entity_xml:Class = _Str_14326;
        public static var add_friends_tab_xml:Class = _Str_15892;
        public static var friend_requests_tab_xml:Class = _Str_14045;
        public static var friend_request_tab_xml:Class = _Str_15266;
        public static var toggle_xml:Class = _Str_13523;
        public static var facebook_piece_xml:Class = _Str_15121;
        public static var controls_piece_xml:Class = _Str_14726;
        public static var new_controls_piece_xml:Class = _Str_15077;
        public static var message_piece_xml:Class = _Str_15591;
        public static var search_friends_tab_xml:Class = _Str_12858;
        public static var new_search_friends_tab_xml:Class = _Str_14159;
        public static var all_friends_tab_xml:Class = _Str_13304;
        public static var new_all_friends_tab_xml:Class = _Str_15758;
        public static var new_open_messenger_tab_xml:Class = _Str_14982;
        public static var ach_notification_icon_png:Class = _Str_13325;
        public static var plus_friend_icon_png:Class = _Str_15109;
        public static var add_friends_icon_png:Class = _Str_14088;
        public static var find_friends_icon_png:Class = _Str_13747;
        public static var fb_icon_small_png:Class = _Str_13789;
        public static var friends_icon_png:Class = _Str_12611;
        public static var icon_friendlist_png:Class = _Str_13289;
        public static var icon_friendlist_notify_0_png:Class = HabboFriendBarCom_icon_friendlist_notify_0_png;
        public static var icon_friendlist_notify_1_png:Class = HabboFriendBarCom_icon_friendlist_notify_1_png;
        public static var icon_friendlist_hover_0_png:Class = HabboFriendBarCom_icon_friendlist_hover_0_png;
        public static var icon_friendlist_hover_1_png:Class = HabboFriendBarCom_icon_friendlist_hover_1_png;
        public static var icon_friendlist_hover_2_png:Class = HabboFriendBarCom_icon_friendlist_hover_2_png;
        public static var icon_friendlist_hover_3_png:Class = HabboFriendBarCom_icon_friendlist_hover_3_png;
        public static var icon_messenger_png:Class = _Str_12836;
        public static var icon_messenger_notify_0_png:Class = HabboFriendBarCom_icon_messenger_notify_0_png;
        public static var icon_messenger_notify_1_png:Class = HabboFriendBarCom_icon_messenger_notify_1_png;
        public static var search_friends_icon_png:Class = _Str_14748;
        public static var all_friends_icon_png:Class = _Str_12861;
        public static var user_list_xml:Class = _Str_13253;
        public static var user_entry_xml:Class = _Str_13934;
        public static var competition_user_popup_xml:Class = _Str_15028;
        public static var on_duty_guide_user_popup_xml:Class = _Str_13044;
        public static var achievement_competition_prizes_xml:Class = _Str_15594;
        public static var avatar_image_xml:Class = _Str_13444;
        public static var community_goal_xml:Class = _Str_14356;
        public static var community_goal_voting_xml:Class = _Str_14354;
        public static var daily_quest_xml:Class = _Str_13616;
        public static var element_dailyquest_xml:Class = _Str_14424;
        public static var expiring_catalog_page_xml:Class = _Str_12771;
        public static var expiring_catalog_page_small_xml:Class = _Str_15361;
        public static var landing_view_generic_reception_xml:Class = _Str_14858;
        public static var catalog_promo_xml:Class = _Str_15244;
        public static var catalog_promo_small_xml:Class = _Str_14018;
        public static var campaign_promo_xml:Class = _Str_12814;
        public static var moving_object_xml:Class = _Str_12692;
        public static var moving_object_floating_xml:Class = _Str_14228;
        public static var next_ltd_available_xml:Class = _Str_13001;
        public static var safety_quiz_promo_xml:Class = _Str_15809;
        public static var citizenship_welcome_xml:Class = _Str_13349;
        public static var level_up_xml:Class = _Str_14454;
        public static var talent_track_xml:Class = _Str_12904;
        public static var track_promo_xml:Class = _Str_13950;
        public static var task_progress_dialog_xml:Class = _Str_14196;
        public static var tour_task_progress_dialog_xml:Class = _Str_13417;
        public static var landing_view_default_dynamic_layout_xml:Class = _Str_14134;
        public static var habbo_moderation_promo_xml:Class = _Str_12965;
        public static var habbo_talents_promo_xml:Class = _Str_13892;
        public static var habbo_way_promo_xml:Class = _Str_13655;
        public static var dynamic_widget_grid_xml:Class = _Str_14193;
        public static var pixel_removal_credit_promo_xml:Class = _Str_15739;
        public static var pixel_removal_promo_xml:Class = _Str_14128;
        public static var fast_food_game_promo_xml:Class = _Str_14961;
        public static var room_hopper_network_xml:Class = _Str_12702;
        public static var landing_view_jetset_xml:Class = _Str_13594;
        public static var generic_widget_xml:Class = _Str_15502;
        public static var widget_container_widget_xml:Class = _Str_15755;
        public static var element_bodytext_xml:Class = _Str_13351;
        public static var element_button_xml:Class = _Str_15414;
        public static var element_caption_xml:Class = _Str_14115;
        public static var element_image_xml:Class = _Str_13692;
        public static var element_link_xml:Class = _Str_14843;
        public static var element_spacing_xml:Class = _Str_13664;
        public static var element_subcaption_xml:Class = _Str_13285;
        public static var element_timer_xml:Class = _Str_15792;
        public static var element_title_xml:Class = _Str_14337;
        public static var element_rewardbadge_xml:Class = _Str_12802;
        public static var element_concurrentusersmeter_xml:Class = _Str_13734;
        public static var element_concurrentusersinfo_xml:Class = _Str_14689;
        public static var dynamic_widget_grid_separator_xml:Class = _Str_15701;
        public static var epic_popup_frame_xml:Class = _Str_14415;
        public static var landing_view_furnimatic_xml:Class = _Str_14923;
        public static var initialization_error_xml:Class = _Str_14921;
        public static var element_community_goal_score_xml:Class = _Str_14730;
        public static var promo_article_xml:Class = _Str_14166;
        public static var bonus_rare_promo_xml:Class = _Str_15570;
        public static var groupforum_thread_list_item_xml:Class = _Str_14678;
        public static var groupforum_forum_list_item_xml:Class = _Str_14966;
        public static var groupforum_main_view_xml:Class = _Str_14272;
        public static var groupforum_message_list_item_xml:Class = _Str_14940;
        public static var groupforum_compose_message_xml:Class = _Str_13940;
        public static var groupforum_forum_settings_xml:Class = _Str_13820;
        public static var play_snowstorm_tab_xml:Class = PlaySnowstormTabXML;
        public static var play_snowstorm_icon_png:Class = PlaySnowstormIcon;
        public static var requiredClasses:Array = new Array(HabboFriendBarBootstrap, IIDHabboFriendBar);
    }
}