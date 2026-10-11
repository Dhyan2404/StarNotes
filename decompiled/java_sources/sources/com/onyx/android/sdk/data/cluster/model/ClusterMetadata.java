package com.onyx.android.sdk.data.cluster.model;

import com.onyx.android.sdk.data.cluster.ClusterConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/model/ClusterMetadata;", "", "defaultCluster", "", "fixed", "", "(Ljava/lang/String;Z)V", "getDefaultCluster", "()Ljava/lang/String;", "getFixed", Constants.BOOLEAN_VALUE_SIG, "component1", "component2", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ClusterMetadata {

    @NotNull
    private final String defaultCluster;
    private final boolean fixed;

    /* JADX WARN: Multi-variable type inference failed */
    public ClusterMetadata() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ ClusterMetadata copy$default(ClusterMetadata clusterMetadata, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = clusterMetadata.defaultCluster;
        }
        if ((i & 2) != 0) {
            z = clusterMetadata.fixed;
        }
        return clusterMetadata.copy(str, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getDefaultCluster() {
        return this.defaultCluster;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getFixed() {
        return this.fixed;
    }

    @NotNull
    public final ClusterMetadata copy(@NotNull String defaultCluster, boolean fixed) {
        Intrinsics.checkNotNullParameter(defaultCluster, "defaultCluster");
        return new ClusterMetadata(defaultCluster, fixed);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ClusterMetadata)) {
            return false;
        }
        ClusterMetadata clusterMetadata = (ClusterMetadata) other;
        return Intrinsics.areEqual(this.defaultCluster, clusterMetadata.defaultCluster) && this.fixed == clusterMetadata.fixed;
    }

    @NotNull
    public final String getDefaultCluster() {
        return this.defaultCluster;
    }

    public final boolean getFixed() {
        return this.fixed;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.defaultCluster.hashCode() * 31;
        boolean z = this.fixed;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "ClusterMetadata(defaultCluster=" + this.defaultCluster + ", fixed=" + this.fixed + ')';
    }

    public ClusterMetadata(@NotNull String defaultCluster, boolean z) {
        Intrinsics.checkNotNullParameter(defaultCluster, "defaultCluster");
        this.defaultCluster = defaultCluster;
        this.fixed = z;
    }

    public /* synthetic */ ClusterMetadata(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ClusterConstant.INSTANCE.getCN_SERVER_ID() : str, (i & 2) != 0 ? true : z);
    }
}
