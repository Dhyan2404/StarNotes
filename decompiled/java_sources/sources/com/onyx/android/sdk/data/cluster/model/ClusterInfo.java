package com.onyx.android.sdk.data.cluster.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.cluster.ClusterConstant;
import com.onyx.android.sdk.data.cluster.bean.ClusterBean;
import com.onyx.android.sdk.data.cluster.model.CBConfig;
import com.onyx.android.sdk.data.cluster.model.ClusterHost;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.oss.OssConfigInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 B2\u00020\u0001:\u0001BB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u00100\u001a\u00020\f2\u0006\u00101\u001a\u00020\fH\u0007J\u0010\u00102\u001a\u00020\f2\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u00020\f2\u0006\u00101\u001a\u00020\fH\u0007J\u0010\u00106\u001a\u00020\f2\u0006\u00101\u001a\u00020\fH\u0007J\u0006\u00107\u001a\u00020\nJ\u0010\u00108\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u0000H\u0007J\u0012\u00108\u001a\u00020\u00142\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007J\u0006\u0010:\u001a\u00020\fJ\u0006\u0010;\u001a\u00020\fJ\u0006\u0010<\u001a\u00020\fJ\u0006\u0010=\u001a\u00020\fJ\u0006\u0010>\u001a\u00020\fJ\u0006\u0010?\u001a\u00020\fJ\u000e\u0010@\u001a\u00020A2\u0006\u0010\t\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0012\u0010\t\u001a\u00020\n8\u0002@\u0002X\u0083.¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\f8G¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0013\u001a\u00020\u00148G¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00148G¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\u0017\u001a\u00020\u00148G¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u001a\u0010\u0018\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u0010R\u0011\u0010\u001b\u001a\u00020\u001c8G¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\f8G¢\u0006\u0006\u001a\u0004\b \u0010\u000eR\u001a\u0010!\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u000e\"\u0004\b&\u0010\u0010R\u001a\u0010'\u001a\u00020(X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u000e\"\u0004\b/\u0010\u0010¨\u0006C"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "", "()V", "cbConfig", "Lcom/onyx/android/sdk/data/cluster/model/CBConfig;", "getCbConfig", "()Lcom/onyx/android/sdk/data/cluster/model/CBConfig;", "setCbConfig", "(Lcom/onyx/android/sdk/data/cluster/model/CBConfig;)V", "clusterHost", "Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;", "clusterId", "", "getClusterId", "()Ljava/lang/String;", "setClusterId", "(Ljava/lang/String;)V", "internationalCloudDataUrl", "getInternationalCloudDataUrl", "isChineseCluster", "", Constants.BOOLEAN_VALUE_SIG, "isDevCluster", "isUSASCluster", "lang", "getLang", "setLang", "locale", Constants.LOCALE_SIG, "getLocale", "()Ljava/util/Locale;", "localeStr", "getLocaleStr", "messageCBConfig", "getMessageCBConfig", "setMessageCBConfig", "name", "getName", "setName", "ossConfig", "Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;", "getOssConfig", "()Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;", "setOssConfig", "(Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;)V", "region", "getRegion", "setRegion", "getApi", "url", "getApiHost", "cloudType", "", "getApiV1", "getApiV2", "getClusterHost", "isSameCluster", "clusterInfo", "loadBookShopApiBaseUrl", "loadOnyxApiBaseUrl", "loadOnyxApiV2", "loadOnyxCloudDataApiBaseUrl", "loadOnyxContentApiBaseUrl", "loadOnyxSend2BooxApiBaseUrl", "setClusterHost", "", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ClusterInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public CBConfig cbConfig;

    @JSONField(alternateNames = {Http2ExchangeCodec.f103778h})
    private ClusterHost clusterHost;
    public String clusterId;
    public String lang;
    public CBConfig messageCBConfig;
    public String name;
    public OssConfigInfo ossConfig;

    @Nullable
    private String region;

    @Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0006\u001a\u00020\u0004H\u0002JL\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\tH\u0002J\u0006\u0010\u0014\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0017\u001a\u00020\u0004J\b\u0010\u0018\u001a\u00020\u0004H\u0002J\u000e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\tJ\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dJ\u0014\u0010\u001e\u001a\u00020\t*\u0004\u0018\u00010\u00042\u0006\u0010\u001f\u001a\u00020 J\f\u0010!\u001a\u00020\t*\u0004\u0018\u00010\u0004J\f\u0010\"\u001a\u00020\t*\u0004\u0018\u00010\u0004¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;", "", "()V", "createAmericanTestCluster", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "createCBTestCluster", "createChineseTestCluster", "createClusterInfo", "name", "", "lang", "region", "cbConfig", "Lcom/onyx/android/sdk/data/cluster/model/CBConfig;", "messageCBConfig", "clusterHost", "Lcom/onyx/android/sdk/data/cluster/model/ClusterHost;", "ossConfig", "Lcom/onyx/android/sdk/data/common/oss/OssConfigInfo;", "clusterId", "createDefaultAmericaCluster", "createDefaultChineseCluster", "createDefaultEURCluster", "createDefaultVietnamCluster", "createEuropeTestCluster", "createTestCluster", "curClusterId", "fromClusterBean", "clusterBean", "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;", "getApiHost", "cloudType", "", "getContentApiHost", "getSendToBooxApiHost", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final ClusterInfo createAmericanTestCluster() {
            String language = Locale.ENGLISH.getLanguage();
            ResManager resManager = ResManager.INSTANCE;
            String string = resManager.getString(C7106R.string.test_server_us);
            Intrinsics.checkNotNull(string);
            String string2 = resManager.getString(C7106R.string.test_server_region_us);
            Intrinsics.checkNotNull(string2);
            ClusterHost.Companion companion = ClusterHost.INSTANCE;
            ClusterHost createAmericanTestHost = companion.createAmericanTestHost();
            CBConfig.Companion companion2 = CBConfig.INSTANCE;
            CBConfig fromWSSHost = companion2.fromWSSHost(companion.getDEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST());
            CBConfig createDefaultAmericaCouchbase = companion2.createDefaultAmericaCouchbase();
            OssConfigInfo createDefaultAmericanOss = OssConfigInfo.INSTANCE.createDefaultAmericanOss();
            String test_american_server_id = ClusterConstant.INSTANCE.getTEST_AMERICAN_SERVER_ID();
            Intrinsics.checkNotNull(language);
            return createClusterInfo(string, language, string2, createDefaultAmericaCouchbase, fromWSSHost, createAmericanTestHost, createDefaultAmericanOss, test_american_server_id);
        }

        private final ClusterInfo createChineseTestCluster() {
            String language = Locale.CHINESE.getLanguage();
            ResManager resManager = ResManager.INSTANCE;
            String string = resManager.getString(C7106R.string.test_server);
            Intrinsics.checkNotNull(string);
            String string2 = resManager.getString(C7106R.string.test_server_region);
            Intrinsics.checkNotNull(string2);
            ClusterHost.Companion companion = ClusterHost.INSTANCE;
            ClusterHost createChineseTestHost = companion.createChineseTestHost();
            CBConfig.Companion companion2 = CBConfig.INSTANCE;
            CBConfig fromWSSHost = companion2.fromWSSHost(companion.getDEFAULT_CHINESE_MESSAGE_CB_WSS_HOST());
            CBConfig createDefaultChineseCouchbase = companion2.createDefaultChineseCouchbase();
            OssConfigInfo createDefaultChineseOss = OssConfigInfo.INSTANCE.createDefaultChineseOss();
            String test_chinese_server_id = ClusterConstant.INSTANCE.getTEST_CHINESE_SERVER_ID();
            Intrinsics.checkNotNull(language);
            return createClusterInfo(string, language, string2, createDefaultChineseCouchbase, fromWSSHost, createChineseTestHost, createDefaultChineseOss, test_chinese_server_id);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ClusterInfo createClusterInfo(String name, String lang, String region, CBConfig cbConfig, CBConfig messageCBConfig, ClusterHost clusterHost, OssConfigInfo ossConfig, String clusterId) {
            ClusterInfo clusterInfo = new ClusterInfo();
            clusterInfo.setClusterId(clusterId);
            clusterInfo.setName(name);
            clusterInfo.setLang(lang);
            clusterInfo.setRegion(region);
            clusterInfo.setCbConfig(cbConfig);
            clusterInfo.setMessageCBConfig(messageCBConfig);
            clusterInfo.clusterHost = clusterHost;
            clusterInfo.setOssConfig(ossConfig);
            return clusterInfo;
        }

        private final ClusterInfo createEuropeTestCluster() {
            ClusterConstant clusterConstant = ClusterConstant.INSTANCE;
            String eur_server_id = clusterConstant.getEUR_SERVER_ID();
            ResManager resManager = ResManager.INSTANCE;
            String string = resManager.getString(C7106R.string.test_server_eu);
            Intrinsics.checkNotNull(string);
            String string2 = resManager.getString(C7106R.string.test_server_region_eu);
            Intrinsics.checkNotNull(string2);
            ClusterHost.Companion companion = ClusterHost.INSTANCE;
            ClusterHost createEuropeTestHost = companion.createEuropeTestHost();
            CBConfig.Companion companion2 = CBConfig.INSTANCE;
            return createClusterInfo(string, eur_server_id, string2, companion2.createDefaultEURCouchbase(), companion2.fromWSSHost(companion.getDEFAULT_EUR_MESSAGE_CB_WSS_HOST()), createEuropeTestHost, OssConfigInfo.INSTANCE.createDefaultEuropeOss(), clusterConstant.getTEST_EUR_SERVER_ID());
        }

        @NotNull
        public final ClusterInfo createCBTestCluster() {
            String language = Locale.getDefault().getLanguage();
            ResManager resManager = ResManager.INSTANCE;
            String string = resManager.getString(C7106R.string.cb_test_server);
            Intrinsics.checkNotNull(string);
            String string2 = resManager.getString(C7106R.string.test_server_region);
            Intrinsics.checkNotNull(string2);
            ClusterHost.Companion companion = ClusterHost.INSTANCE;
            ClusterHost createCouchbaseTestHost = companion.createCouchbaseTestHost();
            CBConfig.Companion companion2 = CBConfig.INSTANCE;
            CBConfig fromWSSHost = companion2.fromWSSHost(companion.getDEFAULT_CHINESE_MESSAGE_CB_WSS_HOST());
            CBConfig createChineseTestCouchbase = companion2.createChineseTestCouchbase();
            OssConfigInfo createDefaultChineseOss = OssConfigInfo.INSTANCE.createDefaultChineseOss();
            String couch_base_test_server_id = ClusterConstant.INSTANCE.getCOUCH_BASE_TEST_SERVER_ID();
            Intrinsics.checkNotNull(language);
            return createClusterInfo(string, language, string2, createChineseTestCouchbase, fromWSSHost, createCouchbaseTestHost, createDefaultChineseOss, couch_base_test_server_id);
        }

        @NotNull
        public final ClusterInfo createDefaultAmericaCluster() {
            Locale locale = Locale.ENGLISH;
            String language = locale.getLanguage();
            String language2 = locale.getLanguage();
            ResManager resManager = ResManager.INSTANCE;
            String string = resManager.getString(C7106R.string.server_selection_america);
            Intrinsics.checkNotNull(string);
            String string2 = resManager.getString(C7106R.string.us_server_region);
            Intrinsics.checkNotNull(string2);
            ClusterHost.Companion companion = ClusterHost.INSTANCE;
            ClusterHost createDefaultAmericanHost = companion.createDefaultAmericanHost();
            CBConfig.Companion companion2 = CBConfig.INSTANCE;
            CBConfig fromWSSHost = companion2.fromWSSHost(companion.getDEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST());
            CBConfig createDefaultAmericaCouchbase = companion2.createDefaultAmericaCouchbase();
            OssConfigInfo createDefaultAmericanOss = OssConfigInfo.INSTANCE.createDefaultAmericanOss();
            Intrinsics.checkNotNull(language);
            Intrinsics.checkNotNull(language2);
            return createClusterInfo(string, language, string2, createDefaultAmericaCouchbase, fromWSSHost, createDefaultAmericanHost, createDefaultAmericanOss, language2);
        }

        @NotNull
        public final ClusterInfo createDefaultChineseCluster() {
            String language = Locale.CHINESE.getLanguage();
            String language2 = Locale.CHINESE.getLanguage();
            ResManager resManager = ResManager.INSTANCE;
            String string = resManager.getString(C7106R.string.server_selection_china);
            Intrinsics.checkNotNull(string);
            String string2 = resManager.getString(C7106R.string.cn_server_region);
            ClusterHost.Companion companion = ClusterHost.INSTANCE;
            ClusterHost createDefaultChineseHost = companion.createDefaultChineseHost();
            CBConfig.Companion companion2 = CBConfig.INSTANCE;
            CBConfig fromWSSHost = companion2.fromWSSHost(companion.getDEFAULT_CHINESE_MESSAGE_CB_WSS_HOST());
            CBConfig createDefaultChineseCouchbase = companion2.createDefaultChineseCouchbase();
            OssConfigInfo createDefaultChineseOss = OssConfigInfo.INSTANCE.createDefaultChineseOss();
            Intrinsics.checkNotNull(language);
            Intrinsics.checkNotNull(language2);
            return createClusterInfo(string, language, string2, createDefaultChineseCouchbase, fromWSSHost, createDefaultChineseHost, createDefaultChineseOss, language2);
        }

        @NotNull
        public final ClusterInfo createDefaultEURCluster() {
            ClusterConstant clusterConstant = ClusterConstant.INSTANCE;
            String eur_server_id = clusterConstant.getEUR_SERVER_ID();
            String eur_server_id2 = clusterConstant.getEUR_SERVER_ID();
            ResManager resManager = ResManager.INSTANCE;
            String string = resManager.getString(C7106R.string.server_selection_eur);
            Intrinsics.checkNotNull(string);
            String string2 = resManager.getString(C7106R.string.eur_server_region);
            Intrinsics.checkNotNull(string2);
            ClusterHost.Companion companion = ClusterHost.INSTANCE;
            ClusterHost createDefaultEURHost = companion.createDefaultEURHost();
            CBConfig.Companion companion2 = CBConfig.INSTANCE;
            return createClusterInfo(string, eur_server_id, string2, companion2.createDefaultEURCouchbase(), companion2.fromWSSHost(companion.getDEFAULT_EUR_MESSAGE_CB_WSS_HOST()), createDefaultEURHost, OssConfigInfo.INSTANCE.createDefaultAmericanOss(), eur_server_id2);
        }

        @NotNull
        public final ClusterInfo createDefaultVietnamCluster() {
            ClusterConstant clusterConstant = ClusterConstant.INSTANCE;
            String vietnam_server_id = clusterConstant.getVIETNAM_SERVER_ID();
            String vietnam_server_id2 = clusterConstant.getVIETNAM_SERVER_ID();
            ResManager resManager = ResManager.INSTANCE;
            String string = resManager.getString(C7106R.string.server_selection_vietnam);
            Intrinsics.checkNotNull(string);
            String string2 = resManager.getString(C7106R.string.vn_server_region);
            Intrinsics.checkNotNull(string2);
            ClusterHost.Companion companion = ClusterHost.INSTANCE;
            ClusterHost createDefaultVietnamHost = companion.createDefaultVietnamHost();
            CBConfig.Companion companion2 = CBConfig.INSTANCE;
            return createClusterInfo(string, vietnam_server_id, string2, companion2.createDefaultAmericaCouchbase(), companion2.fromWSSHost(companion.getDEFAULT_AMERICAN_MESSAGE_CB_WSS_HOST()), createDefaultVietnamHost, OssConfigInfo.INSTANCE.createDefaultAmericanOss(), vietnam_server_id2);
        }

        @NotNull
        public final ClusterInfo createTestCluster(@NotNull String curClusterId) {
            Intrinsics.checkNotNullParameter(curClusterId, "curClusterId");
            ClusterConstant clusterConstant = ClusterConstant.INSTANCE;
            return Intrinsics.areEqual(curClusterId, clusterConstant.getTEST_CHINESE_SERVER_ID()) ? createChineseTestCluster() : Intrinsics.areEqual(curClusterId, clusterConstant.getTEST_AMERICAN_SERVER_ID()) ? createAmericanTestCluster() : Intrinsics.areEqual(curClusterId, clusterConstant.getTEST_EUR_SERVER_ID()) ? createEuropeTestCluster() : createChineseTestCluster();
        }

        @NotNull
        public final ClusterInfo fromClusterBean(@NotNull ClusterBean clusterBean) {
            Intrinsics.checkNotNullParameter(clusterBean, "clusterBean");
            ClusterInfo clusterInfo = new ClusterInfo();
            clusterInfo.setClusterId(clusterBean.getServerId());
            clusterInfo.setLang(clusterBean.getLang());
            clusterInfo.setName(clusterBean.getName());
            clusterInfo.setRegion(clusterBean.getRegion());
            OssConfigInfo ossConfig = clusterBean.getOssConfig();
            Intrinsics.checkNotNull(ossConfig);
            clusterInfo.setOssConfig(ossConfig);
            ClusterHost host = clusterBean.getHost();
            Intrinsics.checkNotNull(host);
            clusterInfo.clusterHost = host;
            CBConfig.Companion companion = CBConfig.INSTANCE;
            ClusterHost host2 = clusterBean.getHost();
            Intrinsics.checkNotNull(host2);
            clusterInfo.setMessageCBConfig(companion.fromWSSHost(host2.getOnyxMessageReplicator()));
            ClusterHost host3 = clusterBean.getHost();
            Intrinsics.checkNotNull(host3);
            clusterInfo.setCbConfig(companion.fromWSSHost(host3.getOnyxCouchbaseWSSHost()));
            return clusterInfo;
        }

        @NotNull
        public final String getApiHost(@Nullable ClusterInfo clusterInfo, int i) {
            return clusterInfo == null ? "" : clusterInfo.getApiHost(i);
        }

        @NotNull
        public final String getContentApiHost(@Nullable ClusterInfo clusterInfo) {
            return getApiHost(clusterInfo, 2);
        }

        @NotNull
        public final String getSendToBooxApiHost(@Nullable ClusterInfo clusterInfo) {
            return getApiHost(clusterInfo, 5);
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getApiHost(int cloudType) {
        if (cloudType == 0) {
            return loadOnyxApiBaseUrl();
        }
        if (cloudType != 1) {
            if (cloudType == 2) {
                return loadOnyxContentApiBaseUrl();
            }
            if (cloudType != 3) {
                return (cloudType == 4 || cloudType == 5) ? loadOnyxSend2BooxApiBaseUrl() : loadOnyxApiBaseUrl();
            }
        }
        return loadOnyxCloudDataApiBaseUrl();
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getApi(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return url + "/api/";
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getApiV1(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return url + CloudStorageConstants.ONYX_NOTE_REQUEST_API;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getApiV2(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return url + "/api/v2/";
    }

    @NotNull
    public final CBConfig getCbConfig() {
        CBConfig cBConfig = this.cbConfig;
        if (cBConfig != null) {
            return cBConfig;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cbConfig");
        return null;
    }

    @NotNull
    public final ClusterHost getClusterHost() {
        ClusterHost clusterHost = this.clusterHost;
        if (clusterHost != null) {
            return clusterHost;
        }
        Intrinsics.throwUninitializedPropertyAccessException("clusterHost");
        return null;
    }

    @NotNull
    public final String getClusterId() {
        String str = this.clusterId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("clusterId");
        return null;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getInternationalCloudDataUrl() {
        return isChineseCluster() ? "http://cn-data.onyx-international.cn" : Constant.EN_CLOUD_DATA_HOST_BASE;
    }

    @NotNull
    public final String getLang() {
        String str = this.lang;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("lang");
        return null;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final Locale getLocale() {
        return LocaleUtils.INSTANCE.getLocaleByLang(getLang());
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final String getLocaleStr() {
        return LocaleUtils.INSTANCE.getLocaleStr(getLocale());
    }

    @NotNull
    public final CBConfig getMessageCBConfig() {
        CBConfig cBConfig = this.messageCBConfig;
        if (cBConfig != null) {
            return cBConfig;
        }
        Intrinsics.throwUninitializedPropertyAccessException("messageCBConfig");
        return null;
    }

    @NotNull
    public final String getName() {
        String str = this.name;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("name");
        return null;
    }

    @NotNull
    public final OssConfigInfo getOssConfig() {
        OssConfigInfo ossConfigInfo = this.ossConfig;
        if (ossConfigInfo != null) {
            return ossConfigInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ossConfig");
        return null;
    }

    @Nullable
    public final String getRegion() {
        return this.region;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isChineseCluster() {
        return StringUtils.startsWithIgnoreCase(getLang(), Locale.CHINESE.getLanguage());
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isDevCluster() {
        return StringUtils.startsWith(getClusterId(), ClusterConstant.INSTANCE.getTEST_SERVER_ID());
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isSameCluster(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        return isSameCluster(clusterInfo.getClusterId());
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isUSASCluster() {
        return StringUtils.startsWithIgnoreCase(getLang(), Locale.US.getLanguage());
    }

    @NotNull
    public final String loadBookShopApiBaseUrl() {
        ClusterHost clusterHost = this.clusterHost;
        if (clusterHost == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clusterHost");
            clusterHost = null;
        }
        return getApi(clusterHost.getShopBookUrl());
    }

    @NotNull
    public final String loadOnyxApiBaseUrl() {
        ClusterHost clusterHost = this.clusterHost;
        if (clusterHost == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clusterHost");
            clusterHost = null;
        }
        return getApiV1(clusterHost.getOnyxHostBaseUrl());
    }

    @NotNull
    public final String loadOnyxApiV2() {
        ClusterHost clusterHost = this.clusterHost;
        if (clusterHost == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clusterHost");
            clusterHost = null;
        }
        return getApiV2(clusterHost.getOnyxHostBaseUrl());
    }

    @NotNull
    public final String loadOnyxCloudDataApiBaseUrl() {
        ClusterHost clusterHost = this.clusterHost;
        if (clusterHost == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clusterHost");
            clusterHost = null;
        }
        return getApi(clusterHost.getOnyxCloudDataHostBaseUrl());
    }

    @NotNull
    public final String loadOnyxContentApiBaseUrl() {
        ClusterHost clusterHost = this.clusterHost;
        if (clusterHost == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clusterHost");
            clusterHost = null;
        }
        return getApiV1(clusterHost.getOnyxContentHostBaseUrl());
    }

    @NotNull
    public final String loadOnyxSend2BooxApiBaseUrl() {
        ClusterHost clusterHost = this.clusterHost;
        if (clusterHost == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clusterHost");
            clusterHost = null;
        }
        return getApiV1(clusterHost.getOnyxSend2BooxHostBaseUrl());
    }

    public final void setCbConfig(@NotNull CBConfig cBConfig) {
        Intrinsics.checkNotNullParameter(cBConfig, "<set-?>");
        this.cbConfig = cBConfig;
    }

    public final void setClusterHost(@NotNull ClusterHost clusterHost) {
        Intrinsics.checkNotNullParameter(clusterHost, "clusterHost");
        this.clusterHost = clusterHost;
    }

    public final void setClusterId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.clusterId = str;
    }

    public final void setLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lang = str;
    }

    public final void setMessageCBConfig(@NotNull CBConfig cBConfig) {
        Intrinsics.checkNotNullParameter(cBConfig, "<set-?>");
        this.messageCBConfig = cBConfig;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setOssConfig(@NotNull OssConfigInfo ossConfigInfo) {
        Intrinsics.checkNotNullParameter(ossConfigInfo, "<set-?>");
        this.ossConfig = ossConfigInfo;
    }

    public final void setRegion(@Nullable String str) {
        this.region = str;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isSameCluster(@Nullable String clusterId) {
        return StringUtils.equals(getClusterId(), clusterId);
    }
}
