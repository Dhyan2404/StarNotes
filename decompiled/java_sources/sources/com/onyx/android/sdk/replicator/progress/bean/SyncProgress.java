package com.onyx.android.sdk.replicator.progress.bean;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u001a\u0010\t\u001a\u00020\b2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0006J\u0016\u0010\f\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0004J&\u0010\f\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\rJ(\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\bR\"\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/progress/bean/SyncProgress;", "", "", "", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "getProgressMap", "", "progressMap", "", "setProgressMap", "documentId", "docProgress", "updateDocProgress", "", "syncType", "accountId", CouchFieldKey.KEY_SYNC_STATUS, "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", "status", "getSyncDocProgress", "", "isSyncingToThirdParty", "getSyncDocStatus", Constants.CLEAR_ATTRIBUTES, "a", "Ljava/util/Map;", "", "getOnyxSyncFailDocList", "()Ljava/util/List;", "onyxSyncFailDocList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SyncProgress {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Map<String, SyncDocProgress> progressMap = new LinkedHashMap();

    public final void clear() {
        this.progressMap.clear();
    }

    @NotNull
    public final List<String> getOnyxSyncFailDocList() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, SyncDocProgress> entry : this.progressMap.entrySet()) {
            String key = entry.getKey();
            if (entry.getValue().isOnyxSyncFail()) {
                arrayList.add(key);
            }
        }
        return arrayList;
    }

    @NotNull
    public final Map<String, SyncDocProgress> getProgressMap() {
        return this.progressMap;
    }

    @NotNull
    public final SyncDocProgress getSyncDocProgress(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        SyncDocProgress syncDocProgress = this.progressMap.get(documentId);
        if (syncDocProgress != null) {
            return syncDocProgress;
        }
        SyncDocProgress syncDocProgress2 = new SyncDocProgress();
        this.progressMap.put(documentId, syncDocProgress2);
        return syncDocProgress2;
    }

    public final int getSyncDocStatus(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return getSyncDocProgress(documentId).getSyncStatus();
    }

    public final boolean isSyncingToThirdParty(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return getSyncDocProgress(documentId).isSyncingToThirdParty();
    }

    public final void setProgressMap(@NotNull Map<String, SyncDocProgress> progressMap) {
        Intrinsics.checkNotNullParameter(progressMap, "progressMap");
        this.progressMap = progressMap;
    }

    public final void updateDocProgress(@NotNull String documentId, @NotNull SyncDocProgress docProgress) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(docProgress, "docProgress");
        this.progressMap.put(documentId, docProgress);
    }

    public final void updateDocProgress(@NotNull String documentId, int syncType, @NotNull String accountId, int syncStatus) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        getSyncDocProgress(documentId).addSyncStatus(syncType, accountId, syncStatus);
    }

    @NotNull
    public final SyncDocProgress updateDocProgress(@NotNull String documentId, int syncType, @NotNull String accountId, @Nullable KSyncStatus status) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        SyncDocProgress syncDocProgress = getSyncDocProgress(documentId);
        syncDocProgress.addSyncStatus(syncType, accountId, status);
        return syncDocProgress;
    }
}
