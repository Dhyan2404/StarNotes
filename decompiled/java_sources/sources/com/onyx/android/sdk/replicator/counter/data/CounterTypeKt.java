package com.onyx.android.sdk.replicator.counter.data;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, m61528d2 = {"isCountDownType", "", "Lcom/onyx/android/sdk/replicator/counter/data/CounterType;", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CounterTypeKt {
    public static final boolean isCountDownType(@NotNull CounterType counterType) {
        Intrinsics.checkNotNullParameter(counterType, "<this>");
        return counterType == CounterType.COUNT_DOWN || counterType == CounterType.COUNT_DOWN_MULTIPLE;
    }
}
