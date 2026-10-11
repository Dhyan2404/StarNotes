package com.onyx.android.sdk.data.common.sync;

import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.StringOption;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u000eJ\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u000eJ\u0006\u0010\u0015\u001a\u00020\u0010J\u0006\u0010\u0016\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;", "", "()V", "SETTING_CLOUD_BACKUP_IS_AUTO", "", "SETTING_CLOUD_BACKUP_IS_WIFI_ONLY", "SETTING_CLOUD_BACKUP_LAST_TIME", "SETTING_CLOUD_SYNC_IS_AUTO", "SETTING_CLOUD_SYNC_IS_WIFI_ONLY", "SETTING_CLOUD_SYNC_LAST_TIME", "SETTING_LOCAL_BACKUP_IS_AUTO", "SETTING_LOCAL_BACKUP_IS_INTERNAL_STORAGE", "SETTING_LOCAL_BACKUP_LAST_TIME", "getBackupPathOption", "Lcom/onyx/android/sdk/data/utils/StringOption;", "getCloudAutoSyncOption", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "getCloudBackupAutoOption", "getCloudBackupLastTime", "getCloudBackupWifiOnlyOption", "getCloudSyncLastTime", "getCloudSyncWifiOnlyOption", "getLocalBackupAutoOption", "getLocalBackupLastTime", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MMKVBackup {

    @NotNull
    public static final MMKVBackup INSTANCE = new MMKVBackup();

    @NotNull
    private static final String SETTING_CLOUD_BACKUP_IS_AUTO = "setting_cloud_backup_is_auto";

    @NotNull
    private static final String SETTING_CLOUD_BACKUP_IS_WIFI_ONLY = "setting_cloud_backup_is_wifi_only";

    @NotNull
    private static final String SETTING_CLOUD_BACKUP_LAST_TIME = "setting_cloud_backup_last_time";

    @NotNull
    private static final String SETTING_CLOUD_SYNC_IS_AUTO = "setting_cloud_is_auto_sync";

    @NotNull
    private static final String SETTING_CLOUD_SYNC_IS_WIFI_ONLY = "setting_cloud_sync_is_wifi_only";

    @NotNull
    private static final String SETTING_CLOUD_SYNC_LAST_TIME = "setting_cloud_sync_last_time";

    @NotNull
    private static final String SETTING_LOCAL_BACKUP_IS_AUTO = "setting_local_backup_is_auto";

    @NotNull
    private static final String SETTING_LOCAL_BACKUP_IS_INTERNAL_STORAGE = "setting_local_backup_is_internal_storage";

    @NotNull
    private static final String SETTING_LOCAL_BACKUP_LAST_TIME = "setting_local_backup_last_time";

    private MMKVBackup() {
    }

    @NotNull
    public final StringOption getBackupPathOption() {
        return MMKVUtils.INSTANCE.stringOption(SETTING_LOCAL_BACKUP_IS_INTERNAL_STORAGE, "");
    }

    @NotNull
    public final BooleanOption getCloudAutoSyncOption() {
        return MMKVUtils.INSTANCE.booleanOption(SETTING_CLOUD_SYNC_IS_AUTO, false);
    }

    @NotNull
    public final BooleanOption getCloudBackupAutoOption() {
        return MMKVUtils.INSTANCE.booleanOption(SETTING_CLOUD_BACKUP_IS_AUTO, false);
    }

    @NotNull
    public final StringOption getCloudBackupLastTime() {
        return MMKVUtils.INSTANCE.stringOption(AccountDataBundle.INSTANCE.getUserMMKVKey(SETTING_CLOUD_BACKUP_LAST_TIME), "");
    }

    @NotNull
    public final BooleanOption getCloudBackupWifiOnlyOption() {
        return MMKVUtils.INSTANCE.booleanOption(SETTING_CLOUD_BACKUP_IS_WIFI_ONLY, true);
    }

    @NotNull
    public final StringOption getCloudSyncLastTime() {
        return MMKVUtils.INSTANCE.stringOption(AccountDataBundle.INSTANCE.getUserMMKVKey(SETTING_CLOUD_SYNC_LAST_TIME), "");
    }

    @NotNull
    public final BooleanOption getCloudSyncWifiOnlyOption() {
        return MMKVUtils.INSTANCE.booleanOption(SETTING_CLOUD_SYNC_IS_WIFI_ONLY, true);
    }

    @NotNull
    public final BooleanOption getLocalBackupAutoOption() {
        return MMKVUtils.INSTANCE.booleanOption(SETTING_LOCAL_BACKUP_IS_AUTO, false);
    }

    @NotNull
    public final StringOption getLocalBackupLastTime() {
        return MMKVUtils.INSTANCE.stringOption(AccountDataBundle.INSTANCE.getUserMMKVKey(SETTING_LOCAL_BACKUP_LAST_TIME), "");
    }
}
