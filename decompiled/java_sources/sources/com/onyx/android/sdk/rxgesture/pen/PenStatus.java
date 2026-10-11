package com.onyx.android.sdk.rxgesture.pen;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;", "", "(Ljava/lang/String;I)V", "DOWN", "LONG_PRESS", "MOVING", "HOLDING", "UP", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PenStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PenStatus[] $VALUES;
    public static final PenStatus DOWN = new PenStatus("DOWN", 0);
    public static final PenStatus LONG_PRESS = new PenStatus("LONG_PRESS", 1);
    public static final PenStatus MOVING = new PenStatus("MOVING", 2);
    public static final PenStatus HOLDING = new PenStatus("HOLDING", 3);

    /* renamed from: UP */
    public static final PenStatus f46570UP = new PenStatus("UP", 4);

    private static final /* synthetic */ PenStatus[] $values() {
        return new PenStatus[]{DOWN, LONG_PRESS, MOVING, HOLDING, f46570UP};
    }

    static {
        PenStatus[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private PenStatus(String str, int i) {
    }

    @NotNull
    public static EnumEntries<PenStatus> getEntries() {
        return $ENTRIES;
    }

    public static PenStatus valueOf(String str) {
        return (PenStatus) Enum.valueOf(PenStatus.class, str);
    }

    public static PenStatus[] values() {
        return (PenStatus[]) $VALUES.clone();
    }
}
