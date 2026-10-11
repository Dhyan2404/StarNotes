package com.onyx.android.sdk.data.utils;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\fJ\b\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/BaseOption;", "", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)V", "getKey", "()Ljava/lang/String;", Constants.GET_PARENT, "()Lcom/tencent/mmkv/MMKV;", "has", "", SyncConstant.SYNC_ACTION_REMOVE, "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class BaseOption {

    @NotNull
    private final String key;

    @NotNull
    private final MMKV parent;

    public BaseOption(@NotNull MMKV parent, @NotNull String key) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        this.parent = parent;
        this.key = key;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final MMKV getParent() {
        return this.parent;
    }

    public final boolean has() {
        return this.parent.containsKey(this.key);
    }

    public void remove() {
        this.parent.remove(this.key);
    }
}
