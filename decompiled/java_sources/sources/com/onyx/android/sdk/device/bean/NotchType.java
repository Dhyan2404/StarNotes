package com.onyx.android.sdk.device.bean;

import android.graphics.Point;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/device/bean/NotchType;", "", "positionOffset", "Landroid/graphics/Point;", "(Ljava/lang/String;ILandroid/graphics/Point;)V", "getPositionOffset", "()Landroid/graphics/Point;", "LEFT_TOP", "RIGHT_TOP", "MIDDLE_LEFT", "MIDDLE_RIGHT", "MIDDLE_TOP", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NotchType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NotchType[] $VALUES;

    @NotNull
    private final Point positionOffset;
    public static final NotchType LEFT_TOP = new NotchType("LEFT_TOP", 0, new Point());
    public static final NotchType RIGHT_TOP = new NotchType("RIGHT_TOP", 1, new Point());
    public static final NotchType MIDDLE_LEFT = new NotchType("MIDDLE_LEFT", 2, new Point());
    public static final NotchType MIDDLE_RIGHT = new NotchType("MIDDLE_RIGHT", 3, new Point());
    public static final NotchType MIDDLE_TOP = new NotchType("MIDDLE_TOP", 4, new Point());

    private static final /* synthetic */ NotchType[] $values() {
        return new NotchType[]{LEFT_TOP, RIGHT_TOP, MIDDLE_LEFT, MIDDLE_RIGHT, MIDDLE_TOP};
    }

    static {
        NotchType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private NotchType(String str, int i, Point point) {
        this.positionOffset = point;
    }

    @NotNull
    public static EnumEntries<NotchType> getEntries() {
        return $ENTRIES;
    }

    public static NotchType valueOf(String str) {
        return (NotchType) Enum.valueOf(NotchType.class, str);
    }

    public static NotchType[] values() {
        return (NotchType[]) $VALUES.clone();
    }

    @NotNull
    public final Point getPositionOffset() {
        return this.positionOffset;
    }
}
