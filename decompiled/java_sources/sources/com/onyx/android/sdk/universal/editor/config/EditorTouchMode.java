package com.onyx.android.sdk.universal.editor.config;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "", "(Ljava/lang/String;I)V", "isFingerMode", "", "isReadingMode", "isStylusMode", "STYLUS_SCRIBBLE", "FINGER_SCRIBBLE", "READING", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class EditorTouchMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EditorTouchMode[] $VALUES;

    @NotNull
    public static final String SWITCH_MODE_SEPARATE = "_to_";
    public static final EditorTouchMode STYLUS_SCRIBBLE = new EditorTouchMode("STYLUS_SCRIBBLE", 0);
    public static final EditorTouchMode FINGER_SCRIBBLE = new EditorTouchMode("FINGER_SCRIBBLE", 1);
    public static final EditorTouchMode READING = new EditorTouchMode("READING", 2);

    private static final /* synthetic */ EditorTouchMode[] $values() {
        return new EditorTouchMode[]{STYLUS_SCRIBBLE, FINGER_SCRIBBLE, READING};
    }

    static {
        EditorTouchMode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
        INSTANCE = new Companion(null);
    }

    private EditorTouchMode(String str, int i) {
    }

    @NotNull
    public static EnumEntries<EditorTouchMode> getEntries() {
        return $ENTRIES;
    }

    public static EditorTouchMode valueOf(String str) {
        return (EditorTouchMode) Enum.valueOf(EditorTouchMode.class, str);
    }

    public static EditorTouchMode[] values() {
        return (EditorTouchMode[]) $VALUES.clone();
    }

    public final boolean isFingerMode() {
        return this == FINGER_SCRIBBLE;
    }

    public final boolean isReadingMode() {
        return this == READING;
    }

    public final boolean isStylusMode() {
        return this == STYLUS_SCRIBBLE;
    }
}
