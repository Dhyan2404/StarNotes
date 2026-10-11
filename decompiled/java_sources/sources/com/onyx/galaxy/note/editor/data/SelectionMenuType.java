package com.onyx.galaxy.note.editor.data;

import com.google.android.exoplayer2.text.webvtt.WebvttDecoder;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.IntListOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.universal.editor.feature.p040ui.UIFeature;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b4\b\u0086\u0081\u0002\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00000\u0001:\u00019BC\b\u0002\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006¢\u0006\u0002\u0010\nR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\fR\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "", "textResId", "", "textColor", "multipleSelection", "", "imageResId", "parentMenu", "union", "(Ljava/lang/String;IIIZIIZ)V", "getImageResId", "()I", "setImageResId", "(I)V", "getMultipleSelection", Constants.BOOLEAN_VALUE_SIG, "getParentMenu", "getTextColor", "getTextResId", "getUnion", "LAST_PAGE", "NEXT_PAGE", "DELETE", "GOTO_SOURCE", "CUT", "COPY", WebvttDecoder.f27273w, "CROP", "COLOR", "TOPPING", "BOTTOMING", "EDIT", "RENAME", "ADD_TO_STICKER", "HWR_AI", "HWR_BEAUTIFY", "OCR_AI", "LOCK", "UNLOCK", "CREATE_LINK", "GOTO_LINK", "TRANSLATE", "SAVE_TEXT_EXCERPT", "HIGHLIGHT", "UNDERLINE", "WAVY_LINE", "DELETE_ANNOTATION", "PLAY", "COMMENT", "JUMP_TO_QUOTE", "CREATE_PAGE_LINK", "ADD_TAG", "ADD_TO_OUTLINE", "PASTE", "CLIPBOARD_CLEAN", "MOVE_TO_LAYER", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SelectionMenuType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SelectionMenuType[] $VALUES;
    public static final SelectionMenuType ADD_TAG;
    public static final SelectionMenuType ADD_TO_OUTLINE;
    public static final SelectionMenuType ADD_TO_STICKER;
    public static final SelectionMenuType BOTTOMING;
    public static final SelectionMenuType CLIPBOARD_CLEAN;
    public static final SelectionMenuType COLOR;
    public static final SelectionMenuType COMMENT;
    public static final SelectionMenuType COPY;
    public static final SelectionMenuType CREATE_LINK;
    public static final SelectionMenuType CREATE_PAGE_LINK;
    public static final SelectionMenuType CROP;
    public static final SelectionMenuType CUT;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final SelectionMenuType DELETE;
    public static final SelectionMenuType DELETE_ANNOTATION;
    public static final SelectionMenuType EDIT;
    public static final SelectionMenuType GOTO_LINK;
    public static final SelectionMenuType GOTO_SOURCE;
    public static final SelectionMenuType HIGHLIGHT;
    public static final SelectionMenuType HWR_AI;
    public static final SelectionMenuType HWR_BEAUTIFY;
    public static final SelectionMenuType JUMP_TO_QUOTE;
    public static final SelectionMenuType LAST_PAGE;
    public static final SelectionMenuType LOCK;
    public static final SelectionMenuType MOVE_TO_LAYER;
    public static final SelectionMenuType NEXT_PAGE;
    public static final SelectionMenuType OCR_AI;
    public static final SelectionMenuType PASTE;
    public static final SelectionMenuType PLAY;
    public static final SelectionMenuType RENAME;
    public static final SelectionMenuType SAVE_TEXT_EXCERPT;
    public static final SelectionMenuType STYLE;
    public static final SelectionMenuType TOPPING;
    public static final SelectionMenuType TRANSLATE;
    public static final SelectionMenuType UNDERLINE;
    public static final SelectionMenuType UNLOCK;
    public static final SelectionMenuType WAVY_LINE;
    private int imageResId;
    private final boolean multipleSelection;
    private final int parentMenu;
    private final int textColor;
    private final int textResId;
    private final boolean union;

    @Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\fJ\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0012\u001a\u00020\u0013J\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0013J\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u000e\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\fJ\u000e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\fJ\u000e\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\f¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;", "", "()V", "getAnnotationColorIndexOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "annotationStyle", "", "getAnnotationColorListOption", "Lcom/onyx/android/sdk/data/utils/IntListOption;", "getAnnotationColorOption", "getAnnotationMenuTypes", "", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "getAnnotationStyleOption", "getAnnotationStyleType", "menu", "getCommonMenuTypes", "getExcerptMenus", "hasQuote", "", "getPageInsertMenus", "uiFeature", "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;", "keepPasteMenu", "getPasteMenus", "getTextSelectionMenuTypes", "getUniversalMenus", "isAnnotationMenuType", "type", "isRootMenuType", "isValidImageResId", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SelectionMenuType.values().length];
                try {
                    iArr[SelectionMenuType.HIGHLIGHT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SelectionMenuType.UNDERLINE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SelectionMenuType.WAVY_LINE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final IntOption getAnnotationColorIndexOption(int annotationStyle) {
            return new IntOption(MMKVUtils.INSTANCE.get(), "ONYX_NOTE_EDIT_COLOR_ANNOTATION_INDEX_" + annotationStyle, 0, 4, null);
        }

        @NotNull
        public final IntListOption getAnnotationColorListOption(int annotationStyle) {
            List<Integer> default_doc_highlight_color_list = annotationStyle == 0 ? NoteConfigConst.INSTANCE.getDEFAULT_DOC_HIGHLIGHT_COLOR_LIST() : NoteConfigConst.INSTANCE.getDEFAULT_DOC_HIGHLIGHT_OPAQUE_COLOR_LIST();
            return new IntListOption(MMKVUtils.INSTANCE.get(), "ONYX_NOTE_EDIT_ANNOTATION_COLOR_LIST_" + annotationStyle, TypeExtKt.toIntList(default_doc_highlight_color_list));
        }

        @NotNull
        public final IntOption getAnnotationColorOption(int annotationStyle) {
            int i = annotationStyle != 0 ? annotationStyle != 1 ? annotationStyle != 3 ? C10651R.color.doc_highlight_default_pink_color : C10651R.color.doc_highlight_opaque_default_blue_color : C10651R.color.doc_highlight_opaque_default_yellow_color : C10651R.color.doc_highlight_default_pink_color;
            return new IntOption(MMKVUtils.INSTANCE.get(), "ONYX_NOTE_EDIT_ANNOTATION_COLOR_" + annotationStyle, ResManager.INSTANCE.getColor(i));
        }

        @NotNull
        public final List<SelectionMenuType> getAnnotationMenuTypes() {
            List<SelectionMenuType> listOf;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{SelectionMenuType.HIGHLIGHT, SelectionMenuType.UNDERLINE, SelectionMenuType.WAVY_LINE, SelectionMenuType.COPY, SelectionMenuType.TRANSLATE, SelectionMenuType.SAVE_TEXT_EXCERPT, SelectionMenuType.DELETE_ANNOTATION});
            return listOf;
        }

        @NotNull
        public final IntOption getAnnotationStyleOption() {
            return new IntOption(MMKVUtils.INSTANCE.get(), NoteConfigConst.ONYX_NOTE_EDIT_ANNOTATION_STYLE, 0);
        }

        public final int getAnnotationStyleType(@NotNull SelectionMenuType menu) {
            Intrinsics.checkNotNullParameter(menu, "menu");
            int i = WhenMappings.$EnumSwitchMapping$0[menu.ordinal()];
            if (i == 1) {
                return 0;
            }
            if (i != 2) {
                return i != 3 ? -1 : 3;
            }
            return 1;
        }

        @NotNull
        public final List<SelectionMenuType> getCommonMenuTypes() {
            List<SelectionMenuType> listOf;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(SelectionMenuType.DELETE);
            return listOf;
        }

        @NotNull
        public final List<SelectionMenuType> getExcerptMenus(boolean hasQuote) {
            List<SelectionMenuType> mutableListOf;
            SelectionMenuType selectionMenuType = SelectionMenuType.DELETE;
            SelectionMenuType selectionMenuType2 = SelectionMenuType.JUMP_TO_QUOTE;
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(selectionMenuType, selectionMenuType2, SelectionMenuType.COMMENT);
            if (!hasQuote) {
                mutableListOf.remove(selectionMenuType2);
            }
            return mutableListOf;
        }

        @NotNull
        public final List<SelectionMenuType> getPageInsertMenus(@NotNull UIFeature uiFeature, boolean keepPasteMenu) {
            Intrinsics.checkNotNullParameter(uiFeature, "uiFeature");
            ArrayList arrayList = new ArrayList();
            if (uiFeature.supportCreatePageLink()) {
                arrayList.add(SelectionMenuType.CREATE_PAGE_LINK);
            }
            arrayList.add(SelectionMenuType.ADD_TAG);
            if (uiFeature.supportAddToOutline()) {
                arrayList.add(SelectionMenuType.ADD_TO_OUTLINE);
            }
            arrayList.add(SelectionMenuType.PASTE);
            arrayList.add(SelectionMenuType.CLIPBOARD_CLEAN);
            if (!keepPasteMenu) {
                arrayList.removeAll(getPasteMenus());
            }
            return arrayList;
        }

        @NotNull
        public final List<SelectionMenuType> getPasteMenus() {
            List<SelectionMenuType> listOf;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{SelectionMenuType.PASTE, SelectionMenuType.CLIPBOARD_CLEAN});
            return listOf;
        }

        @NotNull
        public final List<SelectionMenuType> getTextSelectionMenuTypes() {
            List<SelectionMenuType> listOf;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{SelectionMenuType.HIGHLIGHT, SelectionMenuType.UNDERLINE, SelectionMenuType.WAVY_LINE, SelectionMenuType.COPY, SelectionMenuType.TRANSLATE, SelectionMenuType.SAVE_TEXT_EXCERPT});
            return listOf;
        }

        @NotNull
        public final List<SelectionMenuType> getUniversalMenus() {
            List<SelectionMenuType> mutableListOf;
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(SelectionMenuType.DELETE, SelectionMenuType.CUT, SelectionMenuType.COPY, SelectionMenuType.STYLE, SelectionMenuType.TOPPING, SelectionMenuType.BOTTOMING, SelectionMenuType.CREATE_LINK, SelectionMenuType.MOVE_TO_LAYER);
            return mutableListOf;
        }

        public final boolean isAnnotationMenuType(@NotNull SelectionMenuType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return type.compareTo(SelectionMenuType.WAVY_LINE) <= 0 && type.compareTo(SelectionMenuType.HIGHLIGHT) >= 0;
        }

        public final boolean isRootMenuType(@NotNull SelectionMenuType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return type.getParentMenu() == -1;
        }

        public final boolean isValidImageResId(@NotNull SelectionMenuType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return type.getImageResId() > 0;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ SelectionMenuType[] $values() {
        return new SelectionMenuType[]{LAST_PAGE, NEXT_PAGE, DELETE, GOTO_SOURCE, CUT, COPY, STYLE, CROP, COLOR, TOPPING, BOTTOMING, EDIT, RENAME, ADD_TO_STICKER, HWR_AI, HWR_BEAUTIFY, OCR_AI, LOCK, UNLOCK, CREATE_LINK, GOTO_LINK, TRANSLATE, SAVE_TEXT_EXCERPT, HIGHLIGHT, UNDERLINE, WAVY_LINE, DELETE_ANNOTATION, PLAY, COMMENT, JUMP_TO_QUOTE, CREATE_PAGE_LINK, ADD_TAG, ADD_TO_OUTLINE, PASTE, CLIPBOARD_CLEAN, MOVE_TO_LAYER};
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = 0;
        LAST_PAGE = new SelectionMenuType("LAST_PAGE", 0, 0, 0, false, 0, i, false, 63, null);
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        DefaultConstructorMarker defaultConstructorMarker = null;
        NEXT_PAGE = new SelectionMenuType("NEXT_PAGE", 1, 0, i2, z, i3, i4, z2, 63, defaultConstructorMarker);
        boolean z3 = true;
        boolean z4 = false;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        DELETE = new SelectionMenuType("DELETE", 2, C10651R.string.delete, C7996R.color.theme_error_color_01, z3, i, 0 == true ? 1 : 0, z4, 56, defaultConstructorMarker2);
        GOTO_SOURCE = new SelectionMenuType("GOTO_SOURCE", 3, C10651R.string.jump_source, i2, z, i3, i4, z2, 62, defaultConstructorMarker);
        int i5 = 0;
        int i6 = 58;
        CUT = new SelectionMenuType("CUT", 4, C10651R.string.cut, i5, z3, i, 0 == true ? 1 : 0, z4, i6, defaultConstructorMarker2);
        COPY = new SelectionMenuType("COPY", 5, C10651R.string.copy, i2, true, i3, i4, z2, 58, defaultConstructorMarker);
        STYLE = new SelectionMenuType(WebvttDecoder.f27273w, 6, C10651R.string.style, i5, z3, i, 0 == true ? 1 : 0, z4, i6, defaultConstructorMarker2);
        CROP = new SelectionMenuType("CROP", 7, C10651R.string.crop, i2, false, i3, i4, z2, 62, defaultConstructorMarker);
        COLOR = new SelectionMenuType("COLOR", 8, C10651R.string.color, i5, false, i, 0 == true ? 1 : 0, z4, 62, defaultConstructorMarker2);
        TOPPING = new SelectionMenuType("TOPPING", 9, C10651R.string.topping, i2, true, i3, i4, z2, 58, defaultConstructorMarker);
        BOTTOMING = new SelectionMenuType("BOTTOMING", 10, C10651R.string.bottoming, i5, true, i, 0 == true ? 1 : 0, z4, 58, defaultConstructorMarker2);
        EDIT = new SelectionMenuType("EDIT", 11, C10651R.string.edit, i2, false, i3, i4, z2, 62, defaultConstructorMarker);
        RENAME = new SelectionMenuType("RENAME", 12, C10651R.string.rename, i5, false, i, 0 == true ? 1 : 0, z4, 62, defaultConstructorMarker2);
        boolean z5 = true;
        ADD_TO_STICKER = new SelectionMenuType("ADD_TO_STICKER", 13, C10651R.string.add_to_sticker, i2, z5, i3, i4, z2, 58, defaultConstructorMarker);
        HWR_AI = new SelectionMenuType("HWR_AI", 14, C10651R.string.hand_writing_recognition, i5, true, i, 0 == true ? 1 : 0, true, 26, defaultConstructorMarker2);
        HWR_BEAUTIFY = new SelectionMenuType("HWR_BEAUTIFY", 15, C10651R.string.ink_menu_beautify, i2, z5, i3, i4, true, 26, defaultConstructorMarker);
        boolean z6 = false;
        OCR_AI = new SelectionMenuType("OCR_AI", 16, C10651R.string.image_recognition, i5, false, i, 0 == true ? 1 : 0, z6, 62, defaultConstructorMarker2);
        boolean z7 = false;
        int i7 = 58;
        LOCK = new SelectionMenuType("LOCK", 17, C10651R.string.lock, i2, z5, i3, i4, z7, i7, defaultConstructorMarker);
        UNLOCK = new SelectionMenuType("UNLOCK", 18, C10651R.string.unlock, i5, true, i, 0 == true ? 1 : 0, z6, 58, defaultConstructorMarker2);
        CREATE_LINK = new SelectionMenuType("CREATE_LINK", 19, C10651R.string.create_link, i2, z5, i3, i4, z7, i7, defaultConstructorMarker);
        boolean z8 = false;
        int i8 = 62;
        GOTO_LINK = new SelectionMenuType("GOTO_LINK", 20, C10651R.string.go_to_link, i5, z8, i, 0 == true ? 1 : 0, z6, i8, defaultConstructorMarker2);
        boolean z9 = false;
        TRANSLATE = new SelectionMenuType("TRANSLATE", 21, C10651R.string.translate, i2, z9, i3, i4, z7, 62, defaultConstructorMarker);
        SAVE_TEXT_EXCERPT = new SelectionMenuType("SAVE_TEXT_EXCERPT", 22, C10651R.string.save_text_excerpt, i5, z8, i, 0 == true ? 1 : 0, z6, i8, defaultConstructorMarker2);
        int i9 = 54;
        HIGHLIGHT = new SelectionMenuType("HIGHLIGHT", 23, C10651R.string.highlight, i2, z9, C10651R.drawable.ic_menu_highlight, i4, z7, i9, defaultConstructorMarker);
        UNDERLINE = new SelectionMenuType("UNDERLINE", 24, C10651R.string.underline, i5, z8, C10651R.drawable.ic_menu_underline, 0 == true ? 1 : 0, z6, 54, defaultConstructorMarker2);
        WAVY_LINE = new SelectionMenuType("WAVY_LINE", 25, C10651R.string.wavy_line, i2, z9, C10651R.drawable.ic_menu_wavy_line, i4, z7, i9, defaultConstructorMarker);
        int i10 = 0;
        int i11 = 62;
        DELETE_ANNOTATION = new SelectionMenuType("DELETE_ANNOTATION", 26, C10651R.string.remove_annotation, i5, z8, i10, 0 == true ? 1 : 0, z6, i11, defaultConstructorMarker2);
        int i12 = 0;
        int i13 = 62;
        PLAY = new SelectionMenuType("PLAY", 27, C10651R.string.play, i2, z9, i12, i4, z7, i13, defaultConstructorMarker);
        COMMENT = new SelectionMenuType("COMMENT", 28, C10651R.string.comment, i5, z8, i10, 0 == true ? 1 : 0, z6, i11, defaultConstructorMarker2);
        JUMP_TO_QUOTE = new SelectionMenuType("JUMP_TO_QUOTE", 29, C10651R.string.jump_quote, i2, z9, i12, i4, z7, i13, defaultConstructorMarker);
        CREATE_PAGE_LINK = new SelectionMenuType("CREATE_PAGE_LINK", 30, C10651R.string.create_page_link, i5, z8, i10, 0 == true ? 1 : 0, z6, i11, defaultConstructorMarker2);
        ADD_TAG = new SelectionMenuType("ADD_TAG", 31, C10651R.string.add_tag, i2, z9, i12, i4, z7, i13, defaultConstructorMarker);
        ADD_TO_OUTLINE = new SelectionMenuType("ADD_TO_OUTLINE", 32, C10651R.string.add_to_outline, i5, z8, i10, 0 == true ? 1 : 0, z6, i11, defaultConstructorMarker2);
        PASTE = new SelectionMenuType("PASTE", 33, C10651R.string.paste, i2, z9, i12, i4, z7, i13, defaultConstructorMarker);
        CLIPBOARD_CLEAN = new SelectionMenuType("CLIPBOARD_CLEAN", 34, C10651R.string.clipboard_set_empty, i5, z8, i10, 0 == true ? 1 : 0, z6, i11, defaultConstructorMarker2);
        MOVE_TO_LAYER = new SelectionMenuType("MOVE_TO_LAYER", 35, C10651R.string.move_to_layer, i2, true, i12, i4, z7, 58, defaultConstructorMarker);
        SelectionMenuType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private SelectionMenuType(String str, int i, int i2, int i3, boolean z, int i4, int i5, boolean z2) {
        this.textResId = i2;
        this.textColor = i3;
        this.multipleSelection = z;
        this.imageResId = i4;
        this.parentMenu = i5;
        this.union = z2;
    }

    @NotNull
    public static EnumEntries<SelectionMenuType> getEntries() {
        return $ENTRIES;
    }

    public static SelectionMenuType valueOf(String str) {
        return (SelectionMenuType) Enum.valueOf(SelectionMenuType.class, str);
    }

    public static SelectionMenuType[] values() {
        return (SelectionMenuType[]) $VALUES.clone();
    }

    public final int getImageResId() {
        return this.imageResId;
    }

    public final boolean getMultipleSelection() {
        return this.multipleSelection;
    }

    public final int getParentMenu() {
        return this.parentMenu;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    public final boolean getUnion() {
        return this.union;
    }

    public final void setImageResId(int i) {
        this.imageResId = i;
    }

    public /* synthetic */ SelectionMenuType(String str, int i, int i2, int i3, boolean z, int i4, int i5, boolean z2, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, (i6 & 1) != 0 ? 0 : i2, (i6 & 2) != 0 ? C7996R.color.theme_text_color_01 : i3, (i6 & 4) != 0 ? false : z, (i6 & 8) != 0 ? 0 : i4, (i6 & 16) != 0 ? -1 : i5, (i6 & 32) != 0 ? false : z2);
    }
}
