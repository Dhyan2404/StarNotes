package com.onyx.android.sdk.geometry.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/RotateType;", "", "angle", "", "(Ljava/lang/String;IF)V", "getAngle", "()F", "FREEDOM", "CW_90", "CWW_90", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RotateType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RotateType[] $VALUES;
    private final float angle;
    public static final RotateType FREEDOM = new RotateType("FREEDOM", 0, -32768.0f);
    public static final RotateType CW_90 = new RotateType("CW_90", 1, 90.0f);
    public static final RotateType CWW_90 = new RotateType("CWW_90", 2, -90.0f);

    private static final /* synthetic */ RotateType[] $values() {
        return new RotateType[]{FREEDOM, CW_90, CWW_90};
    }

    static {
        RotateType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private RotateType(String str, int i, float f) {
        this.angle = f;
    }

    @NotNull
    public static EnumEntries<RotateType> getEntries() {
        return $ENTRIES;
    }

    public static RotateType valueOf(String str) {
        return (RotateType) Enum.valueOf(RotateType.class, str);
    }

    public static RotateType[] values() {
        return (RotateType[]) $VALUES.clone();
    }

    public final float getAngle() {
        return this.angle;
    }
}
