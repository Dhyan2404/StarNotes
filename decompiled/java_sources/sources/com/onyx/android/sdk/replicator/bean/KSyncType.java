package com.onyx.android.sdk.replicator.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/KSyncType;", "", "()V", "ALIYUN_KSYNC", "", "APP_PULL_KSYNC", "APP_PUSH_KSYNC", "BAIDUYUN_SYNC", "DROPBOX_SYNC", "EVERNOTE_SYNC", "GOOGLE_DRIVE_KSYNC", "NUT_STORE_KSYNC", "ONENOTE_SYNC", "ONE_DRIVE_KSYNC", "ONYX_CONTENT_SYNC", "ONYX_TREE_SYNC", "WEBDAV_CLOUD_KSYNC", "YNOTE_SYNC", "isThirdPartySyncType", "", "syncType", "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class KSyncType {
    public static final int ALIYUN_KSYNC = 12;
    public static final int APP_PULL_KSYNC = 7;
    public static final int APP_PUSH_KSYNC = 6;
    public static final int BAIDUYUN_SYNC = 5;
    public static final int DROPBOX_SYNC = 3;
    public static final int EVERNOTE_SYNC = 2;
    public static final int GOOGLE_DRIVE_KSYNC = 9;

    @NotNull
    public static final KSyncType INSTANCE = new KSyncType();
    public static final int NUT_STORE_KSYNC = 10;
    public static final int ONENOTE_SYNC = 4;
    public static final int ONE_DRIVE_KSYNC = 8;
    public static final int ONYX_CONTENT_SYNC = 0;
    public static final int ONYX_TREE_SYNC = 13;
    public static final int WEBDAV_CLOUD_KSYNC = 11;
    public static final int YNOTE_SYNC = 1;

    public final boolean isThirdPartySyncType(int syncType) {
        return syncType == 1 || syncType == 2 || syncType == 3 || syncType == 5 || syncType == 8 || syncType == 9 || syncType == 4;
    }

    @NotNull
    public final String toString(int syncType) {
        switch (syncType) {
            case 0:
                return "ONYX_SYNC";
            case 1:
                return "YNOTE_SYNC";
            case 2:
                return "EVERNOTE_SYNC";
            case 3:
                return "DROPBOX_SYNC";
            case 4:
                return "ONENOTE_SYNC";
            case 5:
                return "BAIDUYUN_SYNC";
            case 6:
                return "APP_PUSH_KSYNC";
            case 7:
                return "APP_PULL_KSYNC";
            case 8:
                return "ONE_DRIVE_KSYNC";
            case 9:
                return "GOOGLE_DRIVE_KSYNC";
            case 10:
                return "NUT_STORE_KSYNC";
            case 11:
                return "WEBDAV_CLOUD_KSYNC";
            case 12:
            default:
                return String.valueOf(syncType);
            case 13:
                return "ONYX_TREE_SYNC";
        }
    }
}
