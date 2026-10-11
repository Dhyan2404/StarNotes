package com.onyx.android.sdk.reader.sync.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/SyncMetadataCollectionModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_DOCUMENT_ID, "", "getDocumentUniqueId", "()Ljava/lang/String;", "setDocumentUniqueId", "(Ljava/lang/String;)V", "libraryUniqueId", "getLibraryUniqueId", "setLibraryUniqueId", CouchFieldKey.KEY_MODE_TYPE, "", "getModeType", "()I", "setModeType", "(I)V", "status", "getStatus", "setStatus", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncMetadataCollectionModel extends BaseReplicatorModel {

    @Nullable
    private String documentUniqueId;

    @Nullable
    private String libraryUniqueId;
    private int modeType = 5;
    private int status;

    @Nullable
    public final String getDocumentUniqueId() {
        return this.documentUniqueId;
    }

    @Nullable
    public final String getLibraryUniqueId() {
        return this.libraryUniqueId;
    }

    public final int getModeType() {
        return this.modeType;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void setDocumentUniqueId(@Nullable String str) {
        this.documentUniqueId = str;
    }

    public final void setLibraryUniqueId(@Nullable String str) {
        this.libraryUniqueId = str;
    }

    public final void setModeType(int i) {
        this.modeType = i;
    }

    public final void setStatus(int i) {
        this.status = i;
    }
}
