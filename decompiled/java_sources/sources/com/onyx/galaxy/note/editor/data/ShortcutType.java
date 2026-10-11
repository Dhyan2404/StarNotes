package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001c\b\u0086\u0081\u0002\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\"B)\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\nj\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!¨\u0006#"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "", "shortcutType", "", "iconRes", "titleRes", "removable", "", "(Ljava/lang/String;IIIIZ)V", "getIconRes", "()I", "getRemovable", Constants.BOOLEAN_VALUE_SIG, "getShortcutType", "getTitleRes", "SHORTCUT_CAMERA", "SHORTCUT_SCREEN_SHOT", "SHORTCUT_AUDIO", "SHORTCUT_AUDIO_SET", "SHORTCUT_REALTIME_BEAUTIFY", "SHORTCUT_READING_MODE", "SHORTCUT_WRITING_MODE", "SHORTCUT_LAYER", "SHORTCUT_ADD_PAGE", "SHORTCUT_DOC_OVERVIEW", "SHORTCUT_OTHER_SETTINGS", "SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT", "SHORTCUT_DOC_OVERVIEW_FULL", "SHORTCUT_EXPORT_DOC", "SHORTCUT_COUNTER", "SHORTCUT_ENCRYPTION", "SHORTCUT_NOTE_OVERVIEW", "SHORTCUT_NOTE_MODE", "SHORTCUT_FULL_SCREEN", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ShortcutType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ShortcutType[] $VALUES;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final ShortcutType SHORTCUT_ADD_PAGE;
    public static final ShortcutType SHORTCUT_AUDIO;
    public static final ShortcutType SHORTCUT_AUDIO_SET;
    public static final ShortcutType SHORTCUT_COUNTER;
    public static final ShortcutType SHORTCUT_ENCRYPTION;
    public static final ShortcutType SHORTCUT_EXPORT_DOC;
    public static final ShortcutType SHORTCUT_FULL_SCREEN;
    public static final ShortcutType SHORTCUT_LAYER;
    public static final ShortcutType SHORTCUT_NOTE_MODE;
    public static final ShortcutType SHORTCUT_NOTE_OVERVIEW;
    public static final ShortcutType SHORTCUT_READING_MODE;
    public static final ShortcutType SHORTCUT_REALTIME_BEAUTIFY;
    public static final ShortcutType SHORTCUT_SCREEN_SHOT;
    public static final ShortcutType SHORTCUT_WRITING_MODE;

    @NotNull
    private static final Lazy<List<ShortcutType>> enableShortcutTypes$delegate;

    @NotNull
    private static final List<ShortcutType> uselessShortcutTypes;
    private final int iconRes;
    private final boolean removable;
    private final int shortcutType;
    private final int titleRes;
    public static final ShortcutType SHORTCUT_CAMERA = new ShortcutType("SHORTCUT_CAMERA", 0, 1, C10651R.drawable.icon_shortcut_camera, C10651R.string.shortcut_bar_camera, false, 8, null);
    public static final ShortcutType SHORTCUT_DOC_OVERVIEW = new ShortcutType("SHORTCUT_DOC_OVERVIEW", 9, 9, C10651R.drawable.icon_shortcut_doc_overview, C10651R.string.shortcut_bar_doc_overview, false);
    public static final ShortcutType SHORTCUT_OTHER_SETTINGS = new ShortcutType("SHORTCUT_OTHER_SETTINGS", 10, 10, C10651R.drawable.icon_shortcut_other_settings, C10651R.string.shortcut_bar_other_settings, false);
    public static final ShortcutType SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT = new ShortcutType("SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT", 11, 11, C10651R.drawable.icon_shortcut_page_whitespace_adjustment, C10651R.string.shortcut_bar_page_whitespace_adjustment, false, 8, null);
    public static final ShortcutType SHORTCUT_DOC_OVERVIEW_FULL = new ShortcutType("SHORTCUT_DOC_OVERVIEW_FULL", 12, 12, C10651R.drawable.icon_shortcut_doc_overview_full, C10651R.string.shortcut_bar_doc_overview_full, false, 8, null);

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001c\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\t\u001a\u00020\bJ\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0016\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J\u0016\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J\u0016\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002R\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R!\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0013¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;", "", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "shortcutType", "Lkotlin/Pair;", "", "", "getShortcutModeData", "", "hasEncryption", "getEncryptionData", "getNoteModeData", "b", "a", "c", "", "uselessShortcutTypes", "Ljava/util/List;", "getUselessShortcutTypes", "()Ljava/util/List;", "", "enableShortcutTypes$delegate", "Lkotlin/Lazy;", "getEnableShortcutTypes", "enableShortcutTypes", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class Companion {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;

            static {
                int[] iArr = new int[ShortcutType.values().length];
                try {
                    iArr[ShortcutType.SHORTCUT_NOTE_MODE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ShortcutType.SHORTCUT_WRITING_MODE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ShortcutType.SHORTCUT_READING_MODE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ShortcutType.SHORTCUT_REALTIME_BEAUTIFY.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[EditorTouchMode.values().length];
                try {
                    iArr2[EditorTouchMode.STYLUS_SCRIBBLE.ordinal()] = 1;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr2[EditorTouchMode.FINGER_SCRIBBLE.ordinal()] = 2;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr2[EditorTouchMode.READING.ordinal()] = 3;
                } catch (NoSuchFieldError unused7) {
                }
                $EnumSwitchMapping$1 = iArr2;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Pair<String, Integer> m46009a() {
            return TuplesKt.m61535to(ResManager.INSTANCE.getString(ShortcutType.SHORTCUT_REALTIME_BEAUTIFY.getTitleRes()), Integer.valueOf(MMKVNote.INSTANCE.getRealtimeBeautifyEnabledOption().get() ? C10651R.drawable.icon_shortcut_beautify_on_large : C10651R.drawable.icon_shortcut_beautify_off_large));
        }

        /* renamed from: b */
        public final Pair<String, Integer> m46010b() {
            return TuplesKt.m61535to(ResManager.INSTANCE.getString(ShortcutType.SHORTCUT_READING_MODE.getTitleRes()), Integer.valueOf(MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null).isReadingMode() ? C10651R.drawable.icon_shortcut_reading_mode_check : C10651R.drawable.icon_shortcut_reading_mode));
        }

        /* renamed from: c */
        public final Pair<String, Integer> m46011c() {
            boolean isFingerMode = MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null).isFingerMode();
            return TuplesKt.m61535to(ResManager.INSTANCE.getString(isFingerMode ? C10651R.string.shortcut_bar_writing_mode_finger : C10651R.string.shortcut_bar_writing_mode_pen), Integer.valueOf(isFingerMode ? C10651R.drawable.icon_shortcut_writing_mode_finger : C10651R.drawable.icon_shortcut_writing_mode_pen));
        }

        @NotNull
        public final List<ShortcutType> getEnableShortcutTypes() {
            return (List) ShortcutType.enableShortcutTypes$delegate.getValue();
        }

        @NotNull
        public final Pair<String, Integer> getEncryptionData(boolean hasEncryption) {
            return TuplesKt.m61535to(ResManager.INSTANCE.getString(hasEncryption ? C10651R.string.shortcut_bar_unlock : C10651R.string.shortcut_bar_lock), Integer.valueOf(hasEncryption ? C10651R.drawable.icon_shortcut_unlock : C10651R.drawable.icon_shortcut_lock));
        }

        @NotNull
        public final Pair<String, Integer> getNoteModeData() {
            int i;
            EditorTouchMode editTouchMode$default = MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null);
            String string = ResManager.INSTANCE.getString(ShortcutType.SHORTCUT_NOTE_MODE.getTitleRes());
            int i2 = WhenMappings.$EnumSwitchMapping$1[editTouchMode$default.ordinal()];
            if (i2 == 1) {
                i = C10651R.drawable.icon_shortcut_writing_mode_pen;
            } else if (i2 == 2) {
                i = C10651R.drawable.icon_shortcut_writing_mode_finger;
            } else {
                if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                i = C10651R.drawable.icon_shortcut_reading_mode_check;
            }
            return TuplesKt.m61535to(string, Integer.valueOf(i));
        }

        @NotNull
        public final Pair<String, Integer> getShortcutModeData(@NotNull ShortcutType shortcutType) {
            Intrinsics.checkNotNullParameter(shortcutType, "shortcutType");
            int i = WhenMappings.$EnumSwitchMapping$0[shortcutType.ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? TuplesKt.m61535to(ResManager.INSTANCE.getString(shortcutType.getTitleRes()), Integer.valueOf(shortcutType.getIconRes())) : m46009a() : m46010b() : m46011c() : getNoteModeData();
        }

        @NotNull
        public final List<ShortcutType> getUselessShortcutTypes() {
            return ShortcutType.uselessShortcutTypes;
        }

        public Companion() {
        }
    }

    private static final /* synthetic */ ShortcutType[] $values() {
        return new ShortcutType[]{SHORTCUT_CAMERA, SHORTCUT_SCREEN_SHOT, SHORTCUT_AUDIO, SHORTCUT_AUDIO_SET, SHORTCUT_REALTIME_BEAUTIFY, SHORTCUT_READING_MODE, SHORTCUT_WRITING_MODE, SHORTCUT_LAYER, SHORTCUT_ADD_PAGE, SHORTCUT_DOC_OVERVIEW, SHORTCUT_OTHER_SETTINGS, SHORTCUT_PAGE_WHITESPACE_ADJUSTMENT, SHORTCUT_DOC_OVERVIEW_FULL, SHORTCUT_EXPORT_DOC, SHORTCUT_COUNTER, SHORTCUT_ENCRYPTION, SHORTCUT_NOTE_OVERVIEW, SHORTCUT_NOTE_MODE, SHORTCUT_FULL_SCREEN};
    }

    static {
        List<ShortcutType> listOf;
        Lazy<List<ShortcutType>> lazy;
        boolean z = false;
        int i = 8;
        DefaultConstructorMarker defaultConstructorMarker = null;
        SHORTCUT_SCREEN_SHOT = new ShortcutType("SHORTCUT_SCREEN_SHOT", 1, 2, C10651R.drawable.icon_shortcut_screen_shot, C10651R.string.shortcut_bar_screen_shot, z, i, defaultConstructorMarker);
        boolean z2 = false;
        int i2 = 8;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        SHORTCUT_AUDIO = new ShortcutType("SHORTCUT_AUDIO", 2, 3, C10651R.drawable.icon_shortcut_audio, C10651R.string.shortcut_bar_audio, z2, i2, defaultConstructorMarker2);
        SHORTCUT_AUDIO_SET = new ShortcutType("SHORTCUT_AUDIO_SET", 3, 4, C10651R.drawable.icon_shortcut_audio_set, C10651R.string.shortcut_bar_audio_set, z, i, defaultConstructorMarker);
        SHORTCUT_REALTIME_BEAUTIFY = new ShortcutType("SHORTCUT_REALTIME_BEAUTIFY", 4, 19, C10651R.drawable.icon_shortcut_beautify_off_large, C10651R.string.shortcut_bar_beautify, z2, i2, defaultConstructorMarker2);
        SHORTCUT_READING_MODE = new ShortcutType("SHORTCUT_READING_MODE", 5, 5, C10651R.drawable.icon_shortcut_reading_mode, C10651R.string.shortcut_bar_reading_mode, z, i, defaultConstructorMarker);
        SHORTCUT_WRITING_MODE = new ShortcutType("SHORTCUT_WRITING_MODE", 6, 6, C10651R.drawable.icon_shortcut_writing_mode_finger, C10651R.string.shortcut_bar_writing_mode, z2, i2, defaultConstructorMarker2);
        SHORTCUT_LAYER = new ShortcutType("SHORTCUT_LAYER", 7, 7, C10651R.drawable.icon_shortcut_layer, C10651R.string.shortcut_bar_layer, z, i, defaultConstructorMarker);
        SHORTCUT_ADD_PAGE = new ShortcutType("SHORTCUT_ADD_PAGE", 8, 8, C10651R.drawable.icon_shortcut_add_page, C10651R.string.shortcut_bar_add_page, z2, i2, defaultConstructorMarker2);
        int i3 = 8;
        DefaultConstructorMarker defaultConstructorMarker3 = null;
        SHORTCUT_EXPORT_DOC = new ShortcutType("SHORTCUT_EXPORT_DOC", 13, 13, C10651R.drawable.icon_shortcut_export_doc, C10651R.string.shortcut_bar_export_document, z2, i3, defaultConstructorMarker3);
        boolean z3 = false;
        int i4 = 8;
        DefaultConstructorMarker defaultConstructorMarker4 = null;
        SHORTCUT_COUNTER = new ShortcutType("SHORTCUT_COUNTER", 14, 14, C10651R.drawable.icon_shortcut_counter, C10651R.string.shortcut_bar_timer, z3, i4, defaultConstructorMarker4);
        SHORTCUT_ENCRYPTION = new ShortcutType("SHORTCUT_ENCRYPTION", 15, 15, C10651R.drawable.icon_shortcut_lock, C10651R.string.shortcut_bar_lock, z2, i3, defaultConstructorMarker3);
        SHORTCUT_NOTE_OVERVIEW = new ShortcutType("SHORTCUT_NOTE_OVERVIEW", 16, 16, C10651R.drawable.icon_shortcut_note_overview, C10651R.string.shortcut_bar_note_overview, z3, i4, defaultConstructorMarker4);
        ShortcutType shortcutType = new ShortcutType("SHORTCUT_NOTE_MODE", 17, 17, C10651R.drawable.icon_shortcut_reading_mode, C10651R.string.shortcut_bar_note_mode, z2, i3, defaultConstructorMarker3);
        SHORTCUT_NOTE_MODE = shortcutType;
        SHORTCUT_FULL_SCREEN = new ShortcutType("SHORTCUT_FULL_SCREEN", 18, 18, C10651R.drawable.icon_shortcut_full_screen, C10651R.string.shortcut_bar_fullscreen_zoom, z3, i4, defaultConstructorMarker4);
        ShortcutType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(shortcutType);
        uselessShortcutTypes = listOf;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<ShortcutType>>() { // from class: com.onyx.galaxy.note.editor.data.ShortcutType$Companion$enableShortcutTypes$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<ShortcutType> invoke() {
                List<ShortcutType> mutableList;
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ShortcutType.getEntries());
                mutableList.removeAll(ShortcutType.INSTANCE.getUselessShortcutTypes());
                return mutableList;
            }
        });
        enableShortcutTypes$delegate = lazy;
    }

    private ShortcutType(String str, int i, int i2, int i3, int i4, boolean z) {
        this.shortcutType = i2;
        this.iconRes = i3;
        this.titleRes = i4;
        this.removable = z;
    }

    @NotNull
    public static EnumEntries<ShortcutType> getEntries() {
        return $ENTRIES;
    }

    public static ShortcutType valueOf(String str) {
        return (ShortcutType) Enum.valueOf(ShortcutType.class, str);
    }

    public static ShortcutType[] values() {
        return (ShortcutType[]) $VALUES.clone();
    }

    public final int getIconRes() {
        return this.iconRes;
    }

    public final boolean getRemovable() {
        return this.removable;
    }

    public final int getShortcutType() {
        return this.shortcutType;
    }

    public final int getTitleRes() {
        return this.titleRes;
    }

    public /* synthetic */ ShortcutType(String str, int i, int i2, int i3, int i4, boolean z, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2, i3, i4, (i5 & 8) != 0 ? true : z);
    }
}
