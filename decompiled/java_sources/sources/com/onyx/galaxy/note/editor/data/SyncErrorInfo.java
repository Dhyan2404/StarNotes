package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.bean.UserStorageBean;
import com.onyx.android.sdk.data.couchbase.bean.ReplicatorError;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.OnyxErrorType;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgressBean;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0013\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\b¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;", "", "", "a", "I", "getCode", "()I", "setCode", "(I)V", "code", "b", "getType", "setType", "type", "c", "getSyncType", "setSyncType", "syncType", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SyncErrorInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int NETWORK_BAD = 2;
    public static final int NETWORK_ERROR_WITH_RETRY = 0;
    public static final int SYNC_ERROR_WITH_RETRY = 1;
    public static final int SYNC_ERROR_WITH_SERVICE = 3;
    public static final int UNKNOWN_ERROR = 4;

    /* renamed from: a, reason: from kotlin metadata */
    public int code = 4;

    /* renamed from: b, reason: from kotlin metadata */
    public int type = OnyxErrorType.INSTANCE.getUNKNOWN_ERROR();

    /* renamed from: c, reason: from kotlin metadata */
    public int syncType;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u0004\u0018\u00010\b*\u0004\u0018\u00010\u0002J\f\u0010\u000b\u001a\u00020\u0002*\u0004\u0018\u00010\nJ\u000e\u0010\f\u001a\u0004\u0018\u00010\b*\u00020\u0002H\u0002R\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000e¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion;", "", "Lcom/onyx/galaxy/note/editor/data/SyncErrorInfo;", "unknownError", "", "type", "", "canRetry", "", "getErrorCodeMsg", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "createSyncErrorInfo", "a", "NETWORK_BAD", "I", "NETWORK_ERROR_WITH_RETRY", "SYNC_ERROR_WITH_RETRY", "SYNC_ERROR_WITH_SERVICE", "UNKNOWN_ERROR", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nSyncErrorInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncErrorInfo.kt\ncom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1855#2:101\n1747#2,3:102\n1747#2,3:105\n1747#2,3:108\n1856#2:111\n*S KotlinDebug\n*F\n+ 1 SyncErrorInfo.kt\ncom/onyx/galaxy/note/editor/data/SyncErrorInfo$Companion\n*L\n63#1:101\n74#1:102,3\n83#1:105,3\n85#1:108,3\n63#1:111\n*E\n"})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final String m46012a(SyncErrorInfo syncErrorInfo) {
            int syncType = syncErrorInfo.getSyncType();
            return syncType != 0 ? syncType != 13 ? ResManager.INSTANCE.getString(C10651R.string.sync_unknown_error) : ResManager.INSTANCE.getString(C10651R.string.replicator_sync_error) : ResManager.INSTANCE.getString(C10651R.string.content_sync_error);
        }

        public final boolean canRetry(int type) {
            return type == 0 || type == 1;
        }

        @NotNull
        public final SyncErrorInfo createSyncErrorInfo(@Nullable SyncDocProgress syncDocProgress) {
            List<Integer> errorTypeList;
            boolean z;
            Object first;
            Object first2;
            if (syncDocProgress == null) {
                return unknownError();
            }
            SyncErrorInfo syncErrorInfo = new SyncErrorInfo();
            if (!NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext())) {
                syncErrorInfo.setType(2);
                return syncErrorInfo;
            }
            for (SyncDocProgressBean syncDocProgressBean : syncDocProgress.getSyncStatusSet()) {
                if (syncDocProgressBean.getSyncStatus().isSyncFail() && (errorTypeList = syncDocProgressBean.getSyncStatus().getErrorTypeList()) != null && !errorTypeList.isEmpty()) {
                    syncErrorInfo.setSyncType(syncDocProgressBean.getSyncType());
                    int syncType = syncDocProgressBean.getSyncType();
                    boolean z2 = true;
                    boolean z3 = false;
                    if (syncType != 0) {
                        if (syncType != 13) {
                            return SyncErrorInfo.INSTANCE.unknownError();
                        }
                        List<Integer> list = errorTypeList;
                        if (!(list instanceof Collection) || !list.isEmpty()) {
                            Iterator<T> it2 = list.iterator();
                            while (it2.hasNext()) {
                                if (ReplicatorError.INSTANCE.isNetworkError(((Number) it2.next()).intValue())) {
                                    break;
                                }
                            }
                        }
                        z2 = false;
                        if (z2) {
                            syncErrorInfo.setType(0);
                        } else {
                            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) errorTypeList);
                            syncErrorInfo.setCode(((Number) first2).intValue());
                            syncErrorInfo.setType(3);
                        }
                        return syncErrorInfo;
                    }
                    List<Integer> list2 = errorTypeList;
                    boolean z4 = list2 instanceof Collection;
                    if (!z4 || !list2.isEmpty()) {
                        Iterator<T> it3 = list2.iterator();
                        while (it3.hasNext()) {
                            if (OnyxErrorType.INSTANCE.isNetworkError(((Number) it3.next()).intValue())) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    if (z) {
                        syncErrorInfo.setType(0);
                    } else {
                        if (!z4 || !list2.isEmpty()) {
                            Iterator<T> it4 = list2.iterator();
                            while (true) {
                                if (!it4.hasNext()) {
                                    break;
                                }
                                if (OnyxErrorType.INSTANCE.canRetryError(((Number) it4.next()).intValue())) {
                                    z3 = true;
                                    break;
                                }
                            }
                        }
                        if (z3) {
                            syncErrorInfo.setType(1);
                        } else {
                            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) errorTypeList);
                            syncErrorInfo.setCode(((Number) first).intValue());
                            syncErrorInfo.setType(3);
                        }
                    }
                    return syncErrorInfo;
                }
            }
            return unknownError();
        }

        @Nullable
        public final String getErrorCodeMsg(@Nullable SyncErrorInfo syncErrorInfo) {
            if (syncErrorInfo == null) {
                return null;
            }
            int code = syncErrorInfo.getCode();
            OnyxErrorType onyxErrorType = OnyxErrorType.INSTANCE;
            if (code != onyxErrorType.getUSER_STORAGE_TOO_LOW()) {
                return code == onyxErrorType.getPUSH_DATA_ERROR() ? ResManager.INSTANCE.getString(C10651R.string.sync_pull_error) : code == onyxErrorType.getPULL_DATA_ERROR() ? ResManager.INSTANCE.getString(C10651R.string.sync_push_error) : code == onyxErrorType.getNETWORK_ERROR() ? ResManager.INSTANCE.getString(C10651R.string.network_error_hint) : code == onyxErrorType.getTIMEOUT_ERROR() ? ResManager.INSTANCE.getString(C10651R.string.network_socket_timeout) : code == onyxErrorType.getUNKNOWN_ERROR() ? ResManager.INSTANCE.getString(C10651R.string.sync_unknown_error) : m46012a(syncErrorInfo);
            }
            ResManager resManager = ResManager.INSTANCE;
            int i = C10651R.string.min_user_storage_tips;
            Object[] objArr = new Object[1];
            UserStorageBean userStorageBean = KSyncBundle.INSTANCE.getUserStorageBean();
            objArr[0] = Long.valueOf(userStorageBean != null ? userStorageBean.getStorageRedMB() : 0L);
            return resManager.getString(i, objArr);
        }

        @NotNull
        public final SyncErrorInfo unknownError() {
            return new SyncErrorInfo();
        }

        public Companion() {
        }
    }

    public final int getCode() {
        return this.code;
    }

    public final int getSyncType() {
        return this.syncType;
    }

    public final int getType() {
        return this.type;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setSyncType(int i) {
        this.syncType = i;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
