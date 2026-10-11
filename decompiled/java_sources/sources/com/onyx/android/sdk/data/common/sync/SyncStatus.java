package com.onyx.android.sdk.data.common.sync;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/sync/SyncStatus;", "", "()V", "PENDING", "", "SYNCING", "SYNC_DISABLE", "SYNC_ERROR", "SYNC_NO_DATA", "SYNC_STOP", "SYNC_SUCCESS", "SYNC_UPDATING", "SYNC_WAITING", "UNCONNECTED", "isFinished", "", "status", "toString", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SyncStatus {

    @NotNull
    public static final SyncStatus INSTANCE = new SyncStatus();
    public static final int PENDING = 0;
    public static final int SYNCING = 1;
    public static final int SYNC_DISABLE = 7;
    public static final int SYNC_ERROR = 3;
    public static final int SYNC_NO_DATA = 8;
    public static final int SYNC_STOP = 4;
    public static final int SYNC_SUCCESS = 2;
    public static final int SYNC_UPDATING = 6;
    public static final int SYNC_WAITING = 5;
    public static final int UNCONNECTED = 9;

    private SyncStatus() {
    }

    public final boolean isFinished(int status) {
        return status == 2 || status == 3 || status == 4;
    }

    @NotNull
    public final String toString(int status) {
        switch (status) {
            case 0:
                return "PENDING";
            case 1:
                return "SYNCING";
            case 2:
                return "SYNC_SUCCESS";
            case 3:
                return "SYNC_ERROR";
            case 4:
                return "SYNC_STOP";
            case 5:
                return "SYNC_WAITING";
            case 6:
                return "SYNC_UPDATING";
            case 7:
                return "SYNC_DISABLE";
            case 8:
                return "SYNC_NO_DATA";
            default:
                return String.valueOf(status);
        }
    }
}
