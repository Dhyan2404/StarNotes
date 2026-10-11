package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "documentId", "", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_LOCAL_FILE_PATH, "getLocalFilePath", "setLocalFilePath", CouchFieldKey.KEY_PROVIDER_NAME, "getProviderName", "setProviderName", "status", "", "getStatus", "()I", "setStatus", "(I)V", "type", "getType", "setType", "isCloudBackup", "", "isLocalBackup", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AutoBackupModel extends BaseReplicatorModel {
    public static final int AUTO_BACKUP_CLOUD = 1;
    public static final int AUTO_BACKUP_LOCAL = 0;

    @NotNull
    private String documentId = "";

    @NotNull
    private String localFilePath = "";

    @NotNull
    private String providerName = "";
    private int status;
    private int type;

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final String getLocalFilePath() {
        return this.localFilePath;
    }

    @NotNull
    public final String getProviderName() {
        return this.providerName;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean isCloudBackup() {
        return this.type == 1;
    }

    public final boolean isLocalBackup() {
        return this.type == 0;
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setLocalFilePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.localFilePath = str;
    }

    public final void setProviderName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.providerName = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
