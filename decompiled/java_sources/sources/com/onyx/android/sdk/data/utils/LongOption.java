package com.onyx.android.sdk.data.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/LongOption;", "Lcom/onyx/android/sdk/data/utils/BaseOption;", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "defaultValue", "", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;J)V", "get", "put", "", "value", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LongOption extends BaseOption {
    private final long defaultValue;

    public /* synthetic */ LongOption(MMKV mmkv, String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mmkv, str, (i & 4) != 0 ? 0L : j);
    }

    public final long get() {
        return getParent().getLong(getKey(), this.defaultValue);
    }

    public final void put(long value) {
        getParent().putLong(getKey(), value);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongOption(@NotNull MMKV parent, @NotNull String key, long j) {
        super(parent, key);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        this.defaultValue = j;
    }
}
