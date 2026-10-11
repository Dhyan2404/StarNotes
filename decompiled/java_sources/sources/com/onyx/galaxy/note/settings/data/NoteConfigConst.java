package com.onyx.galaxy.note.settings.data;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b'\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\f\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0017\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b[\u0010\\R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0004R\u0014\u0010\u0019\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0004R\u0014\u0010\u001a\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0004R\u0014\u0010\u001b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0004R\u0014\u0010\u001c\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0004R\u0014\u0010\u001d\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0004R\u0014\u0010\u001e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0004R\u0014\u0010\u001f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0004R\u0014\u0010 \u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u0004R\u0014\u0010!\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0004R\u0014\u0010\"\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0004R\u0014\u0010#\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0004R\u0014\u0010$\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0004R\u0014\u0010%\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\u0004R\u0014\u0010&\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u0004R\u0014\u0010'\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u0004R\u0014\u0010(\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u0004R\u0014\u0010)\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\u0004R\u0014\u0010+\u001a\u00020*8\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010.\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00100\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u0010/R\u0014\u00101\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b1\u0010/R\u0014\u00102\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u0010/R\u0014\u00104\u001a\u0002038\u0006X\u0086T¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u00106\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b6\u0010/R\u0014\u00107\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b7\u0010/R\u0014\u00108\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b8\u0010\u0004R\u0014\u00109\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u0010\u0004R\u0014\u0010:\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b:\u0010\u0004R\u0014\u0010;\u001a\u00020*8\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u0010,R\u0014\u0010<\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b<\u0010/R\u0014\u0010=\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b=\u0010/R\u0014\u0010>\u001a\u00020-8\u0006X\u0086T¢\u0006\u0006\n\u0004\b>\u0010/R\u0014\u0010@\u001a\u00020?8\u0006X\u0086T¢\u0006\u0006\n\u0004\b@\u0010AR\u0017\u0010E\u001a\u00020-8\u0006¢\u0006\f\n\u0004\bB\u0010/\u001a\u0004\bC\u0010DR\u001d\u0010K\u001a\b\u0012\u0004\u0012\u00020-0F8\u0006¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\u0017\u0010N\u001a\u00020-8\u0006¢\u0006\f\n\u0004\bL\u0010/\u001a\u0004\bM\u0010DR\u001d\u0010Q\u001a\b\u0012\u0004\u0012\u00020-0F8\u0006¢\u0006\f\n\u0004\bO\u0010H\u001a\u0004\bP\u0010JR\u001d\u0010T\u001a\b\u0012\u0004\u0012\u00020-0F8\u0006¢\u0006\f\n\u0004\bR\u0010H\u001a\u0004\bS\u0010JR\u001d\u0010W\u001a\b\u0012\u0004\u0012\u00020-0F8\u0006¢\u0006\f\n\u0004\bU\u0010H\u001a\u0004\bV\u0010JR\u001d\u0010Z\u001a\b\u0012\u0004\u0012\u00020-0F8\u0006¢\u0006\f\n\u0004\bX\u0010H\u001a\u0004\bY\u0010J¨\u0006]"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;", "", "", NoteConfigConst.ONYX_NOTE_EDIT_CONFIG_SHAPE_TOOL_LIST_KEY, Constants.STRING_SIG, NoteConfigConst.ONYX_NOTE_EDIT_SELECT_SHAPE_TYPE, NoteConfigConst.ONYX_NOTE_EDIT_COLOR_INDEX, NoteConfigConst.ONYX_NOTE_EDIT_COLOR_ANNOTATION_INDEX, NoteConfigConst.ONYX_NOTE_EDIT_COLOR, NoteConfigConst.ONYX_NOTE_EDIT_ANNOTATION_STYLE, NoteConfigConst.ONYX_NOTE_EDIT_ANNOTATION_COLOR, NoteConfigConst.ONYX_NOTE_EDIT_SIZE_INDEX, NoteConfigConst.ONYX_NOTE_EDIT_COLOR_LIST, NoteConfigConst.ONYX_NOTE_FILL_COLOR, NoteConfigConst.ONYX_NOTE_FILL_COLOR_LIST, NoteConfigConst.ONYX_NOTE_FILL_COLOR_INDEX, "ONYX_NOTE_LINE_STYLE", NoteConfigConst.ONYX_NOTE_EDIT_ANNOTATION_COLOR_LIST, NoteConfigConst.ONYX_NOTE_EDIT_HISTORY_COLOR_LIST, NoteConfigConst.ONYX_NOTE_EDIT_SIZE_LIST, NoteConfigConst.ONYX_NOTE_EDIT_SELECT_DOCK_TYPE, NoteConfigConst.ONYX_NOTE_EDIT_TAB_SHOW, NoteConfigConst.ONYX_NOTE_EDIT_TAB_COUNT, NoteConfigConst.ONYX_NOTE_EDIT_PRESSURE, NoteConfigConst.ONYX_NOTE_EDIT_STROKE_WIDTH, NoteConfigConst.ONYX_NOTE_EDIT_STROKE_NIB, NoteConfigConst.ONYX_NOTE_EDIT_MARK_PEN_RIGHT_ANGLE, "ONYX_NOTE_EDIT_TOUCH_MODE", NoteConfigConst.ONYX_NOTE_EDIT_CONFIG_SHORTCUT_BAR_LIST_KEY, "ONYX_NOTE_EDIT_DOC_OVER_VIEW_THUMBNAIL_SIZE", NoteConfigConst.ONYX_NOTE_EDIT_EXPORT_PAGES_THUMBNAIL_SIZE, NoteConfigConst.ONYX_NOTE_EDIT_MAGNIFIER_AUTO_FORWARD_MOVE, "NOTE_LIST_SELECT_TYPE", "NOTE_LIST_SORT_TYPE", "NOTE_LIST_ORDER_TYPE", "NOTE_LIST_DISPLAY_TYPE", "NOTE_LIST_FOLDER_ID", "NOTE_LIST_TAG_ID", "NOTE_LIST_SLIDE_IS_EXPAND", "NOTE_LIST_CURR_TITLE", "NOTE_LIST_IS_TOP_LEVEL", "NOTE_LIST_IS_BOTTOM_LEVEL", "", "MAX_SHOW_SIZE", "J", "", "MAX_FOLDER_LEVEL", "I", "MAX_TAG_LEVEL", "TOP_LEVEL", "MAX_CREATE_SUB_TAG_COUNT", "", "CREATE_SUB_TAG_FLAG", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "EXPORT_NOTE_MAX_COUNT", "MAX_DOC_TOC_LEVEL", "FOLDER_ROOT_ID", "TAG_ROOT_ID", "REPEAT_SUFFIX", "EXIT_INTERVAL_DURATION", "LOAD_BATCH_SIZE", "LOAD_NOTE_LIST_BATCH_SIZE", "COLOR_LIST_CENTER_INDEX", "", "TAG_ICON_COLOR_ALPHA", "F", "a", "getDEFAULT_FOLDER_COLOR", "()I", "DEFAULT_FOLDER_COLOR", "", "b", "Ljava/util/List;", "getDEFAULT_FOLDER_COLOR_LIST", "()Ljava/util/List;", "DEFAULT_FOLDER_COLOR_LIST", "c", "getDEFAULT_TAG_COLOR", "DEFAULT_TAG_COLOR", "d", "getDEFAULT_TAG_COLOR_LIST", "DEFAULT_TAG_COLOR_LIST", "e", "getDEFAULT_TEMPLATE_PAGE_COLOR_LIST", "DEFAULT_TEMPLATE_PAGE_COLOR_LIST", C6997f.f39671c, "getDEFAULT_DOC_HIGHLIGHT_COLOR_LIST", "DEFAULT_DOC_HIGHLIGHT_COLOR_LIST", C6998g.f39679a, "getDEFAULT_DOC_HIGHLIGHT_OPAQUE_COLOR_LIST", "DEFAULT_DOC_HIGHLIGHT_OPAQUE_COLOR_LIST", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteConfigConst {
    public static final int COLOR_LIST_CENTER_INDEX = 2;
    public static final char CREATE_SUB_TAG_FLAG = '/';
    public static final long EXIT_INTERVAL_DURATION = 1500;
    public static final int EXPORT_NOTE_MAX_COUNT = 9;

    @NotNull
    public static final String FOLDER_ROOT_ID = "folder_root_id";

    @NotNull
    public static final NoteConfigConst INSTANCE = new NoteConfigConst();
    public static final int LOAD_BATCH_SIZE = 200;
    public static final int LOAD_NOTE_LIST_BATCH_SIZE = 4000;
    public static final int MAX_CREATE_SUB_TAG_COUNT = 4;
    public static final int MAX_DOC_TOC_LEVEL = 20;
    public static final int MAX_FOLDER_LEVEL = 6;
    public static final long MAX_SHOW_SIZE = 99;
    public static final int MAX_TAG_LEVEL = 6;

    @NotNull
    public static final String NOTE_LIST_CURR_TITLE = "note_list_curr_title";

    @NotNull
    public static final String NOTE_LIST_DISPLAY_TYPE = "note_list_display_type";

    @NotNull
    public static final String NOTE_LIST_FOLDER_ID = "note_list_folder_id";

    @NotNull
    public static final String NOTE_LIST_IS_BOTTOM_LEVEL = "note_list_is_bottom_level";

    @NotNull
    public static final String NOTE_LIST_IS_TOP_LEVEL = "note_list_is_top_level";

    @NotNull
    public static final String NOTE_LIST_ORDER_TYPE = "note_list_order_type";

    @NotNull
    public static final String NOTE_LIST_SELECT_TYPE = "note_list_select_type";

    @NotNull
    public static final String NOTE_LIST_SLIDE_IS_EXPAND = "note_list_slide_is_expand";

    @NotNull
    public static final String NOTE_LIST_SORT_TYPE = "note_list_sort_type";

    @NotNull
    public static final String NOTE_LIST_TAG_ID = "note_list_tag_id";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ANNOTATION_COLOR = "ONYX_NOTE_EDIT_ANNOTATION_COLOR";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ANNOTATION_COLOR_LIST = "ONYX_NOTE_EDIT_ANNOTATION_COLOR_LIST";

    @NotNull
    public static final String ONYX_NOTE_EDIT_ANNOTATION_STYLE = "ONYX_NOTE_EDIT_ANNOTATION_STYLE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_COLOR = "ONYX_NOTE_EDIT_COLOR";

    @NotNull
    public static final String ONYX_NOTE_EDIT_COLOR_ANNOTATION_INDEX = "ONYX_NOTE_EDIT_COLOR_ANNOTATION_INDEX";

    @NotNull
    public static final String ONYX_NOTE_EDIT_COLOR_INDEX = "ONYX_NOTE_EDIT_COLOR_INDEX";

    @NotNull
    public static final String ONYX_NOTE_EDIT_COLOR_LIST = "ONYX_NOTE_EDIT_COLOR_LIST";

    @NotNull
    public static final String ONYX_NOTE_EDIT_CONFIG_SHAPE_TOOL_LIST_KEY = "ONYX_NOTE_EDIT_CONFIG_SHAPE_TOOL_LIST_KEY";

    @NotNull
    public static final String ONYX_NOTE_EDIT_CONFIG_SHORTCUT_BAR_LIST_KEY = "ONYX_NOTE_EDIT_CONFIG_SHORTCUT_BAR_LIST_KEY";

    @NotNull
    public static final String ONYX_NOTE_EDIT_DOC_OVER_VIEW_THUMBNAIL_SIZE = "ONYX_NOTE_DOC_OVER_VIEW_THUMBNAIL_SIZE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_EXPORT_PAGES_THUMBNAIL_SIZE = "ONYX_NOTE_EDIT_EXPORT_PAGES_THUMBNAIL_SIZE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_HISTORY_COLOR_LIST = "ONYX_NOTE_EDIT_HISTORY_COLOR_LIST";

    @NotNull
    public static final String ONYX_NOTE_EDIT_MAGNIFIER_AUTO_FORWARD_MOVE = "ONYX_NOTE_EDIT_MAGNIFIER_AUTO_FORWARD_MOVE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_MARK_PEN_RIGHT_ANGLE = "ONYX_NOTE_EDIT_MARK_PEN_RIGHT_ANGLE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_PRESSURE = "ONYX_NOTE_EDIT_PRESSURE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_SELECT_DOCK_TYPE = "ONYX_NOTE_EDIT_SELECT_DOCK_TYPE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_SELECT_SHAPE_TYPE = "ONYX_NOTE_EDIT_SELECT_SHAPE_TYPE";

    @NotNull
    public static final String ONYX_NOTE_EDIT_SIZE_INDEX = "ONYX_NOTE_EDIT_SIZE_INDEX";

    @NotNull
    public static final String ONYX_NOTE_EDIT_SIZE_LIST = "ONYX_NOTE_EDIT_SIZE_LIST";

    @NotNull
    public static final String ONYX_NOTE_EDIT_STROKE_NIB = "ONYX_NOTE_EDIT_STROKE_NIB";

    @NotNull
    public static final String ONYX_NOTE_EDIT_STROKE_WIDTH = "ONYX_NOTE_EDIT_STROKE_WIDTH";

    @NotNull
    public static final String ONYX_NOTE_EDIT_TAB_COUNT = "ONYX_NOTE_EDIT_TAB_COUNT";

    @NotNull
    public static final String ONYX_NOTE_EDIT_TAB_SHOW = "ONYX_NOTE_EDIT_TAB_SHOW";

    @NotNull
    public static final String ONYX_NOTE_EDIT_TOUCH_MODE = "ONYX_NOTE_EDIT_TOUCH_MODE";

    @NotNull
    public static final String ONYX_NOTE_FILL_COLOR = "ONYX_NOTE_FILL_COLOR";

    @NotNull
    public static final String ONYX_NOTE_FILL_COLOR_INDEX = "ONYX_NOTE_FILL_COLOR_INDEX";

    @NotNull
    public static final String ONYX_NOTE_FILL_COLOR_LIST = "ONYX_NOTE_FILL_COLOR_LIST";

    @NotNull
    public static final String ONYX_NOTE_LINE_STYLE = "ONYX_NOTE_STROKE_STYLE";

    @NotNull
    public static final String REPEAT_SUFFIX = "_1";
    public static final float TAG_ICON_COLOR_ALPHA = 0.5f;

    @NotNull
    public static final String TAG_ROOT_ID = "tag_root_id";
    public static final int TOP_LEVEL = 1;

    /* renamed from: a, reason: from kotlin metadata */
    public static final int DEFAULT_FOLDER_COLOR;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final List<Integer> DEFAULT_FOLDER_COLOR_LIST;

    /* renamed from: c, reason: from kotlin metadata */
    public static final int DEFAULT_TAG_COLOR;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final List<Integer> DEFAULT_TAG_COLOR_LIST;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final List<Integer> DEFAULT_TEMPLATE_PAGE_COLOR_LIST;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final List<Integer> DEFAULT_DOC_HIGHLIGHT_COLOR_LIST;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final List<Integer> DEFAULT_DOC_HIGHLIGHT_OPAQUE_COLOR_LIST;

    static {
        List<Integer> mutableListOf;
        List<Integer> mutableListOf2;
        List<Integer> mutableListOf3;
        List<Integer> mutableListOf4;
        List<Integer> mutableListOf5;
        ResManager resManager = ResManager.INSTANCE;
        DEFAULT_FOLDER_COLOR = resManager.getColor(C10651R.color.folder_face_default_color);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(resManager.getColor(C10651R.color.folder_face_default_purple_color)), Integer.valueOf(resManager.getColor(C10651R.color.folder_face_default_blue_color)), Integer.valueOf(resManager.getColor(C10651R.color.folder_face_default_color)), Integer.valueOf(resManager.getColor(C10651R.color.folder_face_default_green_color)), Integer.valueOf(resManager.getColor(C10651R.color.folder_face_default_orange_color)));
        DEFAULT_FOLDER_COLOR_LIST = mutableListOf;
        DEFAULT_TAG_COLOR = resManager.getColor(C10651R.color.tag_face_default_yellow_color);
        mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(resManager.getColor(C10651R.color.tag_face_default_blue_color)), Integer.valueOf(resManager.getColor(C10651R.color.tag_face_default_purple_color)), Integer.valueOf(resManager.getColor(C10651R.color.tag_face_default_yellow_color)), Integer.valueOf(resManager.getColor(C10651R.color.tag_face_default_orange_color)), Integer.valueOf(resManager.getColor(C10651R.color.tag_face_default_green_color)));
        DEFAULT_TAG_COLOR_LIST = mutableListOf2;
        mutableListOf3 = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(resManager.getColor(C10651R.color.template_page_default_white_color)), Integer.valueOf(resManager.getColor(C10651R.color.template_page_default_green_color)), Integer.valueOf(resManager.getColor(C10651R.color.template_page_default_yellow_color)), Integer.valueOf(resManager.getColor(C10651R.color.template_page_default_blue_color)), Integer.valueOf(resManager.getColor(C10651R.color.template_page_default_gray_color)));
        DEFAULT_TEMPLATE_PAGE_COLOR_LIST = mutableListOf3;
        mutableListOf4 = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_default_pink_color)), Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_default_yellow_color)), Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_default_blue_color)), Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_default_green_color)), Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_default_red_color)));
        DEFAULT_DOC_HIGHLIGHT_COLOR_LIST = mutableListOf4;
        mutableListOf5 = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_opaque_default_pink_color)), Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_opaque_default_yellow_color)), Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_opaque_default_blue_color)), Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_opaque_default_green_color)), Integer.valueOf(resManager.getColor(C10651R.color.doc_highlight_opaque_default_red_color)));
        DEFAULT_DOC_HIGHLIGHT_OPAQUE_COLOR_LIST = mutableListOf5;
    }

    @NotNull
    public final List<Integer> getDEFAULT_DOC_HIGHLIGHT_COLOR_LIST() {
        return DEFAULT_DOC_HIGHLIGHT_COLOR_LIST;
    }

    @NotNull
    public final List<Integer> getDEFAULT_DOC_HIGHLIGHT_OPAQUE_COLOR_LIST() {
        return DEFAULT_DOC_HIGHLIGHT_OPAQUE_COLOR_LIST;
    }

    public final int getDEFAULT_FOLDER_COLOR() {
        return DEFAULT_FOLDER_COLOR;
    }

    @NotNull
    public final List<Integer> getDEFAULT_FOLDER_COLOR_LIST() {
        return DEFAULT_FOLDER_COLOR_LIST;
    }

    public final int getDEFAULT_TAG_COLOR() {
        return DEFAULT_TAG_COLOR;
    }

    @NotNull
    public final List<Integer> getDEFAULT_TAG_COLOR_LIST() {
        return DEFAULT_TAG_COLOR_LIST;
    }

    @NotNull
    public final List<Integer> getDEFAULT_TEMPLATE_PAGE_COLOR_LIST() {
        return DEFAULT_TEMPLATE_PAGE_COLOR_LIST;
    }
}
