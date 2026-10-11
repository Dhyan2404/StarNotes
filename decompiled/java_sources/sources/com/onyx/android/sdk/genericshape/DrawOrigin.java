package com.onyx.android.sdk.genericshape;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/DrawOrigin;", "", "(Ljava/lang/String;I)V", "LEFT_TOP", "RIGHT_TOP", "RIGHT_BOTTOM", "LEFT_BOTTOM", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DrawOrigin {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DrawOrigin[] $VALUES;
    public static final DrawOrigin LEFT_TOP = new DrawOrigin("LEFT_TOP", 0);
    public static final DrawOrigin RIGHT_TOP = new DrawOrigin("RIGHT_TOP", 1);
    public static final DrawOrigin RIGHT_BOTTOM = new DrawOrigin("RIGHT_BOTTOM", 2);
    public static final DrawOrigin LEFT_BOTTOM = new DrawOrigin("LEFT_BOTTOM", 3);

    private static final /* synthetic */ DrawOrigin[] $values() {
        return new DrawOrigin[]{LEFT_TOP, RIGHT_TOP, RIGHT_BOTTOM, LEFT_BOTTOM};
    }

    static {
        DrawOrigin[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private DrawOrigin(String str, int i) {
    }

    @NotNull
    public static EnumEntries<DrawOrigin> getEntries() {
        return $ENTRIES;
    }

    public static DrawOrigin valueOf(String str) {
        return (DrawOrigin) Enum.valueOf(DrawOrigin.class, str);
    }

    public static DrawOrigin[] values() {
        return (DrawOrigin[]) $VALUES.clone();
    }
}
