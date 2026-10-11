package com.onyx.android.sdk.base.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0000j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/SortOrder;", "", "(Ljava/lang/String;I)V", "reverse", "Asc", "Desc", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SortOrder {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SortOrder[] $VALUES;
    public static final SortOrder Asc = new SortOrder("Asc", 0);
    public static final SortOrder Desc = new SortOrder("Desc", 1);

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SortOrder.values().length];
            try {
                iArr[SortOrder.Desc.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SortOrder.Asc.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ SortOrder[] $values() {
        return new SortOrder[]{Asc, Desc};
    }

    static {
        SortOrder[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SortOrder(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SortOrder> getEntries() {
        return $ENTRIES;
    }

    public static SortOrder valueOf(String str) {
        return (SortOrder) Enum.valueOf(SortOrder.class, str);
    }

    public static SortOrder[] values() {
        return (SortOrder[]) $VALUES.clone();
    }

    @NotNull
    public final SortOrder reverse() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        return i != 1 ? i != 2 ? Desc : Desc : Asc;
    }
}
