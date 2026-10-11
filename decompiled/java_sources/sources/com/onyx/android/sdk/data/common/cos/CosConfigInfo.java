package com.onyx.android.sdk.data.common.cos;

import com.onyx.android.sdk.data.cluster.ClusterManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u0011\u0010\f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0006¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cos/CosConfigInfo;", "", "()V", "bucket", "", "getBucket", "()Ljava/lang/String;", "setBucket", "(Ljava/lang/String;)V", "region", "getRegion", "setRegion", "stsServer", "getStsServer", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CosConfigInfo {

    @NotNull
    private final String stsServer = ClusterManager.INSTANCE.getCurClusterInfo().loadOnyxApiV2();

    @NotNull
    private String bucket = "";

    @NotNull
    private String region = "";

    @NotNull
    public final String getBucket() {
        return this.bucket;
    }

    @NotNull
    public final String getRegion() {
        return this.region;
    }

    @NotNull
    public final String getStsServer() {
        return this.stsServer;
    }

    public final void setBucket(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.bucket = str;
    }

    public final void setRegion(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.region = str;
    }
}
