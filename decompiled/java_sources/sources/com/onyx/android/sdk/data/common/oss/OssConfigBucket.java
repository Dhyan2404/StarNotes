package com.onyx.android.sdk.data.common.oss;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u001b\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006B\u000f\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0000¢\u0006\u0002\u0010\bR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;", "", "()V", "bucketName", "", "endPoint", "(Ljava/lang/String;Ljava/lang/String;)V", "bucket", "(Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;)V", "getBucketName", "()Ljava/lang/String;", "setBucketName", "(Ljava/lang/String;)V", "getEndPoint", "setEndPoint", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OssConfigBucket {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String bucketName;

    @Nullable
    private String endPoint;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/common/oss/OssConfigBucket;", "bucketName", "", "endPoint", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final OssConfigBucket create(@Nullable String bucketName, @Nullable String endPoint) {
            return new OssConfigBucket(bucketName, endPoint);
        }

        private Companion() {
        }
    }

    public OssConfigBucket() {
    }

    @JvmStatic
    @NotNull
    public static final OssConfigBucket create(@Nullable String str, @Nullable String str2) {
        return INSTANCE.create(str, str2);
    }

    @Nullable
    public final String getBucketName() {
        return this.bucketName;
    }

    @Nullable
    public final String getEndPoint() {
        return this.endPoint;
    }

    public final void setBucketName(@Nullable String str) {
        this.bucketName = str;
    }

    public final void setEndPoint(@Nullable String str) {
        this.endPoint = str;
    }

    public OssConfigBucket(@Nullable String str, @Nullable String str2) {
        this.bucketName = str;
        this.endPoint = str2;
    }

    public OssConfigBucket(@NotNull OssConfigBucket bucket) {
        Intrinsics.checkNotNullParameter(bucket, "bucket");
        this.bucketName = bucket.bucketName;
        this.endPoint = bucket.endPoint;
    }
}
