package com.onyx.android.sdk.neopdf.richtext.style;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;", "", "(Ljava/lang/String;I)V", "NORMAL", "CONDENSED", "EXPANDED", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FontStretch {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FontStretch[] $VALUES;
    public static final FontStretch NORMAL = new FontStretch("NORMAL", 0);
    public static final FontStretch CONDENSED = new FontStretch("CONDENSED", 1);
    public static final FontStretch EXPANDED = new FontStretch("EXPANDED", 2);

    private static final /* synthetic */ FontStretch[] $values() {
        return new FontStretch[]{NORMAL, CONDENSED, EXPANDED};
    }

    static {
        FontStretch[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private FontStretch(String str, int i) {
    }

    @NotNull
    public static EnumEntries<FontStretch> getEntries() {
        return $ENTRIES;
    }

    public static FontStretch valueOf(String str) {
        return (FontStretch) Enum.valueOf(FontStretch.class, str);
    }

    public static FontStretch[] values() {
        return (FontStretch[]) $VALUES.clone();
    }
}
