package com.onyx.android.sdk.data.cluster.bean;

import com.onyx.android.sdk.data.cluster.model.ClusterHost;
import com.onyx.android.sdk.data.common.oss.OssConfigInfo;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\u001fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000e¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;", "Ljava/io/Serializable;", "()V", Http2ExchangeCodec.f103778h, "Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;", "getHost", "()Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;", "setHost", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;)V", "lang", "", "getLang", "()Ljava/lang/String;", "setLang", "(Ljava/lang/String;)V", "name", "getName", "setName", "ossConfig", "Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;", "getOssConfig", "()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;", "setOssConfig", "(Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;)V", "region", "getRegion", "setRegion", "serverId", "getServerId", "setServerId", "isValid", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ClusterBean implements Serializable {

    @Nullable
    private ClusterHost host;

    @Nullable
    private OssConfigInfo ossConfig;

    @Nullable
    private String region;

    @NotNull
    private String serverId = "";

    @NotNull
    private String name = "";

    @NotNull
    private String lang = "";

    @Nullable
    public final ClusterHost getHost() {
        return this.host;
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final OssConfigInfo getOssConfig() {
        return this.ossConfig;
    }

    @Nullable
    public final String getRegion() {
        return this.region;
    }

    @NotNull
    public final String getServerId() {
        return this.serverId;
    }

    public final boolean isValid() {
        ClusterHost clusterHost = this.host;
        if (clusterHost != null) {
            return clusterHost.isValid();
        }
        return false;
    }

    public final void setHost(@Nullable ClusterHost clusterHost) {
        this.host = clusterHost;
    }

    public final void setLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lang = str;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setOssConfig(@Nullable OssConfigInfo ossConfigInfo) {
        this.ossConfig = ossConfigInfo;
    }

    public final void setRegion(@Nullable String str) {
        this.region = str;
    }

    public final void setServerId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.serverId = str;
    }
}
