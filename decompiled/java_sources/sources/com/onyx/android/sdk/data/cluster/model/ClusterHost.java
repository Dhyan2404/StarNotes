package com.onyx.android.sdk.data.cluster.model;

import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.utils.ResManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010!\u001a\u00020\"R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\b¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;", "", "()V", "galaxyHostBaseUrl", "", "getGalaxyHostBaseUrl", "()Ljava/lang/String;", "setGalaxyHostBaseUrl", "(Ljava/lang/String;)V", "onyxCloudDataHostBaseUrl", "getOnyxCloudDataHostBaseUrl", "setOnyxCloudDataHostBaseUrl", "onyxContentHostBaseUrl", "getOnyxContentHostBaseUrl", "setOnyxContentHostBaseUrl", "onyxCouchbaseWSSHost", "getOnyxCouchbaseWSSHost", "setOnyxCouchbaseWSSHost", "onyxHostBaseUrl", "getOnyxHostBaseUrl", "setOnyxHostBaseUrl", "onyxLogHostBaseUrl", "getOnyxLogHostBaseUrl", "setOnyxLogHostBaseUrl", "onyxMessageReplicator", "getOnyxMessageReplicator", "setOnyxMessageReplicator", "onyxSend2BooxHostBaseUrl", "getOnyxSend2BooxHostBaseUrl", "setOnyxSend2BooxHostBaseUrl", "shopBookUrl", "getShopBookUrl", "setShopBookUrl", "isValid", "", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ClusterHost {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String DEFAULT_AMERICAN_BOOX_HOST;

    @NotNull
    private static final String DEFAULT_AMERICAN_COUCH_BASE_TEST_HOST_EN;

    @NotNull
    private static final String DEFAULT_AMERICAN_COUCH_BASE_WSS_HOST;

    @NotNull
    private static final String DEFAULT_AMERICAN_DATA_HOST;

    @NotNull
    private static final String DEFAULT_AMERICAN_GALAXY_HOST;

    @NotNull
    private static final String DEFAULT_AMERICAN_LOG_HOST;

    @NotNull
    private static final String DEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST;

    @NotNull
    private static final String DEFAULT_AMERICAN_TEST_COUCH_BASE_WSS_HOST;

    @NotNull
    private static final String DEFAULT_AMERICAN_TEST_GALAXY_HOST;

    @NotNull
    private static final String DEFAULT_AMERICAN_TEST_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_BOOX_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_COUCH_BASE_TEST_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_COUCH_BASE_WSS_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_DATA_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_GALAXY_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_LOG_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_MESSAGE_CB_WSS_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_TEST_COUCH_BASE_WSS_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_TEST_GALAXY_HOST;

    @NotNull
    private static final String DEFAULT_CHINESE_TEST_HOST;

    @NotNull
    private static final String DEFAULT_EUR_BOOX_HOST;

    @NotNull
    private static final String DEFAULT_EUR_COUCH_BASE_TEST_HOST;

    @NotNull
    private static final String DEFAULT_EUR_COUCH_BASE_WSS_HOST;

    @NotNull
    private static final String DEFAULT_EUR_DATA_HOST;

    @NotNull
    private static final String DEFAULT_EUR_GALAXY_HOST;

    @NotNull
    private static final String DEFAULT_EUR_LOG_HOST;

    @NotNull
    private static final String DEFAULT_EUR_MESSAGE_CB_WSS_HOST;

    @NotNull
    private static final String DEFAULT_EUR_TEST_COUCH_BASE_WSS_HOST;

    @NotNull
    private static final String DEFAULT_EUR_TEST_GALAXY_HOST;

    @NotNull
    private static final String DEFAULT_EUR_TEST_HOST;

    @NotNull
    private static final String DEFAULT_VIETNAM_HOST;
    public String galaxyHostBaseUrl;
    public String onyxCloudDataHostBaseUrl;
    public String onyxContentHostBaseUrl;
    public String onyxCouchbaseWSSHost;
    public String onyxHostBaseUrl;
    public String onyxLogHostBaseUrl;
    public String onyxMessageReplicator;
    public String onyxSend2BooxHostBaseUrl;
    public String shopBookUrl;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b?\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010C\u001a\u00020DJ\u0006\u0010E\u001a\u00020DJP\u0010F\u001a\u00020D2\u0006\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0006\u0010J\u001a\u00020\u00042\u0006\u0010K\u001a\u00020\u00042\u0006\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u0004H\u0002J\u0006\u0010P\u001a\u00020DJ\u0006\u0010Q\u001a\u00020DJ\u0006\u0010R\u001a\u00020DJ\u0006\u0010S\u001a\u00020DJ\u0006\u0010T\u001a\u00020DJ\u0006\u0010U\u001a\u00020DR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0006R\u0011\u0010\u0011\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0006R\u0011\u0010\u0015\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0006R\u0011\u0010\u0017\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0006R\u0011\u0010\u0019\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0006R\u0011\u0010\u001b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0006R\u0011\u0010\u001d\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0006R\u0011\u0010\u001f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0006R\u0011\u0010!\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0006R\u0011\u0010#\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0006R\u0011\u0010%\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0006R\u0011\u0010'\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0006R\u0011\u0010)\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0006R\u0011\u0010+\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u0006R\u0011\u0010-\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u0006R\u0011\u0010/\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u0006R\u0011\u00101\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u0006R\u0011\u00103\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u0006R\u0011\u00105\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\u0006R\u0011\u00107\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u0010\u0006R\u0011\u00109\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010\u0006R\u0011\u0010;\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010\u0006R\u0011\u0010=\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010\u0006R\u0011\u0010?\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010\u0006R\u0011\u0010A\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010\u0006¨\u0006V"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/model/ClusterHost$Companion;", "", "()V", "DEFAULT_AMERICAN_BOOX_HOST", "", "getDEFAULT_AMERICAN_BOOX_HOST", "()Ljava/lang/String;", "DEFAULT_AMERICAN_COUCH_BASE_TEST_HOST_EN", "getDEFAULT_AMERICAN_COUCH_BASE_TEST_HOST_EN", "DEFAULT_AMERICAN_COUCH_BASE_WSS_HOST", "getDEFAULT_AMERICAN_COUCH_BASE_WSS_HOST", "DEFAULT_AMERICAN_DATA_HOST", "getDEFAULT_AMERICAN_DATA_HOST", "DEFAULT_AMERICAN_GALAXY_HOST", "getDEFAULT_AMERICAN_GALAXY_HOST", "DEFAULT_AMERICAN_LOG_HOST", "getDEFAULT_AMERICAN_LOG_HOST", "DEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST", "getDEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST", "DEFAULT_AMERICAN_TEST_COUCH_BASE_WSS_HOST", "getDEFAULT_AMERICAN_TEST_COUCH_BASE_WSS_HOST", "DEFAULT_AMERICAN_TEST_GALAXY_HOST", "getDEFAULT_AMERICAN_TEST_GALAXY_HOST", "DEFAULT_AMERICAN_TEST_HOST", "getDEFAULT_AMERICAN_TEST_HOST", "DEFAULT_CHINESE_BOOX_HOST", "getDEFAULT_CHINESE_BOOX_HOST", "DEFAULT_CHINESE_COUCH_BASE_TEST_HOST", "getDEFAULT_CHINESE_COUCH_BASE_TEST_HOST", "DEFAULT_CHINESE_COUCH_BASE_WSS_HOST", "getDEFAULT_CHINESE_COUCH_BASE_WSS_HOST", "DEFAULT_CHINESE_DATA_HOST", "getDEFAULT_CHINESE_DATA_HOST", "DEFAULT_CHINESE_GALAXY_HOST", "getDEFAULT_CHINESE_GALAXY_HOST", "DEFAULT_CHINESE_LOG_HOST", "getDEFAULT_CHINESE_LOG_HOST", "DEFAULT_CHINESE_MESSAGE_CB_WSS_HOST", "getDEFAULT_CHINESE_MESSAGE_CB_WSS_HOST", "DEFAULT_CHINESE_TEST_COUCH_BASE_WSS_HOST", "getDEFAULT_CHINESE_TEST_COUCH_BASE_WSS_HOST", "DEFAULT_CHINESE_TEST_GALAXY_HOST", "getDEFAULT_CHINESE_TEST_GALAXY_HOST", "DEFAULT_CHINESE_TEST_HOST", "getDEFAULT_CHINESE_TEST_HOST", "DEFAULT_EUR_BOOX_HOST", "getDEFAULT_EUR_BOOX_HOST", "DEFAULT_EUR_COUCH_BASE_TEST_HOST", "getDEFAULT_EUR_COUCH_BASE_TEST_HOST", "DEFAULT_EUR_COUCH_BASE_WSS_HOST", "getDEFAULT_EUR_COUCH_BASE_WSS_HOST", "DEFAULT_EUR_DATA_HOST", "getDEFAULT_EUR_DATA_HOST", "DEFAULT_EUR_GALAXY_HOST", "getDEFAULT_EUR_GALAXY_HOST", "DEFAULT_EUR_LOG_HOST", "getDEFAULT_EUR_LOG_HOST", "DEFAULT_EUR_MESSAGE_CB_WSS_HOST", "getDEFAULT_EUR_MESSAGE_CB_WSS_HOST", "DEFAULT_EUR_TEST_COUCH_BASE_WSS_HOST", "getDEFAULT_EUR_TEST_COUCH_BASE_WSS_HOST", "DEFAULT_EUR_TEST_GALAXY_HOST", "getDEFAULT_EUR_TEST_GALAXY_HOST", "DEFAULT_EUR_TEST_HOST", "getDEFAULT_EUR_TEST_HOST", "DEFAULT_VIETNAM_HOST", "getDEFAULT_VIETNAM_HOST", "createAmericanTestHost", "Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;", "createChineseTestHost", "createClusterHost", "onyxHostBaseUrl", "galaxyHostBaseUrl", "onyxCloudDataHostBaseUrl", "onyxLogHostBaseUrl", "onyxContentHostBaseUrl", "onyxSend2BooxHostBaseUrl", "shopBookUrl", "onyxCouchbaseWSSHost", "onyxMessageReplicator", "createCouchbaseTestHost", "createDefaultAmericanHost", "createDefaultChineseHost", "createDefaultEURHost", "createDefaultVietnamHost", "createEuropeTestHost", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final ClusterHost createClusterHost(String onyxHostBaseUrl, String galaxyHostBaseUrl, String onyxCloudDataHostBaseUrl, String onyxLogHostBaseUrl, String onyxContentHostBaseUrl, String onyxSend2BooxHostBaseUrl, String shopBookUrl, String onyxCouchbaseWSSHost, String onyxMessageReplicator) {
            ClusterHost clusterHost = new ClusterHost();
            clusterHost.setOnyxHostBaseUrl(onyxHostBaseUrl);
            clusterHost.setGalaxyHostBaseUrl(galaxyHostBaseUrl);
            clusterHost.setOnyxCloudDataHostBaseUrl(onyxCloudDataHostBaseUrl);
            clusterHost.setOnyxLogHostBaseUrl(onyxLogHostBaseUrl);
            clusterHost.setOnyxContentHostBaseUrl(onyxContentHostBaseUrl);
            clusterHost.setOnyxSend2BooxHostBaseUrl(onyxSend2BooxHostBaseUrl);
            clusterHost.setShopBookUrl(shopBookUrl);
            clusterHost.setOnyxCouchbaseWSSHost(onyxCouchbaseWSSHost);
            clusterHost.setOnyxMessageReplicator(onyxMessageReplicator);
            return clusterHost;
        }

        @NotNull
        public final ClusterHost createAmericanTestHost() {
            return createClusterHost(getDEFAULT_AMERICAN_TEST_HOST(), getDEFAULT_AMERICAN_TEST_GALAXY_HOST(), getDEFAULT_AMERICAN_TEST_HOST(), getDEFAULT_AMERICAN_TEST_HOST(), getDEFAULT_AMERICAN_TEST_HOST(), getDEFAULT_AMERICAN_TEST_HOST(), getDEFAULT_AMERICAN_TEST_HOST(), getDEFAULT_AMERICAN_COUCH_BASE_WSS_HOST(), getDEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST());
        }

        @NotNull
        public final ClusterHost createChineseTestHost() {
            return createClusterHost(getDEFAULT_CHINESE_TEST_HOST(), getDEFAULT_CHINESE_TEST_GALAXY_HOST(), getDEFAULT_CHINESE_TEST_HOST(), getDEFAULT_CHINESE_TEST_HOST(), getDEFAULT_CHINESE_TEST_HOST(), getDEFAULT_CHINESE_TEST_HOST(), getDEFAULT_CHINESE_TEST_HOST(), getDEFAULT_CHINESE_COUCH_BASE_WSS_HOST(), getDEFAULT_CHINESE_MESSAGE_CB_WSS_HOST());
        }

        @NotNull
        public final ClusterHost createCouchbaseTestHost() {
            return createClusterHost(getDEFAULT_CHINESE_COUCH_BASE_TEST_HOST(), getDEFAULT_CHINESE_TEST_GALAXY_HOST(), getDEFAULT_CHINESE_COUCH_BASE_TEST_HOST(), getDEFAULT_CHINESE_COUCH_BASE_TEST_HOST(), getDEFAULT_CHINESE_COUCH_BASE_TEST_HOST(), getDEFAULT_CHINESE_COUCH_BASE_TEST_HOST(), getDEFAULT_CHINESE_TEST_HOST(), getDEFAULT_CHINESE_COUCH_BASE_WSS_HOST(), getDEFAULT_CHINESE_MESSAGE_CB_WSS_HOST());
        }

        @NotNull
        public final ClusterHost createDefaultAmericanHost() {
            return createClusterHost(getDEFAULT_AMERICAN_BOOX_HOST(), getDEFAULT_AMERICAN_GALAXY_HOST(), getDEFAULT_AMERICAN_DATA_HOST(), getDEFAULT_AMERICAN_LOG_HOST(), getDEFAULT_AMERICAN_BOOX_HOST(), getDEFAULT_AMERICAN_BOOX_HOST(), getDEFAULT_AMERICAN_BOOX_HOST(), getDEFAULT_AMERICAN_COUCH_BASE_WSS_HOST(), getDEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST());
        }

        @NotNull
        public final ClusterHost createDefaultChineseHost() {
            return createClusterHost(getDEFAULT_CHINESE_BOOX_HOST(), getDEFAULT_CHINESE_GALAXY_HOST(), getDEFAULT_CHINESE_DATA_HOST(), getDEFAULT_CHINESE_LOG_HOST(), getDEFAULT_CHINESE_BOOX_HOST(), getDEFAULT_CHINESE_BOOX_HOST(), getDEFAULT_CHINESE_BOOX_HOST(), getDEFAULT_CHINESE_COUCH_BASE_WSS_HOST(), getDEFAULT_CHINESE_MESSAGE_CB_WSS_HOST());
        }

        @NotNull
        public final ClusterHost createDefaultEURHost() {
            return createClusterHost(getDEFAULT_EUR_BOOX_HOST(), getDEFAULT_EUR_GALAXY_HOST(), getDEFAULT_EUR_DATA_HOST(), getDEFAULT_EUR_DATA_HOST(), getDEFAULT_EUR_BOOX_HOST(), getDEFAULT_EUR_BOOX_HOST(), getDEFAULT_EUR_BOOX_HOST(), getDEFAULT_EUR_MESSAGE_CB_WSS_HOST(), getDEFAULT_EUR_MESSAGE_CB_WSS_HOST());
        }

        @NotNull
        public final ClusterHost createDefaultVietnamHost() {
            ClusterHost createDefaultAmericanHost = createDefaultAmericanHost();
            createDefaultAmericanHost.setShopBookUrl(ClusterHost.INSTANCE.getDEFAULT_VIETNAM_HOST());
            return createDefaultAmericanHost;
        }

        @NotNull
        public final ClusterHost createEuropeTestHost() {
            return createClusterHost(getDEFAULT_EUR_TEST_HOST(), getDEFAULT_EUR_TEST_GALAXY_HOST(), getDEFAULT_EUR_TEST_HOST(), getDEFAULT_EUR_TEST_HOST(), getDEFAULT_EUR_TEST_HOST(), getDEFAULT_EUR_TEST_HOST(), getDEFAULT_EUR_TEST_HOST(), getDEFAULT_EUR_COUCH_BASE_WSS_HOST(), getDEFAULT_EUR_MESSAGE_CB_WSS_HOST());
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_BOOX_HOST() {
            return ClusterHost.DEFAULT_AMERICAN_BOOX_HOST;
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_COUCH_BASE_TEST_HOST_EN() {
            return ClusterHost.DEFAULT_AMERICAN_COUCH_BASE_TEST_HOST_EN;
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_COUCH_BASE_WSS_HOST() {
            return ClusterHost.DEFAULT_AMERICAN_COUCH_BASE_WSS_HOST;
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_DATA_HOST() {
            return ClusterHost.DEFAULT_AMERICAN_DATA_HOST;
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_GALAXY_HOST() {
            return ClusterHost.DEFAULT_AMERICAN_GALAXY_HOST;
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_LOG_HOST() {
            return ClusterHost.DEFAULT_AMERICAN_LOG_HOST;
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST() {
            return ClusterHost.DEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST;
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_TEST_COUCH_BASE_WSS_HOST() {
            return ClusterHost.DEFAULT_AMERICAN_TEST_COUCH_BASE_WSS_HOST;
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_TEST_GALAXY_HOST() {
            return ClusterHost.DEFAULT_AMERICAN_TEST_GALAXY_HOST;
        }

        @NotNull
        public final String getDEFAULT_AMERICAN_TEST_HOST() {
            return ClusterHost.DEFAULT_AMERICAN_TEST_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_BOOX_HOST() {
            return ClusterHost.DEFAULT_CHINESE_BOOX_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_COUCH_BASE_TEST_HOST() {
            return ClusterHost.DEFAULT_CHINESE_COUCH_BASE_TEST_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_COUCH_BASE_WSS_HOST() {
            return ClusterHost.DEFAULT_CHINESE_COUCH_BASE_WSS_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_DATA_HOST() {
            return ClusterHost.DEFAULT_CHINESE_DATA_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_GALAXY_HOST() {
            return ClusterHost.DEFAULT_CHINESE_GALAXY_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_LOG_HOST() {
            return ClusterHost.DEFAULT_CHINESE_LOG_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_MESSAGE_CB_WSS_HOST() {
            return ClusterHost.DEFAULT_CHINESE_MESSAGE_CB_WSS_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_TEST_COUCH_BASE_WSS_HOST() {
            return ClusterHost.DEFAULT_CHINESE_TEST_COUCH_BASE_WSS_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_TEST_GALAXY_HOST() {
            return ClusterHost.DEFAULT_CHINESE_TEST_GALAXY_HOST;
        }

        @NotNull
        public final String getDEFAULT_CHINESE_TEST_HOST() {
            return ClusterHost.DEFAULT_CHINESE_TEST_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_BOOX_HOST() {
            return ClusterHost.DEFAULT_EUR_BOOX_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_COUCH_BASE_TEST_HOST() {
            return ClusterHost.DEFAULT_EUR_COUCH_BASE_TEST_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_COUCH_BASE_WSS_HOST() {
            return ClusterHost.DEFAULT_EUR_COUCH_BASE_WSS_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_DATA_HOST() {
            return ClusterHost.DEFAULT_EUR_DATA_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_GALAXY_HOST() {
            return ClusterHost.DEFAULT_EUR_GALAXY_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_LOG_HOST() {
            return ClusterHost.DEFAULT_EUR_LOG_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_MESSAGE_CB_WSS_HOST() {
            return ClusterHost.DEFAULT_EUR_MESSAGE_CB_WSS_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_TEST_COUCH_BASE_WSS_HOST() {
            return ClusterHost.DEFAULT_EUR_TEST_COUCH_BASE_WSS_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_TEST_GALAXY_HOST() {
            return ClusterHost.DEFAULT_EUR_TEST_GALAXY_HOST;
        }

        @NotNull
        public final String getDEFAULT_EUR_TEST_HOST() {
            return ClusterHost.DEFAULT_EUR_TEST_HOST;
        }

        @NotNull
        public final String getDEFAULT_VIETNAM_HOST() {
            return ClusterHost.DEFAULT_VIETNAM_HOST;
        }

        private Companion() {
        }
    }

    static {
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C7106R.string.default_chinese_boox_host);
        Intrinsics.checkNotNull(string);
        DEFAULT_CHINESE_BOOX_HOST = string;
        String string2 = resManager.getString(C7106R.string.default_chinese_galaxy_host);
        Intrinsics.checkNotNull(string2);
        DEFAULT_CHINESE_GALAXY_HOST = string2;
        String string3 = resManager.getString(C7106R.string.default_chinese_couch_base_wss_host);
        Intrinsics.checkNotNull(string3);
        DEFAULT_CHINESE_COUCH_BASE_WSS_HOST = string3;
        String string4 = resManager.getString(C7106R.string.default_chinese_message_cb_wss_host);
        Intrinsics.checkNotNull(string4);
        DEFAULT_CHINESE_MESSAGE_CB_WSS_HOST = string4;
        String string5 = resManager.getString(C7106R.string.default_chinese_data_host);
        Intrinsics.checkNotNull(string5);
        DEFAULT_CHINESE_DATA_HOST = string5;
        String string6 = resManager.getString(C7106R.string.default_chinese_log_host);
        Intrinsics.checkNotNull(string6);
        DEFAULT_CHINESE_LOG_HOST = string6;
        String string7 = resManager.getString(C7106R.string.default_american_boox_host);
        Intrinsics.checkNotNull(string7);
        DEFAULT_AMERICAN_BOOX_HOST = string7;
        String string8 = resManager.getString(C7106R.string.default_american_galaxy_host);
        Intrinsics.checkNotNull(string8);
        DEFAULT_AMERICAN_GALAXY_HOST = string8;
        String string9 = resManager.getString(C7106R.string.default_american_couch_base_wss_host);
        Intrinsics.checkNotNull(string9);
        DEFAULT_AMERICAN_COUCH_BASE_WSS_HOST = string9;
        String string10 = resManager.getString(C7106R.string.default_american_message_cb_wss_host);
        Intrinsics.checkNotNull(string10);
        DEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST = string10;
        String string11 = resManager.getString(C7106R.string.default_american_data_host);
        Intrinsics.checkNotNull(string11);
        DEFAULT_AMERICAN_DATA_HOST = string11;
        String string12 = resManager.getString(C7106R.string.default_american_log_host);
        Intrinsics.checkNotNull(string12);
        DEFAULT_AMERICAN_LOG_HOST = string12;
        String string13 = resManager.getString(C7106R.string.default_eur_boox_host);
        Intrinsics.checkNotNull(string13);
        DEFAULT_EUR_BOOX_HOST = string13;
        String string14 = resManager.getString(C7106R.string.default_eur_galaxy_host);
        Intrinsics.checkNotNull(string14);
        DEFAULT_EUR_GALAXY_HOST = string14;
        String string15 = resManager.getString(C7106R.string.default_eur_couch_base_wss_host);
        Intrinsics.checkNotNull(string15);
        DEFAULT_EUR_COUCH_BASE_WSS_HOST = string15;
        String string16 = resManager.getString(C7106R.string.default_eur_message_cb_wss_host);
        Intrinsics.checkNotNull(string16);
        DEFAULT_EUR_MESSAGE_CB_WSS_HOST = string16;
        String string17 = resManager.getString(C7106R.string.default_eur_data_host);
        Intrinsics.checkNotNull(string17);
        DEFAULT_EUR_DATA_HOST = string17;
        String string18 = resManager.getString(C7106R.string.default_eur_log_host);
        Intrinsics.checkNotNull(string18);
        DEFAULT_EUR_LOG_HOST = string18;
        String string19 = resManager.getString(C7106R.string.default_vietnam_host);
        Intrinsics.checkNotNull(string19);
        DEFAULT_VIETNAM_HOST = string19;
        String string20 = resManager.getString(C7106R.string.default_test_host);
        Intrinsics.checkNotNull(string20);
        DEFAULT_CHINESE_TEST_HOST = string20;
        String string21 = resManager.getString(C7106R.string.default_test_galaxy_host);
        Intrinsics.checkNotNull(string21);
        DEFAULT_CHINESE_TEST_GALAXY_HOST = string21;
        String string22 = resManager.getString(C7106R.string.default_test_couch_base_wss_host);
        Intrinsics.checkNotNull(string22);
        DEFAULT_CHINESE_TEST_COUCH_BASE_WSS_HOST = string22;
        String string23 = resManager.getString(C7106R.string.default_couch_base_test_host);
        Intrinsics.checkNotNull(string23);
        DEFAULT_CHINESE_COUCH_BASE_TEST_HOST = string23;
        String string24 = resManager.getString(C7106R.string.default_american_test_host);
        Intrinsics.checkNotNull(string24);
        DEFAULT_AMERICAN_TEST_HOST = string24;
        String string25 = resManager.getString(C7106R.string.default_american_test_galaxy_host);
        Intrinsics.checkNotNull(string25);
        DEFAULT_AMERICAN_TEST_GALAXY_HOST = string25;
        String string26 = resManager.getString(C7106R.string.default_american_test_couch_base_wss_host);
        Intrinsics.checkNotNull(string26);
        DEFAULT_AMERICAN_TEST_COUCH_BASE_WSS_HOST = string26;
        String string27 = resManager.getString(C7106R.string.default_american_couch_base_test_host);
        Intrinsics.checkNotNull(string27);
        DEFAULT_AMERICAN_COUCH_BASE_TEST_HOST_EN = string27;
        String string28 = resManager.getString(C7106R.string.default_eur_test_host);
        Intrinsics.checkNotNull(string28);
        DEFAULT_EUR_TEST_HOST = string28;
        String string29 = resManager.getString(C7106R.string.default_eur_test_galaxy_host);
        Intrinsics.checkNotNull(string29);
        DEFAULT_EUR_TEST_GALAXY_HOST = string29;
        String string30 = resManager.getString(C7106R.string.default_eur_test_couch_base_wss_host);
        Intrinsics.checkNotNull(string30);
        DEFAULT_EUR_TEST_COUCH_BASE_WSS_HOST = string30;
        String string31 = resManager.getString(C7106R.string.default_eur_couch_base_test_host);
        Intrinsics.checkNotNull(string31);
        DEFAULT_EUR_COUCH_BASE_TEST_HOST = string31;
    }

    @NotNull
    public final String getGalaxyHostBaseUrl() {
        String str = this.galaxyHostBaseUrl;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("galaxyHostBaseUrl");
        return null;
    }

    @NotNull
    public final String getOnyxCloudDataHostBaseUrl() {
        String str = this.onyxCloudDataHostBaseUrl;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onyxCloudDataHostBaseUrl");
        return null;
    }

    @NotNull
    public final String getOnyxContentHostBaseUrl() {
        String str = this.onyxContentHostBaseUrl;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onyxContentHostBaseUrl");
        return null;
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

    @NotNull
    public final String getOnyxHostBaseUrl() {
        String str = this.onyxHostBaseUrl;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onyxHostBaseUrl");
        return null;
    }

    @NotNull
    public final String getOnyxLogHostBaseUrl() {
        String str = this.onyxLogHostBaseUrl;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onyxLogHostBaseUrl");
        return null;
    }

    @NotNull
    public final String getOnyxMessageReplicator() {
        String str = this.onyxMessageReplicator;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onyxMessageReplicator");
        return null;
    }

    @NotNull
    public final String getOnyxSend2BooxHostBaseUrl() {
        String str = this.onyxSend2BooxHostBaseUrl;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onyxSend2BooxHostBaseUrl");
        return null;
    }

    @NotNull
    public final String getShopBookUrl() {
        String str = this.shopBookUrl;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shopBookUrl");
        return null;
    }

    public final boolean isValid() {
        return StringUtils.isNotBlank(getOnyxHostBaseUrl()) && StringUtils.isNotBlank(getGalaxyHostBaseUrl()) && StringUtils.isNotBlank(getOnyxCloudDataHostBaseUrl()) && StringUtils.isNotBlank(getOnyxLogHostBaseUrl()) && StringUtils.isNotBlank(getOnyxContentHostBaseUrl()) && StringUtils.isNotBlank(getOnyxSend2BooxHostBaseUrl()) && StringUtils.isNotBlank(getOnyxCouchbaseWSSHost()) && StringUtils.isNotBlank(getOnyxMessageReplicator()) && StringUtils.isNotBlank(getShopBookUrl());
    }

    public final void setGalaxyHostBaseUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.galaxyHostBaseUrl = str;
    }

    public final void setOnyxCloudDataHostBaseUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.onyxCloudDataHostBaseUrl = str;
    }

    public final void setOnyxContentHostBaseUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.onyxContentHostBaseUrl = str;
    }

    public final void setOnyxCouchbaseWSSHost(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.onyxCouchbaseWSSHost = str;
    }

    public final void setOnyxHostBaseUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.onyxHostBaseUrl = str;
    }

    public final void setOnyxLogHostBaseUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.onyxLogHostBaseUrl = str;
    }

    public final void setOnyxMessageReplicator(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.onyxMessageReplicator = str;
    }

    public final void setOnyxSend2BooxHostBaseUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.onyxSend2BooxHostBaseUrl = str;
    }

    public final void setShopBookUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shopBookUrl = str;
    }
}
