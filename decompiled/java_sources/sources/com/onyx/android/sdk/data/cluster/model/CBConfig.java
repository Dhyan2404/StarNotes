package com.onyx.android.sdk.data.cluster.model;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/model/CBConfig;", "", "()V", "onyxCouchbaseWSSHost", "", "getOnyxCouchbaseWSSHost", "()Ljava/lang/String;", "setOnyxCouchbaseWSSHost", "(Ljava/lang/String;)V", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CBConfig {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public String onyxCouchbaseWSSHost;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0004H\u0007J\b\u0010\b\u001a\u00020\u0004H\u0007J\b\u0010\t\u001a\u00020\u0004H\u0007J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/model/CBConfig$Companion;", "", "()V", "createAmericanTestCouchbase", "Lcom/onyx/android/sdk/data/cluster/model/CBConfig;", "createChineseTestCouchbase", "createDefaultAmericaCouchbase", "createDefaultChineseCouchbase", "createDefaultEURCouchbase", "createEuropeTestCouchbase", "fromWSSHost", Http2ExchangeCodec.f103778h, "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final CBConfig createAmericanTestCouchbase() {
            CBConfig cBConfig = new CBConfig();
            cBConfig.setOnyxCouchbaseWSSHost(ClusterHost.INSTANCE.getDEFAULT_AMERICAN_TEST_COUCH_BASE_WSS_HOST());
            return cBConfig;
        }

        @JvmStatic
        @NotNull
        public final CBConfig createChineseTestCouchbase() {
            CBConfig cBConfig = new CBConfig();
            cBConfig.setOnyxCouchbaseWSSHost(ClusterHost.INSTANCE.getDEFAULT_CHINESE_TEST_COUCH_BASE_WSS_HOST());
            return cBConfig;
        }

        @JvmStatic
        @NotNull
        public final CBConfig createDefaultAmericaCouchbase() {
            CBConfig cBConfig = new CBConfig();
            cBConfig.setOnyxCouchbaseWSSHost(ClusterHost.INSTANCE.getDEFAULT_AMERICAN_COUCH_BASE_WSS_HOST());
            return cBConfig;
        }

        @JvmStatic
        @NotNull
        public final CBConfig createDefaultChineseCouchbase() {
            CBConfig cBConfig = new CBConfig();
            cBConfig.setOnyxCouchbaseWSSHost(ClusterHost.INSTANCE.getDEFAULT_CHINESE_COUCH_BASE_WSS_HOST());
            return cBConfig;
        }

        @JvmStatic
        @NotNull
        public final CBConfig createDefaultEURCouchbase() {
            CBConfig cBConfig = new CBConfig();
            cBConfig.setOnyxCouchbaseWSSHost(ClusterHost.INSTANCE.getDEFAULT_EUR_MESSAGE_CB_WSS_HOST());
            return cBConfig;
        }

        @JvmStatic
        @NotNull
        public final CBConfig createEuropeTestCouchbase() {
            CBConfig cBConfig = new CBConfig();
            cBConfig.setOnyxCouchbaseWSSHost(ClusterHost.INSTANCE.getDEFAULT_EUR_TEST_COUCH_BASE_WSS_HOST());
            return cBConfig;
        }

        @JvmStatic
        @NotNull
        public final CBConfig fromWSSHost(@NotNull String host) {
            Intrinsics.checkNotNullParameter(host, "host");
            CBConfig cBConfig = new CBConfig();
            cBConfig.setOnyxCouchbaseWSSHost(host);
            return cBConfig;
        }

        private Companion() {
        }
    }

    @JvmStatic
    @NotNull
    public static final CBConfig createAmericanTestCouchbase() {
        return INSTANCE.createAmericanTestCouchbase();
    }

    @JvmStatic
    @NotNull
    public static final CBConfig createChineseTestCouchbase() {
        return INSTANCE.createChineseTestCouchbase();
    }

    @JvmStatic
    @NotNull
    public static final CBConfig createDefaultAmericaCouchbase() {
        return INSTANCE.createDefaultAmericaCouchbase();
    }

    @JvmStatic
    @NotNull
    public static final CBConfig createDefaultChineseCouchbase() {
        return INSTANCE.createDefaultChineseCouchbase();
    }

    @JvmStatic
    @NotNull
    public static final CBConfig createDefaultEURCouchbase() {
        return INSTANCE.createDefaultEURCouchbase();
    }

    @JvmStatic
    @NotNull
    public static final CBConfig createEuropeTestCouchbase() {
        return INSTANCE.createEuropeTestCouchbase();
    }

    @JvmStatic
    @NotNull
    public static final CBConfig fromWSSHost(@NotNull String str) {
        return INSTANCE.fromWSSHost(str);
    }

    @NotNull
    public final String getOnyxCouchbaseWSSHost() {
        String str = this.onyxCouchbaseWSSHost;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onyxCouchbaseWSSHost");
        return null;
    }

    public final void setOnyxCouchbaseWSSHost(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.onyxCouchbaseWSSHost = str;
    }
}
