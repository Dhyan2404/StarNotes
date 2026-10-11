package com.onyx.galaxy.note.settings.data;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b3\n\u0002\u0010\b\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bC\u0010DR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0004R\u0014\u0010\u0019\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0004R\u0014\u0010\u001a\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0004R\u0014\u0010\u001b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0004R\u0014\u0010\u001c\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0004R\u0014\u0010\u001d\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0004R\u0014\u0010\u001e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0004R\u0014\u0010\u001f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0004R\u0014\u0010 \u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u0004R\u0014\u0010!\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0004R\u0014\u0010\"\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0004R\u0014\u0010#\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0004R\u0014\u0010$\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0004R\u0014\u0010%\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\u0004R\u0014\u0010&\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u0004R\u0014\u0010'\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u0004R\u0014\u0010(\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u0004R\u0014\u0010)\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\u0004R\u0017\u0010-\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010,R\"\u00102\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0004\u001a\u0004\b/\u0010,\"\u0004\b0\u00101R\u0017\u00105\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b3\u0010\u0004\u001a\u0004\b4\u0010,R\u0014\u00107\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u00109\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u00108R\u0014\u0010:\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\b:\u00108R\u0014\u0010;\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u00108R\u0014\u0010<\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\b<\u00108R\u0014\u0010=\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\b=\u00108R\u0014\u0010>\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\b>\u00108R\u0014\u0010?\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\b?\u00108R\u0014\u0010@\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\b@\u00108R\u0014\u0010A\u001a\u0002068\u0006X\u0086T¢\u0006\u0006\n\u0004\bA\u00108R\u0014\u0010B\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bB\u0010\u0004¨\u0006E"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/SettingsConfigConst;", "", "", "SETTING_DOC_QUICKLY_ORIENTATION", Constants.STRING_SIG, "SETTING_DOC_QUICKLY_PAGE_WIDTH", "SETTING_DOC_QUICKLY_PAGE_HEIGHT", "SETTING_DOC_QUICKLY_TEMPLATE_ID", "SETTING_DOC_QUICKLY_COVER_ID", "SETTING_DOC_QUICKLY_TEMPLATE_ARGS", "SETTING_DOC_QUICKLY_COVER_ARGS", "SETTINGS_DOC_PAGE_MOVES_FREELY", "SETTINGS_DOC_SLIDE_TO_ADD", "SETTINGS_DOC_AUTO_APPEND_PAGE", "SETTINGS_DOC_PRONUNCIATION", "SETTINGS_FONT_CHECKED_DOCUMENT_LIST", "SETTINGS_TOOLS_GRAPH_FILLING", "SETTINGS_PEN_BOX_LOCATION", "SETTINGS_ANNOTATION_MENU", "SETTINGS_SCALE_COLLECTION", "SETTINGS_SCALE_COLLECTION_COUNT", "SETTINGS_CONTAINS_COVER", "SETTINGS_COUNTER_WINDOW_LOCATION", "SETTINGS_COUNTER_LAST_USED_PAGE", "SETTINGS_COUNTER_HAS_COUNT_DOWN_RECORD", "SETTINGS_COUNTER_HAS_COUNT_UP_RECORD", "SETTINGS_COUNTER_ALARM_AFTER_COUNT_DOWN_ONE", "SETTINGS_COUNTER_ALARM_AFTER_COUNT_DOWN_DONE", "SETTINGS_COUNTER_ALARM_VOLUME", "SETTINGS_INK_BEAUTIFY_ENABLED", "SETTINGS_INK_BEAUTIFY_TYPESET_ENABLED", "SETTINGS_HWR_LANG_LANG", "SETTINGS_BACKGROUND_FTS_INDEX_ENABLED", "SETTINGS_HWR_SEARCH_ENABLED", "SETTINGS_SMART_HWR_ENABLED", "SETTINGS_AI_SEARCH_CONFIRMED", "SETTINGS_USER_SEARCH_SCOPE", "INK_BEAUTIFY_TYPESET_PARAM_EXPAND", "SETTINGS_MORE_KEEP_SCREEN_ON", "SETTINGS_MORE_LONG_PRESS_OF_PAGE_MENU", "STYLUS_FUNCTION_TIPS", "SETTINGS_MORE_HIDE_STATUS_BAR", "a", "getSETTINGS_MORE_STAR_NOTE_WEBSITE", "()Ljava/lang/String;", "SETTINGS_MORE_STAR_NOTE_WEBSITE", "b", "getSETTINGS_SERVICE_CONTACT", "setSETTINGS_SERVICE_CONTACT", "(Ljava/lang/String;)V", "SETTINGS_SERVICE_CONTACT", "c", "getSETTINGS_MORE_ICP_WEBSITE", "SETTINGS_MORE_ICP_WEBSITE", "", "STYLUS_KEY_PRIMARY_KEY_CLICK", "I", "STYLUS_KEY_SECONDARY_KEY_CLICK", "STYLUS_KEY_STYLUS_DOUBLE_CLICK", "STYLUS_KEY_LONG_PRESS", "FINGER_KEY_TWO_FINGER_CLICK", "FINGER_KEY_THREE_FINGER_CLICK", "FINGER_KEY_DOUBLE_CLICK", "STYLUS_KEY_PINCH", "STYLUS_KEY_SLIDE_UP", "STYLUS_KEY_SLIDE_DOWN", "KEY_EYES_COMFORT_CONFIG", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SettingsConfigConst {
    public static final int FINGER_KEY_DOUBLE_CLICK = 6;
    public static final int FINGER_KEY_THREE_FINGER_CLICK = 5;
    public static final int FINGER_KEY_TWO_FINGER_CLICK = 4;

    @NotNull
    public static final String INK_BEAUTIFY_TYPESET_PARAM_EXPAND = "ink_beautify_typeset_param_expand";

    @NotNull
    public static final SettingsConfigConst INSTANCE = new SettingsConfigConst();

    @NotNull
    public static final String KEY_EYES_COMFORT_CONFIG = "eyes_comfort_config";

    @NotNull
    public static final String SETTINGS_AI_SEARCH_CONFIRMED = "ai_search_confirmed";

    @NotNull
    public static final String SETTINGS_ANNOTATION_MENU = "settings_annotation_menu";

    @NotNull
    public static final String SETTINGS_BACKGROUND_FTS_INDEX_ENABLED = "background_fts_index_enabled";

    @NotNull
    public static final String SETTINGS_CONTAINS_COVER = "settings_contains_cover";

    @NotNull
    public static final String SETTINGS_COUNTER_ALARM_AFTER_COUNT_DOWN_DONE = "settings_counter_alarm_after_count_down_all";

    @NotNull
    public static final String SETTINGS_COUNTER_ALARM_AFTER_COUNT_DOWN_ONE = "settings_counter_alarm_after_count_down_one";

    @NotNull
    public static final String SETTINGS_COUNTER_ALARM_VOLUME = "settings_counter_alarm_volume";

    @NotNull
    public static final String SETTINGS_COUNTER_HAS_COUNT_DOWN_RECORD = "settings_counter_has_count_down_record";

    @NotNull
    public static final String SETTINGS_COUNTER_HAS_COUNT_UP_RECORD = "settings_counter_has_count_up_record";

    @NotNull
    public static final String SETTINGS_COUNTER_LAST_USED_PAGE = "settings_counter_last_used_page";

    @NotNull
    public static final String SETTINGS_COUNTER_WINDOW_LOCATION = "settings_counter_window_location";

    @NotNull
    public static final String SETTINGS_DOC_AUTO_APPEND_PAGE = "settings_doc_auto_append_page";

    @NotNull
    public static final String SETTINGS_DOC_PAGE_MOVES_FREELY = "enable_free_move_paper";

    @NotNull
    public static final String SETTINGS_DOC_PRONUNCIATION = "settings_doc_pronunciation";

    @NotNull
    public static final String SETTINGS_DOC_SLIDE_TO_ADD = "settings_doc_slide_to_add";

    @NotNull
    public static final String SETTINGS_FONT_CHECKED_DOCUMENT_LIST = "settings_font_checked_document_list";

    @NotNull
    public static final String SETTINGS_HWR_LANG_LANG = "hwr_last_lang";

    @NotNull
    public static final String SETTINGS_HWR_SEARCH_ENABLED = "hwr_search_enabled";

    @NotNull
    public static final String SETTINGS_INK_BEAUTIFY_ENABLED = "settings_ink_beautify_enabled";

    @NotNull
    public static final String SETTINGS_INK_BEAUTIFY_TYPESET_ENABLED = "settings_ink_beautify_typeset_enabled";

    @NotNull
    public static final String SETTINGS_MORE_HIDE_STATUS_BAR = "settings_more_hide_status_bar";

    @NotNull
    public static final String SETTINGS_MORE_KEEP_SCREEN_ON = "settings_more_keep_screen_on";

    @NotNull
    public static final String SETTINGS_MORE_LONG_PRESS_OF_PAGE_MENU = "settings_more_long_press_of_page_menu";

    @NotNull
    public static final String SETTINGS_PEN_BOX_LOCATION = "settings_pen_box_location";

    @NotNull
    public static final String SETTINGS_SCALE_COLLECTION = "settings_scale_collection";

    @NotNull
    public static final String SETTINGS_SCALE_COLLECTION_COUNT = "settings_scale_collection_count";

    @NotNull
    public static final String SETTINGS_SMART_HWR_ENABLED = "smart_hwr_enabled";

    @NotNull
    public static final String SETTINGS_TOOLS_GRAPH_FILLING = "settings_tools_graph_filling";

    @NotNull
    public static final String SETTINGS_USER_SEARCH_SCOPE = "user_search_scope";

    @NotNull
    public static final String SETTING_DOC_QUICKLY_COVER_ARGS = "setting_doc_quickly_cover_args";

    @NotNull
    public static final String SETTING_DOC_QUICKLY_COVER_ID = "setting_doc_quickly_cover_id";

    @NotNull
    public static final String SETTING_DOC_QUICKLY_ORIENTATION = "setting_doc_quickly_orientation";

    @NotNull
    public static final String SETTING_DOC_QUICKLY_PAGE_HEIGHT = "setting_doc_quickly_page_height";

    @NotNull
    public static final String SETTING_DOC_QUICKLY_PAGE_WIDTH = "setting_doc_quickly_page_width";

    @NotNull
    public static final String SETTING_DOC_QUICKLY_TEMPLATE_ARGS = "setting_doc_quickly_template_args";

    @NotNull
    public static final String SETTING_DOC_QUICKLY_TEMPLATE_ID = "setting_doc_quickly_template_id";

    @NotNull
    public static final String STYLUS_FUNCTION_TIPS = "stylus_function_tips";
    public static final int STYLUS_KEY_LONG_PRESS = 3;
    public static final int STYLUS_KEY_PINCH = 7;
    public static final int STYLUS_KEY_PRIMARY_KEY_CLICK = 0;
    public static final int STYLUS_KEY_SECONDARY_KEY_CLICK = 1;
    public static final int STYLUS_KEY_SLIDE_DOWN = 9;
    public static final int STYLUS_KEY_SLIDE_UP = 8;
    public static final int STYLUS_KEY_STYLUS_DOUBLE_CLICK = 2;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String SETTINGS_MORE_STAR_NOTE_WEBSITE;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static String SETTINGS_SERVICE_CONTACT;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String SETTINGS_MORE_ICP_WEBSITE;

    static {
        ResManager resManager = ResManager.INSTANCE;
        SETTINGS_MORE_STAR_NOTE_WEBSITE = resManager.getStringSafely(C10651R.string.star_note_website);
        SETTINGS_SERVICE_CONTACT = resManager.getStringSafely(C10651R.string.service_contact);
        SETTINGS_MORE_ICP_WEBSITE = resManager.getStringSafely(C10651R.string.icp_website);
    }

    @NotNull
    public final String getSETTINGS_MORE_ICP_WEBSITE() {
        return SETTINGS_MORE_ICP_WEBSITE;
    }

    @NotNull
    public final String getSETTINGS_MORE_STAR_NOTE_WEBSITE() {
        return SETTINGS_MORE_STAR_NOTE_WEBSITE;
    }

    @NotNull
    public final String getSETTINGS_SERVICE_CONTACT() {
        return SETTINGS_SERVICE_CONTACT;
    }

    public final void setSETTINGS_SERVICE_CONTACT(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        SETTINGS_SERVICE_CONTACT = str;
    }
}
