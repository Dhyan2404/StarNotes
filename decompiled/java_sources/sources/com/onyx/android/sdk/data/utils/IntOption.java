package com.onyx.android.sdk.data.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000b\u001a\u00020\u0007H\u0016J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/IntOption;", "Lcom/onyx/android/sdk/data/utils/BaseOption;", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "defaultValue", "", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;I)V", "getDefaultValue", "()I", "get", "put", "", "value", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class IntOption extends BaseOption {
    private final int defaultValue;

    public /* synthetic */ IntOption(MMKV mmkv, String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(mmkv, str, (i2 & 4) != 0 ? 0 : i);
    }

    public int get() {
        return getParent().getInt(getKey(), this.defaultValue);
    }

    public final int getDefaultValue() {
        return this.defaultValue;
    }

    public final void put(int value) {
        getParent().putInt(getKey(), value);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntOption(@NotNull MMKV parent, @NotNull String key, int i) {
        super(parent, key);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        this.defaultValue = i;
    }
}
