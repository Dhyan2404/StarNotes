package com.onyx.android.sdk.data.cluster.bean;

import androidx.core.provider.FontsContractCompat;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/bean/ClusterResultBean;", "Ljava/io/Serializable;", "()V", "data", "Lcom/onyx/android/sdk/data/cluster/bean/ClusterListBean;", "getData", "()Lcom/onyx/android/sdk/data/cluster/bean/ClusterListBean;", "setData", "(Lcom/onyx/android/sdk/data/cluster/bean/ClusterListBean;)V", "message", "", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", FontsContractCompat.Columns.RESULT_CODE, "getResult_code", "setResult_code", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ClusterResultBean implements Serializable {

    @Nullable
    private ClusterListBean data;

    @Nullable
    private String message;

    @Nullable
    private String result_code;

    @Nullable
    public final ClusterListBean getData() {
        return this.data;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    @Nullable
    public final String getResult_code() {
        return this.result_code;
    }

    public final void setData(@Nullable ClusterListBean clusterListBean) {
        this.data = clusterListBean;
    }

    public final void setMessage(@Nullable String str) {
        this.message = str;
    }

    public final void setResult_code(@Nullable String str) {
        this.result_code = str;
    }
}
