package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.base.common.error.BaseError;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/RectCorner;", "", "(Ljava/lang/String;I)V", "isUndefined", "", BaseError.UNDEFINED, "Left", "Top", "Right", "Bottom", "Center", "LeftTop", "RightTop", "LeftBottom", "RightBottom", "OutSideRightTop", "OutSideLeftTop", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class RectCorner {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RectCorner[] $VALUES;
    public static final RectCorner Undefined = new RectCorner(BaseError.UNDEFINED, 0);
    public static final RectCorner Left = new RectCorner("Left", 1);
    public static final RectCorner Top = new RectCorner("Top", 2);
    public static final RectCorner Right = new RectCorner("Right", 3);
    public static final RectCorner Bottom = new RectCorner("Bottom", 4);
    public static final RectCorner Center = new RectCorner("Center", 5);
    public static final RectCorner LeftTop = new RectCorner("LeftTop", 6);
    public static final RectCorner RightTop = new RectCorner("RightTop", 7);
    public static final RectCorner LeftBottom = new RectCorner("LeftBottom", 8);
    public static final RectCorner RightBottom = new RectCorner("RightBottom", 9);
    public static final RectCorner OutSideRightTop = new RectCorner("OutSideRightTop", 10);
    public static final RectCorner OutSideLeftTop = new RectCorner("OutSideLeftTop", 11);

    private static final /* synthetic */ RectCorner[] $values() {
        return new RectCorner[]{Undefined, Left, Top, Right, Bottom, Center, LeftTop, RightTop, LeftBottom, RightBottom, OutSideRightTop, OutSideLeftTop};
    }

    static {
        RectCorner[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private RectCorner(String str, int i) {
    }

    @NotNull
    public static EnumEntries<RectCorner> getEntries() {
        return $ENTRIES;
    }

    public static RectCorner valueOf(String str) {
        return (RectCorner) Enum.valueOf(RectCorner.class, str);
    }

    public static RectCorner[] values() {
        return (RectCorner[]) $VALUES.clone();
    }

    public boolean isUndefined() {
        return this == Undefined;
    }
}
