package com.onyx.android.sdk.hwr.data.constant;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;", "", "(Ljava/lang/String;I)V", DebugCoroutineInfoImplKt.CREATED, "INITIALIZED", "OPENED", "PROCESSING", "CLEARED", "CLOSED", "DESTROYED", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRLifecycle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HWRLifecycle[] $VALUES;
    public static final HWRLifecycle CREATED = new HWRLifecycle(DebugCoroutineInfoImplKt.CREATED, 0);
    public static final HWRLifecycle INITIALIZED = new HWRLifecycle("INITIALIZED", 1);
    public static final HWRLifecycle OPENED = new HWRLifecycle("OPENED", 2);
    public static final HWRLifecycle PROCESSING = new HWRLifecycle("PROCESSING", 3);
    public static final HWRLifecycle CLEARED = new HWRLifecycle("CLEARED", 4);
    public static final HWRLifecycle CLOSED = new HWRLifecycle("CLOSED", 5);
    public static final HWRLifecycle DESTROYED = new HWRLifecycle("DESTROYED", 6);

    private static final /* synthetic */ HWRLifecycle[] $values() {
        return new HWRLifecycle[]{CREATED, INITIALIZED, OPENED, PROCESSING, CLEARED, CLOSED, DESTROYED};
    }

    static {
        HWRLifecycle[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private HWRLifecycle(String str, int i) {
    }

    @NotNull
    public static EnumEntries<HWRLifecycle> getEntries() {
        return $ENTRIES;
    }

    public static HWRLifecycle valueOf(String str) {
        return (HWRLifecycle) Enum.valueOf(HWRLifecycle.class, str);
    }

    public static HWRLifecycle[] values() {
        return (HWRLifecycle[]) $VALUES.clone();
    }
}
