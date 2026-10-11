package com.onyx.android.sdk.data.cluster;

import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\n\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\u000b\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u0010\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004J\"\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004J\u001a\u0010\u0013\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/ClusterUtils;", "", "()V", "CLUSTER_LOG", "", "d", "", "cls", "Ljava/lang/Class;", "message", "e", "i", "isCBTestCluster", "", "clusterId", "isTestCluster", "report", "benchmark", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "w", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ClusterUtils {

    @NotNull
    public static final String CLUSTER_LOG = "CL--> ";

    @NotNull
    public static final ClusterUtils INSTANCE = new ClusterUtils();

    private ClusterUtils() {
    }

    /* renamed from: d */
    public final void m32941d(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32035d(cls, CLUSTER_LOG + message, new Object[0]);
    }

    /* renamed from: e */
    public final void m32942e(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32044e(cls, CLUSTER_LOG + message, new Object[0]);
    }

    /* renamed from: i */
    public final void m32943i(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32052i(cls, CLUSTER_LOG + message, new Object[0]);
    }

    public final boolean isCBTestCluster(@Nullable String clusterId) {
        return StringUtils.equals(clusterId, ClusterConstant.INSTANCE.getCOUCH_BASE_TEST_SERVER_ID());
    }

    public final boolean isTestCluster(@Nullable String clusterId) {
        return StringUtils.startsWith(clusterId, ClusterConstant.INSTANCE.getTEST_SERVER_ID());
    }

    public final void report(@NotNull Benchmark benchmark, @NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(benchmark, "benchmark");
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        benchmark.report("CL-->  " + cls.getSimpleName() + ' ' + message);
    }

    /* renamed from: w */
    public final void m32944w(@NotNull Class<?> cls, @NotNull String message) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(message, "message");
        Debug.INSTANCE.m32059w(cls, CLUSTER_LOG + message, new Object[0]);
    }
}
