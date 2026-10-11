package com.onyx.android.sdk.data.utils;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.tencent.mmkv.MMKV;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\"\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ(\u0010\u000f\u001a\u00020\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u00112\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007J\u0016\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/StringListOption;", "Lcom/onyx/android/sdk/data/utils/BaseOption;", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "defaultValue", "Lcom/onyx/android/sdk/base/extension/StringList;", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringList;)V", "add", "item", "distinct", "", "trimSize", "", "addAll", FirebaseAnalytics.Param.ITEMS, "", "get", "put", "", "value", "update", FirebaseAnalytics.Param.INDEX, "itemValue", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StringListOption extends BaseOption {

    @NotNull
    private StringList defaultValue;

    public /* synthetic */ StringListOption(MMKV mmkv, String str, StringList stringList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mmkv, str, (i & 4) != 0 ? new StringList() : stringList);
    }

    public static /* synthetic */ StringList add$default(StringListOption stringListOption, String str, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = -1;
        }
        return stringListOption.add(str, z, i);
    }

    public static /* synthetic */ StringList addAll$default(StringListOption stringListOption, List list, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = -1;
        }
        return stringListOption.addAll(list, z, i);
    }

    @NotNull
    public final StringList add(@NotNull String item, boolean distinct, int trimSize) {
        Intrinsics.checkNotNullParameter(item, "item");
        return addAll(CollectionKt.asList(item), distinct, trimSize);
    }

    @NotNull
    public final StringList addAll(@NotNull List<String> items, boolean distinct, int trimSize) {
        Intrinsics.checkNotNullParameter(items, "items");
        StringList stringList = get();
        if (distinct) {
            stringList.removeAll(items);
        }
        stringList.addAll(items);
        if (trimSize > 0 && stringList.size() > trimSize) {
            stringList = TypeExtKt.toStringList(CollectionKt.safelySubList(stringList, trimSize / 2, trimSize));
        }
        put(stringList);
        return stringList;
    }

    @NotNull
    public final StringList get() {
        return (StringList) MMKVUtils.INSTANCE.getObject(getParent(), getKey(), StringList.class, this.defaultValue);
    }

    public final void put(@NotNull StringList value) {
        Intrinsics.checkNotNullParameter(value, "value");
        MMKVUtils.INSTANCE.putObject(getParent(), getKey(), value);
    }

    public final void update(int index, @NotNull String itemValue) {
        Intrinsics.checkNotNullParameter(itemValue, "itemValue");
        StringList stringList = get();
        stringList.set(index, itemValue);
        put(stringList);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringListOption(@NotNull MMKV parent, @NotNull String key, @NotNull StringList defaultValue) {
        super(parent, key);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        this.defaultValue = defaultValue;
    }
}
