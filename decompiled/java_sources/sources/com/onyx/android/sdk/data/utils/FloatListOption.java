package com.onyx.android.sdk.data.utils;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.extension.FloatList;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0007J\u001a\u0010\u0015\u001a\u00020\u000f2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000f0\u0017J\u000e\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u001a\u001a\u00020\u001bR\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/FloatListOption;", "Lcom/onyx/android/sdk/data/utils/BaseOption;", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "defaultValue", "Lcom/onyx/android/sdk/base/extension/FloatList;", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/FloatList;)V", "list", "getList", "()Lcom/onyx/android/sdk/base/extension/FloatList;", "setList", "(Lcom/onyx/android/sdk/base/extension/FloatList;)V", "add", "", "value", "", Keywords.FUNC_CONTAINS_STRING, "", "get", "getAndPut", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function1;", "put", SyncConstant.SYNC_ACTION_REMOVE, "size", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FloatListOption extends BaseOption {

    @NotNull
    private FloatList list;

    public /* synthetic */ FloatListOption(MMKV mmkv, String str, FloatList floatList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mmkv, str, (i & 4) != 0 ? new FloatList() : floatList);
    }

    public final void add(float value) {
        this.list.add(Float.valueOf(value));
        put(this.list);
    }

    public final boolean contains(float value) {
        return this.list.contains((Object) Float.valueOf(value));
    }

    @NotNull
    /* renamed from: get, reason: from getter */
    public final FloatList getList() {
        return this.list;
    }

    public final void getAndPut(@NotNull Function1<? super FloatList, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        FloatList list = getList();
        block.invoke(list);
        put(list);
    }

    @NotNull
    public final FloatList getList() {
        return this.list;
    }

    public final void put(@NotNull FloatList value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.list = value;
        MMKVUtils.INSTANCE.putObject(getParent(), getKey(), value);
    }

    public final void remove(float value) {
        this.list.remove((Object) Float.valueOf(value));
        put(this.list);
    }

    public final void setList(@NotNull FloatList floatList) {
        Intrinsics.checkNotNullParameter(floatList, "<set-?>");
        this.list = floatList;
    }

    public final int size() {
        return this.list.size();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatListOption(@NotNull MMKV parent, @NotNull String key, @NotNull FloatList defaultValue) {
        super(parent, key);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        this.list = (FloatList) MMKVUtils.INSTANCE.getObject(parent, key, FloatList.class, defaultValue);
    }
}
