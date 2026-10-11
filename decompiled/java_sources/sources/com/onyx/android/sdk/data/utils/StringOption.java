package com.onyx.android.sdk.data.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/StringOption;", "Lcom/onyx/android/sdk/data/utils/BaseOption;", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "defaultValue", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;)V", "get", "put", "", "value", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StringOption extends BaseOption {

    @NotNull
    private final String defaultValue;

    public /* synthetic */ StringOption(MMKV mmkv, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mmkv, str, (i & 4) != 0 ? "" : str2);
    }

    @Nullable
    public final String get() {
        return getParent().getString(getKey(), this.defaultValue);
    }

    public final void put(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getParent().putString(getKey(), value);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringOption(@NotNull MMKV parent, @NotNull String key, @NotNull String defaultValue) {
        super(parent, key);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        this.defaultValue = defaultValue;
    }
}
