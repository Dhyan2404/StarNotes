package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/NoteExtraModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", CouchFieldKey.KEY_EXPAND_STATUS, "", "getExpandStatus", "()I", "setExpandStatus", "(I)V", "type", "getType", "setType", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteExtraModel extends BaseReplicatorModel {
    private int expandStatus;
    private int type;

    public final int getExpandStatus() {
        return this.expandStatus;
    }

    public final int getType() {
        return this.type;
    }

    public final void setExpandStatus(int i) {
        this.expandStatus = i;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
