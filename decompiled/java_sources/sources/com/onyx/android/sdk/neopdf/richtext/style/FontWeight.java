package com.onyx.android.sdk.neopdf.richtext.style;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;", "", "(Ljava/lang/String;I)V", "NORMAL", "BOLD", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FontWeight {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FontWeight[] $VALUES;
    public static final FontWeight NORMAL = new FontWeight("NORMAL", 0);
    public static final FontWeight BOLD = new FontWeight("BOLD", 1);

    private static final /* synthetic */ FontWeight[] $values() {
        return new FontWeight[]{NORMAL, BOLD};
    }

    static {
        FontWeight[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private FontWeight(String str, int i) {
    }

    @NotNull
    public static EnumEntries<FontWeight> getEntries() {
        return $ENTRIES;
    }

    public static FontWeight valueOf(String str) {
        return (FontWeight) Enum.valueOf(FontWeight.class, str);
    }

    public static FontWeight[] values() {
        return (FontWeight[]) $VALUES.clone();
    }
}
