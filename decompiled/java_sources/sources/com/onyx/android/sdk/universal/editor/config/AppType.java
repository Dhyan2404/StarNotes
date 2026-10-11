package com.onyx.android.sdk.universal.editor.config;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/AppType;", "", "(Ljava/lang/String;I)V", "NOTE", "READER", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AppType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AppType[] $VALUES;
    public static final AppType NOTE = new AppType("NOTE", 0);
    public static final AppType READER = new AppType("READER", 1);

    private static final /* synthetic */ AppType[] $values() {
        return new AppType[]{NOTE, READER};
    }

    static {
        AppType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private AppType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<AppType> getEntries() {
        return $ENTRIES;
    }

    public static AppType valueOf(String str) {
        return (AppType) Enum.valueOf(AppType.class, str);
    }

    public static AppType[] values() {
        return (AppType[]) $VALUES.clone();
    }
}
