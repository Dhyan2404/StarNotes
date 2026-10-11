package com.onyx.android.sdk.universal.editor.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/RotationType;", "", "degrees", "", "(Ljava/lang/String;II)V", "getDegrees", "()I", "ANTI_CLOCKWISE_90", "CLOCKWISE_90", "CLOCKWISE_180", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class RotationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RotationType[] $VALUES;
    private final int degrees;
    public static final RotationType ANTI_CLOCKWISE_90 = new RotationType("ANTI_CLOCKWISE_90", 0, -90);
    public static final RotationType CLOCKWISE_90 = new RotationType("CLOCKWISE_90", 1, 90);
    public static final RotationType CLOCKWISE_180 = new RotationType("CLOCKWISE_180", 2, 180);

    private static final /* synthetic */ RotationType[] $values() {
        return new RotationType[]{ANTI_CLOCKWISE_90, CLOCKWISE_90, CLOCKWISE_180};
    }

    static {
        RotationType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private RotationType(String str, int i, int i2) {
        this.degrees = i2;
    }

    @NotNull
    public static EnumEntries<RotationType> getEntries() {
        return $ENTRIES;
    }

    public static RotationType valueOf(String str) {
        return (RotationType) Enum.valueOf(RotationType.class, str);
    }

    public static RotationType[] values() {
        return (RotationType[]) $VALUES.clone();
    }

    public final int getDegrees() {
        return this.degrees;
    }
}
