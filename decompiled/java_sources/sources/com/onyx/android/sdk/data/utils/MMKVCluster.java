package com.onyx.android.sdk.data.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u00020\u0006J\u0012\u0010\u0007\u001a\u00020\b*\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/MMKVCluster;", "", "()V", MMKVCluster.ONYX_CLUSTER_SYSTEM_KEY, "", "getClusterList", "Lcom/onyx/android/sdk/data/utils/MMKVUtils;", "saveClusterList", "", "value", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MMKVCluster {

    @NotNull
    public static final MMKVCluster INSTANCE = new MMKVCluster();

    @NotNull
    private static final String ONYX_CLUSTER_SYSTEM_KEY = "ONYX_CLUSTER_SYSTEM_KEY";

    private MMKVCluster() {
    }

    @Nullable
    public final String getClusterList(@NotNull MMKVUtils mMKVUtils) {
        Intrinsics.checkNotNullParameter(mMKVUtils, "<this>");
        return mMKVUtils.getString(ONYX_CLUSTER_SYSTEM_KEY, "");
    }

    public final void saveClusterList(@NotNull MMKVUtils mMKVUtils, @NotNull String value) {
        Intrinsics.checkNotNullParameter(mMKVUtils, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        mMKVUtils.putString(ONYX_CLUSTER_SYSTEM_KEY, value);
    }
}
