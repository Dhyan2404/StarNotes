package com.onyx.android.sdk.genericshape;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;", "", "(Ljava/lang/String;I)V", "HORIZONTAL", "VERTICAL", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeoLayoutGroupOrientation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ GeoLayoutGroupOrientation[] $VALUES;
    public static final GeoLayoutGroupOrientation HORIZONTAL = new GeoLayoutGroupOrientation("HORIZONTAL", 0);
    public static final GeoLayoutGroupOrientation VERTICAL = new GeoLayoutGroupOrientation("VERTICAL", 1);

    private static final /* synthetic */ GeoLayoutGroupOrientation[] $values() {
        return new GeoLayoutGroupOrientation[]{HORIZONTAL, VERTICAL};
    }

    static {
        GeoLayoutGroupOrientation[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private GeoLayoutGroupOrientation(String str, int i) {
    }

    @NotNull
    public static EnumEntries<GeoLayoutGroupOrientation> getEntries() {
        return $ENTRIES;
    }

    public static GeoLayoutGroupOrientation valueOf(String str) {
        return (GeoLayoutGroupOrientation) Enum.valueOf(GeoLayoutGroupOrientation.class, str);
    }

    public static GeoLayoutGroupOrientation[] values() {
        return (GeoLayoutGroupOrientation[]) $VALUES.clone();
    }
}
