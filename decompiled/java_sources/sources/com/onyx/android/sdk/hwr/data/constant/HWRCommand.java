package com.onyx.android.sdk.hwr.data.constant;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/constant/HWRCommand;", "", "(Ljava/lang/String;I)V", "NONE", "OPEN", "IMPORT", "ADD_STROKE", "UNDO", "REDO", "ERASE", "REPLACE", "TRANSFORM", "CONVERT", "EXPORT", "CLEAR", "CLOSE", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRCommand {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HWRCommand[] $VALUES;
    public static final HWRCommand NONE = new HWRCommand("NONE", 0);
    public static final HWRCommand OPEN = new HWRCommand("OPEN", 1);
    public static final HWRCommand IMPORT = new HWRCommand("IMPORT", 2);
    public static final HWRCommand ADD_STROKE = new HWRCommand("ADD_STROKE", 3);
    public static final HWRCommand UNDO = new HWRCommand("UNDO", 4);
    public static final HWRCommand REDO = new HWRCommand("REDO", 5);
    public static final HWRCommand ERASE = new HWRCommand("ERASE", 6);
    public static final HWRCommand REPLACE = new HWRCommand("REPLACE", 7);
    public static final HWRCommand TRANSFORM = new HWRCommand("TRANSFORM", 8);
    public static final HWRCommand CONVERT = new HWRCommand("CONVERT", 9);
    public static final HWRCommand EXPORT = new HWRCommand("EXPORT", 10);
    public static final HWRCommand CLEAR = new HWRCommand("CLEAR", 11);
    public static final HWRCommand CLOSE = new HWRCommand("CLOSE", 12);

    private static final /* synthetic */ HWRCommand[] $values() {
        return new HWRCommand[]{NONE, OPEN, IMPORT, ADD_STROKE, UNDO, REDO, ERASE, REPLACE, TRANSFORM, CONVERT, EXPORT, CLEAR, CLOSE};
    }

    static {
        HWRCommand[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private HWRCommand(String str, int i) {
    }

    @NotNull
    public static EnumEntries<HWRCommand> getEntries() {
        return $ENTRIES;
    }

    public static HWRCommand valueOf(String str) {
        return (HWRCommand) Enum.valueOf(HWRCommand.class, str);
    }

    public static HWRCommand[] values() {
        return (HWRCommand[]) $VALUES.clone();
    }
}
