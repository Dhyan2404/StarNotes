package com.onyx.android.sdk.textbox.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/TransformType;", "", "(Ljava/lang/String;I)V", "TRANSLATE", "RESIZE_L", "RESIZE_R", "RESIZE_T", "RESIZE_B", "RESIZE_TL", "RESIZE_TR", "RESIZE_BL", "RESIZE_BR", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TransformType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TransformType[] $VALUES;
    public static final TransformType TRANSLATE = new TransformType("TRANSLATE", 0);
    public static final TransformType RESIZE_L = new TransformType("RESIZE_L", 1);
    public static final TransformType RESIZE_R = new TransformType("RESIZE_R", 2);
    public static final TransformType RESIZE_T = new TransformType("RESIZE_T", 3);
    public static final TransformType RESIZE_B = new TransformType("RESIZE_B", 4);
    public static final TransformType RESIZE_TL = new TransformType("RESIZE_TL", 5);
    public static final TransformType RESIZE_TR = new TransformType("RESIZE_TR", 6);
    public static final TransformType RESIZE_BL = new TransformType("RESIZE_BL", 7);
    public static final TransformType RESIZE_BR = new TransformType("RESIZE_BR", 8);

    private static final /* synthetic */ TransformType[] $values() {
        return new TransformType[]{TRANSLATE, RESIZE_L, RESIZE_R, RESIZE_T, RESIZE_B, RESIZE_TL, RESIZE_TR, RESIZE_BL, RESIZE_BR};
    }

    static {
        TransformType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private TransformType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TransformType> getEntries() {
        return $ENTRIES;
    }

    public static TransformType valueOf(String str) {
        return (TransformType) Enum.valueOf(TransformType.class, str);
    }

    public static TransformType[] values() {
        return (TransformType[]) $VALUES.clone();
    }
}
