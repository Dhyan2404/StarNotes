package com.onyx.android.sdk.data.cluster;

import android.os.Environment;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.utils.ResManager;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\u0014\n\u0002\u0010$\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u0019\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0006R\u0014\u0010\u0014\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0006R\u0019\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0017\u0010\u0010R\u0014\u0010\u0018\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0006R\u0014\u0010\u001a\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0006R\u0014\u0010\u001c\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0006R\u0014\u0010\u001e\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0006R\u0019\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u000e¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b!\u0010\u0010R\u001d\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040#¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010&\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0006R\u0014\u0010(\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0006R\u0014\u0010*\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0006¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/ClusterConstant;", "", "()V", "CN_SERVER_ID", "", "getCN_SERVER_ID", "()Ljava/lang/String;", "COUCH_BASE_TEST_SERVER_ID", "getCOUCH_BASE_TEST_SERVER_ID", "CURRENT_SERVER_KEY", "getCURRENT_SERVER_KEY", "EUR_SERVER_ID", "getEUR_SERVER_ID", "INTERNAL_INDEX_SERVER_HOST_ARRAY", "", "getINTERNAL_INDEX_SERVER_HOST_ARRAY", "()[Ljava/lang/String;", "[Ljava/lang/String;", "METADATA_CLUSTER", "getMETADATA_CLUSTER", "ONYX_CLUSTER_SYSTEM_KEY", "getONYX_CLUSTER_SYSTEM_KEY", "OVERSEA_INDEX_SERVER_HOST_ARRAY", "getOVERSEA_INDEX_SERVER_HOST_ARRAY", "SERVER_LIST_KEY", "getSERVER_LIST_KEY", "TEST_AMERICAN_SERVER_ID", "getTEST_AMERICAN_SERVER_ID", "TEST_CHINESE_SERVER_ID", "getTEST_CHINESE_SERVER_ID", "TEST_EUR_SERVER_ID", "getTEST_EUR_SERVER_ID", "TEST_INDEX_SERVER_HOST_ARRAY", "getTEST_INDEX_SERVER_HOST_ARRAY", "TEST_SERVER_CLUSTER_ID_MAP", "", "getTEST_SERVER_CLUSTER_ID_MAP", "()Ljava/util/Map;", "TEST_SERVER_FILE", "getTEST_SERVER_FILE", "TEST_SERVER_ID", "getTEST_SERVER_ID", "VIETNAM_SERVER_ID", "getVIETNAM_SERVER_ID", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ClusterConstant {

    @NotNull
    private static final Map<String, String> TEST_SERVER_CLUSTER_ID_MAP;

    @NotNull
    private static final String TEST_SERVER_FILE;

    @NotNull
    public static final ClusterConstant INSTANCE = new ClusterConstant();

    @NotNull
    private static final String ONYX_CLUSTER_SYSTEM_KEY = "ONYX_CLUSTER_SYSTEM_KEY";

    @NotNull
    private static final String METADATA_CLUSTER = "cluster";

    @NotNull
    private static final String TEST_SERVER_ID = "test_server_id";

    @NotNull
    private static final String TEST_CHINESE_SERVER_ID = "test_server_id_zh";

    @NotNull
    private static final String TEST_AMERICAN_SERVER_ID = "test_server_id_en";

    @NotNull
    private static final String TEST_EUR_SERVER_ID = "test_server_id_eur";

    @NotNull
    private static final String COUCH_BASE_TEST_SERVER_ID = "couch_base_test_server_id";

    @NotNull
    private static final String VIETNAM_SERVER_ID = "vn";

    @NotNull
    private static final String EUR_SERVER_ID = "eu";

    @NotNull
    private static final String CN_SERVER_ID = "zh";

    @NotNull
    private static final String SERVER_LIST_KEY = "onyx_server_list_key";

    @NotNull
    private static final String CURRENT_SERVER_KEY = "onyx_current_server_key";

    @NotNull
    private static final String[] INTERNAL_INDEX_SERVER_HOST_ARRAY = {"https://index1.send2boox.com", "https://index2.send2boox.com", "https://index3.send2boox.com", "https://index4.send2boox.com", "https://index5.send2boox.com"};

    @NotNull
    private static final String[] OVERSEA_INDEX_SERVER_HOST_ARRAY = {"https://index1.boox.com", "https://index2.boox.com", "https://index3.boox.com", "https://index4.boox.com", "https://index5.boox.com"};

    @NotNull
    private static final String[] TEST_INDEX_SERVER_HOST_ARRAY = {"https://dev-index.boox.com"};

    static {
        Map<String, String> mapOf;
        ResManager resManager = ResManager.INSTANCE;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m61535to(resManager.getStringSafely(C7106R.string.test_server_region), "test_server_id_zh"), TuplesKt.m61535to(resManager.getStringSafely(C7106R.string.test_server_region_us), "test_server_id_en"), TuplesKt.m61535to(resManager.getStringSafely(C7106R.string.test_server_region_eu), "test_server_id_eur"));
        TEST_SERVER_CLUSTER_ID_MAP = mapOf;
        TEST_SERVER_FILE = Environment.getExternalStorageDirectory().getAbsolutePath() + "/onyx_test_server";
    }

    private ClusterConstant() {
    }

    @NotNull
    public final String getCN_SERVER_ID() {
        return CN_SERVER_ID;
    }

    @NotNull
    public final String getCOUCH_BASE_TEST_SERVER_ID() {
        return COUCH_BASE_TEST_SERVER_ID;
    }

    @NotNull
    public final String getCURRENT_SERVER_KEY() {
        return CURRENT_SERVER_KEY;
    }

    @NotNull
    public final String getEUR_SERVER_ID() {
        return EUR_SERVER_ID;
    }

    @NotNull
    public final String[] getINTERNAL_INDEX_SERVER_HOST_ARRAY() {
        return INTERNAL_INDEX_SERVER_HOST_ARRAY;
    }

    @NotNull
    public final String getMETADATA_CLUSTER() {
        return METADATA_CLUSTER;
    }

    @NotNull
    public final String getONYX_CLUSTER_SYSTEM_KEY() {
        return ONYX_CLUSTER_SYSTEM_KEY;
    }

    @NotNull
    public final String[] getOVERSEA_INDEX_SERVER_HOST_ARRAY() {
        return OVERSEA_INDEX_SERVER_HOST_ARRAY;
    }

    @NotNull
    public final String getSERVER_LIST_KEY() {
        return SERVER_LIST_KEY;
    }

    @NotNull
    public final String getTEST_AMERICAN_SERVER_ID() {
        return TEST_AMERICAN_SERVER_ID;
    }

    @NotNull
    public final String getTEST_CHINESE_SERVER_ID() {
        return TEST_CHINESE_SERVER_ID;
    }

    @NotNull
    public final String getTEST_EUR_SERVER_ID() {
        return TEST_EUR_SERVER_ID;
    }

    @NotNull
    public final String[] getTEST_INDEX_SERVER_HOST_ARRAY() {
        return TEST_INDEX_SERVER_HOST_ARRAY;
    }

    @NotNull
    public final Map<String, String> getTEST_SERVER_CLUSTER_ID_MAP() {
        return TEST_SERVER_CLUSTER_ID_MAP;
    }

    @NotNull
    public final String getTEST_SERVER_FILE() {
        return TEST_SERVER_FILE;
    }

    @NotNull
    public final String getTEST_SERVER_ID() {
        return TEST_SERVER_ID;
    }

    @NotNull
    public final String getVIETNAM_SERVER_ID() {
        return VIETNAM_SERVER_ID;
    }
}
