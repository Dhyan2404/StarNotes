package com.onyx.android.sdk.reader.sync.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/SyncReaderUserDataModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "documentId", "", "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class SyncReaderUserDataModel extends BaseReplicatorModel {

    @Nullable
    private String documentId;

    @Nullable
    public final String getDocumentId() {
        return this.documentId;
    }

    public final void setDocumentId(@Nullable String str) {
        this.documentId = str;
    }
}
