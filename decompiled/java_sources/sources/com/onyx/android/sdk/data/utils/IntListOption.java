package com.onyx.android.sdk.data.utils;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.extension.IntList;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u000e\u001a\u00020\u0007J\u001a\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00100\u0012J\u0006\u0010\u0013\u001a\u00020\u0010J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\u0015\u001a\u00020\u0016R\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/IntListOption;", "Lcom/onyx/android/sdk/data/utils/BaseOption;", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "defaultValue", "Lcom/onyx/android/sdk/base/extension/IntList;", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/IntList;)V", "value", "getValue", "()Lcom/onyx/android/sdk/base/extension/IntList;", "setValue", "(Lcom/onyx/android/sdk/base/extension/IntList;)V", "get", "getAndPut", "", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function1;", "save", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "size", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class IntListOption extends BaseOption {

    @NotNull
    private IntList value;

    public /* synthetic */ IntListOption(MMKV mmkv, String str, IntList intList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mmkv, str, (i & 4) != 0 ? new IntList() : intList);
    }

    @NotNull
    /* renamed from: get, reason: from getter */
    public final IntList getValue() {
        return this.value;
    }

    public final void getAndPut(@NotNull Function1<? super IntList, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        IntList value = getValue();
        block.invoke(value);
        set(value);
    }

    @NotNull
    public final IntList getValue() {
        return this.value;
    }

    public final void save() {
        MMKVUtils.INSTANCE.putObject(getParent(), getKey(), this.value);
    }

    public final void set(@NotNull IntList value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
        save();
    }

    public final void setValue(@NotNull IntList intList) {
        Intrinsics.checkNotNullParameter(intList, "<set-?>");
        this.value = intList;
    }

    public final int size() {
        return getValue().size();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntListOption(@NotNull MMKV parent, @NotNull String key, @NotNull IntList defaultValue) {
        super(parent, key);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        this.value = (IntList) MMKVUtils.INSTANCE.getObject(parent, key, IntList.class, defaultValue);
    }
}
