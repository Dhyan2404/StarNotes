package com.onyx.android.sdk.data.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/BooleanOption;", "Lcom/onyx/android/sdk/data/utils/BaseOption;", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "defaultValue", "", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V", "executeIfFirst", "", "runnable", "Ljava/lang/Runnable;", "get", "put", "value", "toggle", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BooleanOption extends BaseOption {
    private final boolean defaultValue;

    public /* synthetic */ BooleanOption(MMKV mmkv, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mmkv, str, (i & 4) != 0 ? false : z);
    }

    public final void executeIfFirst(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        if (get()) {
            return;
        }
        runnable.run();
        put(true);
    }

    public final boolean get() {
        return getParent().getBoolean(getKey(), this.defaultValue);
    }

    public final void put(boolean value) {
        getParent().putBoolean(getKey(), value);
    }

    public final boolean toggle() {
        put(!get());
        return get();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BooleanOption(@NotNull MMKV parent, @NotNull String key, boolean z) {
        super(parent, key);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        this.defaultValue = z;
    }
}
