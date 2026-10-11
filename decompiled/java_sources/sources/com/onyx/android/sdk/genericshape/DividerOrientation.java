package com.onyx.android.sdk.genericshape;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/DividerOrientation;", "", "(Ljava/lang/String;I)V", "HORIZONTAL", "VERTICAL", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DividerOrientation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DividerOrientation[] $VALUES;
    public static final DividerOrientation HORIZONTAL = new DividerOrientation("HORIZONTAL", 0);
    public static final DividerOrientation VERTICAL = new DividerOrientation("VERTICAL", 1);

    private static final /* synthetic */ DividerOrientation[] $values() {
        return new DividerOrientation[]{HORIZONTAL, VERTICAL};
    }

    static {
        DividerOrientation[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private DividerOrientation(String str, int i) {
    }

    @NotNull
    public static EnumEntries<DividerOrientation> getEntries() {
        return $ENTRIES;
    }

    public static DividerOrientation valueOf(String str) {
        return (DividerOrientation) Enum.valueOf(DividerOrientation.class, str);
    }

    public static DividerOrientation[] values() {
        return (DividerOrientation[]) $VALUES.clone();
    }
}
