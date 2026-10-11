package com.onyx.android.sdk.data.common.oss;

import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 %2\u00020\u0001:\u0001%B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0000¢\u0006\u0002\u0010\u0004J\u000e\u0010#\u001a\u00020$2\u0006\u0010\u0003\u001a\u00020\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\bR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\b\"\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OssConfig;", "", "()V", AbstractLogger.CONFIG, "(Lcom/onyx/android/sdk/data/common/oss/OssConfig;)V", "bucketName", "", "getBucketName", "()Ljava/lang/String;", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "getClusterInfo", "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "setClusterInfo", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V", "endPoint", "getEndPoint", "keyId", "keySecret", "ossBucket", "Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;", "getOssBucket", "()Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;", "setOssBucket", "(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V", "ossSTS", "Lcom/onyx/android/sdk/data/common/oss/OssSTS;", "getOssSTS", "()Lcom/onyx/android/sdk/data/common/oss/OssSTS;", "setOssSTS", "(Lcom/onyx/android/sdk/data/common/oss/OssSTS;)V", "token", "getToken", "setToken", "(Ljava/lang/String;)V", "isChanged", "", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OssConfig {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private ClusterInfo clusterInfo;

    @Nullable
    private String keyId;

    @Nullable
    private String keySecret;

    @NotNull
    private OssConfigBucket ossBucket;

    @NotNull
    private OssSTS ossSTS;

    @Nullable
    private String token;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OssConfig$Companion;", "", "()V", "AIOssConfig", "Lcom/onyx/android/sdk/data/common/oss/OssConfig;", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "DeprecatedBackupOssConfig", "docConvertOssConfig", "feedbackOssConfig", "noteOssConfig", "onyxOssConfig", "testOssConfig", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final OssConfig onyxOssConfig(ClusterInfo clusterInfo) {
            OssConfig ossConfig = new OssConfig();
            ossConfig.setClusterInfo(clusterInfo);
            ossConfig.setOssSTS(new OssSTS(Constant.USE_DEV_HOST ? Constant.INSTANCE.getDEV_CONTENT_API_BASE() : clusterInfo.loadOnyxSend2BooxApiBaseUrl()));
            return ossConfig;
        }

        @NotNull
        public final OssConfig AIOssConfig(@NotNull ClusterInfo clusterInfo) {
            Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
            OssConfigInfo ossConfig = clusterInfo.getOssConfig();
            OssConfig onyxOssConfig = onyxOssConfig(clusterInfo);
            onyxOssConfig.setOssBucket(OssConfigBucket.INSTANCE.create(ossConfig.getOssAIBucket(), ossConfig.getOssAIEndPoint()));
            return onyxOssConfig;
        }

        @NotNull
        public final OssConfig DeprecatedBackupOssConfig(@NotNull ClusterInfo clusterInfo) {
            Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
            OssConfigInfo createDefaultOss = OssConfigInfo.INSTANCE.createDefaultOss();
            OssConfig onyxOssConfig = onyxOssConfig(clusterInfo);
            onyxOssConfig.setOssBucket(OssConfigBucket.INSTANCE.create(createDefaultOss.getOssDeprecatedBucket(), createDefaultOss.getOssDeprecatedEndPoint()));
            return onyxOssConfig;
        }

        @NotNull
        public final OssConfig docConvertOssConfig(@NotNull ClusterInfo clusterInfo) {
            Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
            OssConfigInfo ossConfig = clusterInfo.getOssConfig();
            OssConfig onyxOssConfig = onyxOssConfig(clusterInfo);
            onyxOssConfig.setOssBucket(OssConfigBucket.INSTANCE.create(ossConfig.getOssImmBukcet(), ossConfig.getOssImmEndpoint()));
            return onyxOssConfig;
        }

        @NotNull
        public final OssConfig feedbackOssConfig(@NotNull ClusterInfo clusterInfo) {
            Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
            OssConfigInfo ossConfig = clusterInfo.getOssConfig();
            OssConfig onyxOssConfig = onyxOssConfig(clusterInfo);
            onyxOssConfig.setOssBucket(OssConfigBucket.INSTANCE.create(ossConfig.getOssLogBucket(), ossConfig.getOssLogEndpoint()));
            return onyxOssConfig;
        }

        @NotNull
        public final OssConfig noteOssConfig(@NotNull ClusterInfo clusterInfo) {
            Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
            OssConfigInfo ossConfig = clusterInfo.getOssConfig();
            OssConfig onyxOssConfig = onyxOssConfig(clusterInfo);
            onyxOssConfig.setOssBucket(OssConfigBucket.INSTANCE.create(ossConfig.getOssNoteBucket(), ossConfig.getOssNoteEndPoint()));
            return onyxOssConfig;
        }

        @NotNull
        public final OssConfig testOssConfig(@NotNull ClusterInfo clusterInfo) {
            Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
            OssConfigInfo createDefaultOss = OssConfigInfo.INSTANCE.createDefaultOss();
            OssConfig onyxOssConfig = onyxOssConfig(clusterInfo);
            onyxOssConfig.setOssBucket(OssConfigBucket.INSTANCE.create(createDefaultOss.getOssTestBucket(), createDefaultOss.getOssTestEndpoint()));
            return onyxOssConfig;
        }

        private Companion() {
        }
    }

    public OssConfig() {
        this.ossSTS = new OssSTS();
        this.ossBucket = new OssConfigBucket();
    }

    @Nullable
    public final String getBucketName() {
        return this.ossBucket.getBucketName();
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @Nullable
    public final String getEndPoint() {
        return this.ossBucket.getEndPoint();
    }

    @NotNull
    public final OssConfigBucket getOssBucket() {
        return this.ossBucket;
    }

    @NotNull
    public final OssSTS getOssSTS() {
        return this.ossSTS;
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    public final boolean isChanged(@NotNull OssConfig config) {
        ClusterInfo clusterInfo;
        Intrinsics.checkNotNullParameter(config, "config");
        if (!StringUtils.equals(this.token, config.token) || (clusterInfo = this.clusterInfo) == null) {
            return true;
        }
        Intrinsics.checkNotNull(clusterInfo);
        String clusterId = clusterInfo.getClusterId();
        ClusterInfo clusterInfo2 = config.clusterInfo;
        return !StringUtils.equals(clusterId, clusterInfo2 != null ? clusterInfo2.getClusterId() : null);
    }

    public final void setClusterInfo(@Nullable ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
    }

    public final void setOssBucket(@NotNull OssConfigBucket ossConfigBucket) {
        Intrinsics.checkNotNullParameter(ossConfigBucket, "<set-?>");
        this.ossBucket = ossConfigBucket;
    }

    public final void setOssSTS(@NotNull OssSTS ossSTS) {
        Intrinsics.checkNotNullParameter(ossSTS, "<set-?>");
        this.ossSTS = ossSTS;
    }

    public final void setToken(@Nullable String str) {
        this.token = str;
    }

    public OssConfig(@NotNull OssConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.ossSTS = new OssSTS();
        this.ossBucket = new OssConfigBucket();
        this.keyId = config.keyId;
        this.keySecret = config.keySecret;
        this.token = config.token;
        this.ossSTS = new OssSTS(config.ossSTS);
        this.ossBucket = new OssConfigBucket(config.ossBucket);
        this.clusterInfo = config.clusterInfo;
    }
}
