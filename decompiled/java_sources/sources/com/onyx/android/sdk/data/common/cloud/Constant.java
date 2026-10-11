package com.onyx.android.sdk.data.common.cloud;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.cluster.model.ClusterHost;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b0\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0012\u0010>\u001a\u00020?8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006B"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/Constant;", "", "()V", "ALL_TAG", "", "CHANNEL_TAG", "CLIENT", "CLIENT_ID_TAG", "CLIENT_TYPE", "CN_CLOUD_DATA_HOST_BASE", "CN_ONYX_API_BASE", "CN_ONYX_HOST_BASE", "DEFAULT_CLOUD_STORAGE", "DEFAULT_OKHTTP_READ_TIMEOUT_SECOND", "", "DEFAULT_OKHTTP_WRITE_TIMEOUT_SECOND", "DEV_CONTENT_API_BASE", "getDEV_CONTENT_API_BASE", "()Ljava/lang/String;", "DEV_CONTENT_HOST_BASE", "getDEV_CONTENT_HOST_BASE", "DEV_VERSION_TAG", "EN_CLOUD_DATA_HOST_BASE", "FILE_TAG", "FOLDER", "HEADER_CLIENT_TYPE", "HEADER_SERVER_TIME", "HEADER_USER_AGENT", "ID_TAG", "KEY_TAG", "LANG_TAG", "MAP_TAG", "MAX_RETRY_COUNT_WHEN_INTERNAL_SERVER_ERROR", "MODEL_TAG", "NAME_TAG", "OBJECT_ID_TAG", "OKHTTP_READ_DOC_CONVERT_SYNC_TIMEOUT_SECOND", "OPEN_WEIXIN_HOST_BASE", "OSS_GET_OBJECT_LIST_DEFAULT_RETRY_TIMES", "PADDING_TAG", "PARENT_TAG", "PATH_TAG", "QRCODE_ID", "ROOT_TAG", "SCOPE_DRIVE", "SEARCH", "SHARE_USER", "SRC_TAG", "STATISTICS_API_BASE", "TAG_APK_VERSION", "TAG_AUTHORIZATION", "TAG_CHANNEL", "TAG_CLIENT_ID", "TAG_CLIENT_SYSTEM", "TAG_DEVICE_ID", "TAG_DEVICE_LANG", "TAG_LANG", "TAG_USER_ID", "TARGET_TAG", "TIME", "TOKEN_INVALID_EXCEPTION", "USER_INFO", "USE_DEV_HOST", "", "VERSION_TAG", "WEB", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Constant {

    @NotNull
    public static final String ALL_TAG = "all";

    @NotNull
    public static final String CHANNEL_TAG = "channel";

    @NotNull
    public static final String CLIENT = "client";

    @NotNull
    public static final String CLIENT_ID_TAG = "clientId";

    @NotNull
    public static final String CLIENT_TYPE = "clientType";

    @NotNull
    public static final String CN_CLOUD_DATA_HOST_BASE = "http://cn-data.onyx-international.cn";

    @NotNull
    public static final String CN_ONYX_API_BASE = "http://cn-data.onyx-international.cn/api/1/";

    @NotNull
    public static final String CN_ONYX_HOST_BASE = "http://cn-data.onyx-international.cn";

    @NotNull
    public static final String DEFAULT_CLOUD_STORAGE = "oss";
    public static final int DEFAULT_OKHTTP_READ_TIMEOUT_SECOND = 30;
    public static final int DEFAULT_OKHTTP_WRITE_TIMEOUT_SECOND = 30;

    @NotNull
    private static final String DEV_CONTENT_API_BASE;

    @NotNull
    private static final String DEV_CONTENT_HOST_BASE;

    @NotNull
    public static final String DEV_VERSION_TAG = "dev_version";

    @NotNull
    public static final String EN_CLOUD_DATA_HOST_BASE = "http://en-data.onyx-international.cn";

    @NotNull
    public static final String FILE_TAG = "file";

    @NotNull
    public static final String FOLDER = "folder";

    @NotNull
    public static final String HEADER_CLIENT_TYPE = "client-type";

    @NotNull
    public static final String HEADER_SERVER_TIME = "X-Server-Time";

    @NotNull
    public static final String HEADER_USER_AGENT = "user-agent";

    @NotNull
    public static final String ID_TAG = "id";

    @NotNull
    public static final Constant INSTANCE = new Constant();

    @NotNull
    public static final String KEY_TAG = "key";

    @NotNull
    public static final String LANG_TAG = "lang";

    @NotNull
    public static final String MAP_TAG = "map";
    public static final int MAX_RETRY_COUNT_WHEN_INTERNAL_SERVER_ERROR = 3;

    @NotNull
    public static final String MODEL_TAG = "model";

    @NotNull
    public static final String NAME_TAG = "name";

    @NotNull
    public static final String OBJECT_ID_TAG = "_id";
    public static final int OKHTTP_READ_DOC_CONVERT_SYNC_TIMEOUT_SECOND = 600;

    @NotNull
    public static final String OPEN_WEIXIN_HOST_BASE = "https://open.weixin.qq.com";
    public static final int OSS_GET_OBJECT_LIST_DEFAULT_RETRY_TIMES = 2;

    @NotNull
    public static final String PADDING_TAG = "padding";

    @NotNull
    public static final String PARENT_TAG = "parent";

    @NotNull
    public static final String PATH_TAG = "path";

    @NotNull
    public static final String QRCODE_ID = "qrcodeId";

    @NotNull
    public static final String ROOT_TAG = "root";

    @NotNull
    public static final String SCOPE_DRIVE = "drive";

    @NotNull
    public static final String SEARCH = "search";

    @NotNull
    public static final String SHARE_USER = "share_user";

    @NotNull
    public static final String SRC_TAG = "src";

    @NotNull
    public static final String STATISTICS_API_BASE = "http://192.168.11.111/api/1/";

    @NotNull
    public static final String TAG_APK_VERSION = "versionCode";

    @NotNull
    public static final String TAG_AUTHORIZATION = "authorization";

    @NotNull
    public static final String TAG_CHANNEL = "channel";

    @NotNull
    public static final String TAG_CLIENT_ID = "clientId";

    @NotNull
    public static final String TAG_CLIENT_SYSTEM = "x-client-system";

    @NotNull
    public static final String TAG_DEVICE_ID = "deviceId";

    @NotNull
    public static final String TAG_DEVICE_LANG = "device-lang";

    @NotNull
    public static final String TAG_LANG = "language";

    @NotNull
    public static final String TAG_USER_ID = "userId";

    @NotNull
    public static final String TARGET_TAG = "target";

    @NotNull
    public static final String TIME = "time";
    public static final int TOKEN_INVALID_EXCEPTION = 401;

    @NotNull
    public static final String USER_INFO = "userInfo";

    @JvmField
    public static boolean USE_DEV_HOST = false;

    @NotNull
    public static final String VERSION_TAG = "version";

    @NotNull
    public static final String WEB = "web";

    static {
        String default_chinese_test_host = ClusterHost.INSTANCE.getDEFAULT_CHINESE_TEST_HOST();
        DEV_CONTENT_HOST_BASE = default_chinese_test_host;
        DEV_CONTENT_API_BASE = default_chinese_test_host + CloudStorageConstants.ONYX_NOTE_REQUEST_API;
    }

    private Constant() {
    }

    @NotNull
    public final String getDEV_CONTENT_API_BASE() {
        return DEV_CONTENT_API_BASE;
    }

    @NotNull
    public final String getDEV_CONTENT_HOST_BASE() {
        return DEV_CONTENT_HOST_BASE;
    }
}
