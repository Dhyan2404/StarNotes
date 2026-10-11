package com.onyx.android.sdk.data.cluster.bean;

import androidx.core.provider.FontsContractCompat;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0018B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;", "", "data", "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;", "message", "", FontsContractCompat.Columns.RESULT_CODE, "", "(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;Ljava/lang/String;I)V", "getData", "()Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;", "getMessage", "()Ljava/lang/String;", "getResult_code", "()I", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "Data", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PriorityClusterResultBean {

    @NotNull
    private final Data data;

    @NotNull
    private final String message;
    private final int result_code;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;", "", "serverInfo", "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;", "(Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;)V", "getServerInfo", "()Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final /* data */ class Data {

        @Nullable
        private final ClusterBean serverInfo;

        /* JADX WARN: Multi-variable type inference failed */
        public Data() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public static /* synthetic */ Data copy$default(Data data, ClusterBean clusterBean, int i, Object obj) {
            if ((i & 1) != 0) {
                clusterBean = data.serverInfo;
            }
            return data.copy(clusterBean);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final ClusterBean getServerInfo() {
            return this.serverInfo;
        }

        @NotNull
        public final Data copy(@Nullable ClusterBean serverInfo) {
            return new Data(serverInfo);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Data) && Intrinsics.areEqual(this.serverInfo, ((Data) other).serverInfo);
        }

        @Nullable
        public final ClusterBean getServerInfo() {
            return this.serverInfo;
        }

        public int hashCode() {
            ClusterBean clusterBean = this.serverInfo;
            if (clusterBean == null) {
                return 0;
            }
            return clusterBean.hashCode();
        }

        @NotNull
        public String toString() {
            return "Data(serverInfo=" + this.serverInfo + ')';
        }

        public Data(@Nullable ClusterBean clusterBean) {
            this.serverInfo = clusterBean;
        }

        public /* synthetic */ Data(ClusterBean clusterBean, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : clusterBean);
        }
    }

    public PriorityClusterResultBean(@NotNull Data data, @NotNull String message, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(message, "message");
        this.data = data;
        this.message = message;
        this.result_code = i;
    }

    public static /* synthetic */ PriorityClusterResultBean copy$default(PriorityClusterResultBean priorityClusterResultBean, Data data, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = priorityClusterResultBean.data;
        }
        if ((i2 & 2) != 0) {
            str = priorityClusterResultBean.message;
        }
        if ((i2 & 4) != 0) {
            i = priorityClusterResultBean.result_code;
        }
        return priorityClusterResultBean.copy(data, str, i);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* renamed from: component3, reason: from getter */
    public final int getResult_code() {
        return this.result_code;
    }

    @NotNull
    public final PriorityClusterResultBean copy(@NotNull Data data, @NotNull String message, int result_code) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(message, "message");
        return new PriorityClusterResultBean(data, message, result_code);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PriorityClusterResultBean)) {
            return false;
        }
        PriorityClusterResultBean priorityClusterResultBean = (PriorityClusterResultBean) other;
        return Intrinsics.areEqual(this.data, priorityClusterResultBean.data) && Intrinsics.areEqual(this.message, priorityClusterResultBean.message) && this.result_code == priorityClusterResultBean.result_code;
    }

    @NotNull
    public final Data getData() {
        return this.data;
    }

    @NotNull
    public final String getMessage() {
        return this.message;
    }

    public final int getResult_code() {
        return this.result_code;
    }

    public int hashCode() {
        return (((this.data.hashCode() * 31) + this.message.hashCode()) * 31) + Integer.hashCode(this.result_code);
    }

    @NotNull
    public String toString() {
        return "PriorityClusterResultBean(data=" + this.data + ", message=" + this.message + ", result_code=" + this.result_code + ')';
    }
}
