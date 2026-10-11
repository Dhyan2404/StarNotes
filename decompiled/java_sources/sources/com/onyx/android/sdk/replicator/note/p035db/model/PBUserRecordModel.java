package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0010H\u0007J\b\u0010\u0012\u001a\u00020\u0010H\u0007J\b\u0010\u0013\u001a\u00020\u0010H\u0007R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/PBUserRecordModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "status", "", "getStatus", "()I", "setStatus", "(I)V", "timeStamp", "", "getTimeStamp", "()J", "setTimeStamp", "(J)V", "isEmebbed", "", "isExported", "isImported", "isSynced", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PBUserRecordModel extends BaseReplicatorModel {
    private int status;
    private long timeStamp;

    public final int getStatus() {
        return this.status;
    }

    public final long getTimeStamp() {
        return this.timeStamp;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isEmebbed() {
        return this.status == 3;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isExported() {
        return this.status == 2;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isImported() {
        return this.status == 1;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isSynced() {
        return isImported() || isExported();
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTimeStamp(long j) {
        this.timeStamp = j;
    }
}
