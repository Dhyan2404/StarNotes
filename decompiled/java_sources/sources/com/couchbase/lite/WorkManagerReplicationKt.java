package com.couchbase.lite;

import androidx.work.Data;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.internal.ReplicatorWorker;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0014\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"toReplicatorStatus", "Lcom/couchbase/lite/ReplicatorStatus;", "Landroidx/work/Data;", "replId", "", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public final class WorkManagerReplicationKt {
    @Nullable
    public static final ReplicatorStatus toReplicatorStatus(@NotNull Data data, @NotNull String replId) {
        Intrinsics.checkNotNullParameter(data, "<this>");
        Intrinsics.checkNotNullParameter(replId, "replId");
        if (!Intrinsics.areEqual(replId, data.getString(ReplicatorWorker.KEY_REPLICATOR))) {
            return null;
        }
        ReplicatorActivityLevel replicatorActivityLevel = ReplicatorWorker.INSTANCE.getActivityLevelFromString().get(data.getString(ReplicatorWorker.KEY_REPLICATION_ACTIVITY_LEVEL));
        Intrinsics.checkNotNull(replicatorActivityLevel);
        ReplicatorActivityLevel replicatorActivityLevel2 = replicatorActivityLevel;
        ReplicatorProgress replicatorProgress = new ReplicatorProgress(data.getLong(ReplicatorWorker.KEY_REPLICATION_COMPLETED, 0L), data.getLong(ReplicatorWorker.KEY_REPLICATION_TOTAL, 0L));
        String string = data.getString(ReplicatorWorker.KEY_REPLICATION_ERROR_MESSAGE);
        return new ReplicatorStatus(replicatorActivityLevel2, replicatorProgress, string != null ? new CouchbaseLiteException(string, CBLError.Domain.CBLITE, data.getInt(ReplicatorWorker.KEY_REPLICATION_ERROR_CODE, 0)) : null);
    }
}
