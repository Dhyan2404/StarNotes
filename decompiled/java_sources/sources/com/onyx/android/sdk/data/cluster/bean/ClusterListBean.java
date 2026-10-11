package com.onyx.android.sdk.data.cluster.bean;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/bean/ClusterListBean;", "Ljava/io/Serializable;", "()V", "count", "", "getCount", "()I", "setCount", "(I)V", "results", "", "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;", "getResults", "()Ljava/util/List;", "setResults", "(Ljava/util/List;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ClusterListBean implements Serializable {
    private int count;

    @Nullable
    private List<ClusterBean> results;

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final List<ClusterBean> getResults() {
        return this.results;
    }

    public final void setCount(int i) {
        this.count = i;
    }

    public final void setResults(@Nullable List<ClusterBean> list) {
        this.results = list;
    }
}
