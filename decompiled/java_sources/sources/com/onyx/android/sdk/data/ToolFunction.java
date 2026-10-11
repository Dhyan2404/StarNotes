package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/ToolFunction;", "", "(Ljava/lang/String;I)V", "RECORD_AUDIO", "PHOTO", "SCREENSHOT", "CLOUD_SYNC", "LAYER", "ADD_PAGE", "MORE_SETTINGS", "DOC_SLIDE", "WRITING_MODE", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ToolFunction {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ToolFunction[] $VALUES;
    public static final ToolFunction RECORD_AUDIO = new ToolFunction("RECORD_AUDIO", 0);
    public static final ToolFunction PHOTO = new ToolFunction("PHOTO", 1);
    public static final ToolFunction SCREENSHOT = new ToolFunction("SCREENSHOT", 2);
    public static final ToolFunction CLOUD_SYNC = new ToolFunction("CLOUD_SYNC", 3);
    public static final ToolFunction LAYER = new ToolFunction("LAYER", 4);
    public static final ToolFunction ADD_PAGE = new ToolFunction("ADD_PAGE", 5);
    public static final ToolFunction MORE_SETTINGS = new ToolFunction("MORE_SETTINGS", 6);
    public static final ToolFunction DOC_SLIDE = new ToolFunction("DOC_SLIDE", 7);
    public static final ToolFunction WRITING_MODE = new ToolFunction("WRITING_MODE", 8);

    private static final /* synthetic */ ToolFunction[] $values() {
        return new ToolFunction[]{RECORD_AUDIO, PHOTO, SCREENSHOT, CLOUD_SYNC, LAYER, ADD_PAGE, MORE_SETTINGS, DOC_SLIDE, WRITING_MODE};
    }

    static {
        ToolFunction[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private ToolFunction(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ToolFunction> getEntries() {
        return $ENTRIES;
    }

    public static ToolFunction valueOf(String str) {
        return (ToolFunction) Enum.valueOf(ToolFunction.class, str);
    }

    public static ToolFunction[] values() {
        return (ToolFunction[]) $VALUES.clone();
    }
}
