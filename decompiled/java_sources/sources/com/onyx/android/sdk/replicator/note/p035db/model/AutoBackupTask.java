package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0013\u001a\u00020\u0005R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\t\"\u0004\b\u0010\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\t\"\u0004\b\u0012\u0010\u000b¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "documentId", "", CouchFieldKey.KEY_LOCAL_BACKUP, "", CouchFieldKey.KEY_CLOUD_BACKUP, "(Ljava/lang/String;ZZ)V", "getCloudBackup", Constants.BOOLEAN_VALUE_SIG, "setCloudBackup", "(Z)V", "getDocumentId", "()Ljava/lang/String;", "error", "getError", "setError", "getLocalBackup", "setLocalBackup", "backupEnabled", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AutoBackupTask extends BaseReplicatorModel {
    private boolean cloudBackup;

    @NotNull
    private final String documentId;
    private boolean error;
    private boolean localBackup;

    public AutoBackupTask() {
        this(null, false, false, 7, null);
    }

    public final boolean backupEnabled() {
        return this.localBackup || this.cloudBackup;
    }

    public final boolean getCloudBackup() {
        return this.cloudBackup;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    public final boolean getError() {
        return this.error;
    }

    public final boolean getLocalBackup() {
        return this.localBackup;
    }

    public final void setCloudBackup(boolean z) {
        this.cloudBackup = z;
    }

    public final void setError(boolean z) {
        this.error = z;
    }

    public final void setLocalBackup(boolean z) {
        this.localBackup = z;
    }

    public /* synthetic */ AutoBackupTask(String str, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
    }

    public AutoBackupTask(@NotNull String documentId, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
        this.localBackup = z;
        this.cloudBackup = z2;
    }
}
