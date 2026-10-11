package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/NoteDustbinFuncType;", "", "(Ljava/lang/String;I)V", "RESTORE", "DELETE", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NoteDustbinFuncType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NoteDustbinFuncType[] $VALUES;
    public static final NoteDustbinFuncType RESTORE = new NoteDustbinFuncType("RESTORE", 0);
    public static final NoteDustbinFuncType DELETE = new NoteDustbinFuncType("DELETE", 1);

    private static final /* synthetic */ NoteDustbinFuncType[] $values() {
        return new NoteDustbinFuncType[]{RESTORE, DELETE};
    }

    static {
        NoteDustbinFuncType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private NoteDustbinFuncType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<NoteDustbinFuncType> getEntries() {
        return $ENTRIES;
    }

    public static NoteDustbinFuncType valueOf(String str) {
        return (NoteDustbinFuncType) Enum.valueOf(NoteDustbinFuncType.class, str);
    }

    public static NoteDustbinFuncType[] values() {
        return (NoteDustbinFuncType[]) $VALUES.clone();
    }
}
