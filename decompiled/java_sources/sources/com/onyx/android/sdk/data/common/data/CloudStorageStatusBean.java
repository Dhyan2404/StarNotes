package com.onyx.android.sdk.data.common.data;

import com.alibaba.fastjson2.annotation.JSONField;
import java.io.Serializable;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0003J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0005H\u0007J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0005H\u0003R>\u0010\u0003\u001a&\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004j\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u0001`\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\r8G¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\u0014\u001a\u00020\r8G¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000f¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;", "Ljava/io/Serializable;", "()V", "data", "Ljava/util/LinkedHashMap;", "", "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;", "Lkotlin/collections/LinkedHashMap;", "getData", "()Ljava/util/LinkedHashMap;", "setData", "(Ljava/util/LinkedHashMap;)V", "total", "", "getTotal", "()J", "setTotal", "(J)V", "totalSize", "getTotalSize", "usedSize", "getUsedSize", "getDataBeanData", "key", "getName", "getSize", "hasType", "", "Companion", "DataBean", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CloudStorageStatusBean implements Serializable {

    @NotNull
    public static final String KEY_FREE = "left";

    @Nullable
    private LinkedHashMap<String, DataBean> data;
    private long total = -1;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;", "Ljava/io/Serializable;", "()V", "data", "", "getData", "()J", "setData", "(J)V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DataBean implements Serializable {
        private long data;

        @Nullable
        private String name;

        public final long getData() {
            return this.data;
        }

        @Nullable
        public final String getName() {
            return this.name;
        }

        public final void setData(long j) {
            this.data = j;
        }

        public final void setName(@Nullable String str) {
            this.name = str;
        }
    }

    private final long getDataBeanData(String key) {
        if (!hasType(key)) {
            return 0L;
        }
        LinkedHashMap<String, DataBean> linkedHashMap = this.data;
        Intrinsics.checkNotNull(linkedHashMap);
        DataBean dataBean = linkedHashMap.get(key);
        Intrinsics.checkNotNull(dataBean);
        return dataBean.getData();
    }

    @JSONField(deserialize = false, serialize = false)
    private final String getName(String key) {
        if (!hasType(key)) {
            return "";
        }
        LinkedHashMap<String, DataBean> linkedHashMap = this.data;
        Intrinsics.checkNotNull(linkedHashMap);
        DataBean dataBean = linkedHashMap.get(key);
        Intrinsics.checkNotNull(dataBean);
        return dataBean.getName();
    }

    @JSONField(deserialize = false, serialize = false)
    private final boolean hasType(String key) {
        LinkedHashMap<String, DataBean> linkedHashMap = this.data;
        if (linkedHashMap != null) {
            Intrinsics.checkNotNull(linkedHashMap);
            if (linkedHashMap.get(key) != null) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final LinkedHashMap<String, DataBean> getData() {
        return this.data;
    }

    @JSONField(deserialize = false, serialize = false)
    public final long getSize(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        LinkedHashMap<String, DataBean> linkedHashMap = this.data;
        Intrinsics.checkNotNull(linkedHashMap);
        if (linkedHashMap.containsKey(key)) {
            return getDataBeanData(key);
        }
        return 0L;
    }

    public final long getTotal() {
        return this.total;
    }

    @JSONField(deserialize = false, serialize = false)
    public final long getTotalSize() {
        if (this.total == -1) {
            this.total = 0L;
            LinkedHashMap<String, DataBean> linkedHashMap = this.data;
            Intrinsics.checkNotNull(linkedHashMap);
            for (String str : linkedHashMap.keySet()) {
                Intrinsics.checkNotNull(str);
                if (hasType(str)) {
                    this.total += getDataBeanData(str);
                }
            }
        }
        return this.total;
    }

    @JSONField(deserialize = false, serialize = false)
    public final long getUsedSize() {
        return getTotalSize() - getSize("left");
    }

    public final void setData(@Nullable LinkedHashMap<String, DataBean> linkedHashMap) {
        this.data = linkedHashMap;
    }

    public final void setTotal(long j) {
        this.total = j;
    }
}
