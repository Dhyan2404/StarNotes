package com.onyx.android.sdk.data.utils;

import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/MigrateIntOption;", "Lcom/onyx/android/sdk/data/utils/IntOption;", "parent", "Lcom/tencent/mmkv/MMKV;", "oldKey", "", "key", "defaultValue", "", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;I)V", "get", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MigrateIntOption extends IntOption {

    @NotNull
    private final String oldKey;

    public /* synthetic */ MigrateIntOption(MMKV mmkv, String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(mmkv, str, str2, (i2 & 8) != 0 ? 0 : i);
    }

    @Override // com.onyx.android.sdk.data.utils.IntOption
    public int get() {
        if (!getParent().contains(getKey()) && getParent().contains(this.oldKey)) {
            int i = getParent().getInt(this.oldKey, getDefaultValue());
            put(i);
            getParent().removeValueForKey(this.oldKey);
            return i;
        }
        return super.get();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MigrateIntOption(@NotNull MMKV parent, @NotNull String oldKey, @NotNull String key, int i) {
        super(parent, key, i);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(oldKey, "oldKey");
        Intrinsics.checkNotNullParameter(key, "key");
        this.oldKey = oldKey;
    }
}
