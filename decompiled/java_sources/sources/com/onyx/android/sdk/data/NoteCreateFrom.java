package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/NoteCreateFrom;", "", "(Ljava/lang/String;I)V", "NORMAL_CREATE", "BOUNDLESS", "IMPORT_FILE", "IMPORT_PICTURE", "IMPORT_CAMERA", "IMPORT_SCAN", "QUICK_CREATE_NOTE", "DOUBLE_CLICK_QUICK_CREATE", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NoteCreateFrom {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NoteCreateFrom[] $VALUES;
    public static final NoteCreateFrom NORMAL_CREATE = new NoteCreateFrom("NORMAL_CREATE", 0);
    public static final NoteCreateFrom BOUNDLESS = new NoteCreateFrom("BOUNDLESS", 1);
    public static final NoteCreateFrom IMPORT_FILE = new NoteCreateFrom("IMPORT_FILE", 2);
    public static final NoteCreateFrom IMPORT_PICTURE = new NoteCreateFrom("IMPORT_PICTURE", 3);
    public static final NoteCreateFrom IMPORT_CAMERA = new NoteCreateFrom("IMPORT_CAMERA", 4);
    public static final NoteCreateFrom IMPORT_SCAN = new NoteCreateFrom("IMPORT_SCAN", 5);
    public static final NoteCreateFrom QUICK_CREATE_NOTE = new NoteCreateFrom("QUICK_CREATE_NOTE", 6);
    public static final NoteCreateFrom DOUBLE_CLICK_QUICK_CREATE = new NoteCreateFrom("DOUBLE_CLICK_QUICK_CREATE", 7);

    private static final /* synthetic */ NoteCreateFrom[] $values() {
        return new NoteCreateFrom[]{NORMAL_CREATE, BOUNDLESS, IMPORT_FILE, IMPORT_PICTURE, IMPORT_CAMERA, IMPORT_SCAN, QUICK_CREATE_NOTE, DOUBLE_CLICK_QUICK_CREATE};
    }

    static {
        NoteCreateFrom[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private NoteCreateFrom(String str, int i) {
    }

    @NotNull
    public static EnumEntries<NoteCreateFrom> getEntries() {
        return $ENTRIES;
    }

    public static NoteCreateFrom valueOf(String str) {
        return (NoteCreateFrom) Enum.valueOf(NoteCreateFrom.class, str);
    }

    public static NoteCreateFrom[] values() {
        return (NoteCreateFrom[]) $VALUES.clone();
    }
}
