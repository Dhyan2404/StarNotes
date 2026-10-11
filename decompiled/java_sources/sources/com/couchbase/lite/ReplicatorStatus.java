package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4ReplicatorStatus;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class ReplicatorStatus {

    @NonNull
    private static final Map<Integer, ReplicatorActivityLevel> ACTIVITY_LEVEL_FROM_C4;
    static final ReplicatorStatus INIT;

    @NonNull
    private final ReplicatorActivityLevel activityLevel;

    @Nullable
    private final CouchbaseLiteException error;

    @NonNull
    private final ReplicatorProgress progress;

    static {
        ReplicatorActivityLevel replicatorActivityLevel = ReplicatorActivityLevel.STOPPED;
        INIT = new ReplicatorStatus(replicatorActivityLevel, new ReplicatorProgress(0L, 0L), null);
        HashMap hashMap = new HashMap();
        hashMap.put(0, replicatorActivityLevel);
        hashMap.put(1, ReplicatorActivityLevel.OFFLINE);
        hashMap.put(2, ReplicatorActivityLevel.CONNECTING);
        hashMap.put(3, ReplicatorActivityLevel.IDLE);
        hashMap.put(4, ReplicatorActivityLevel.BUSY);
        ACTIVITY_LEVEL_FROM_C4 = Collections.unmodifiableMap(hashMap);
    }

    public ReplicatorStatus(@NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        this(getActivityLevelFromC4(c4ReplicatorStatus.getActivityLevel()), new ReplicatorProgress((int) c4ReplicatorStatus.getProgressUnitsCompleted(), (int) c4ReplicatorStatus.getProgressUnitsTotal()), convertC4StatusError(c4ReplicatorStatus));
    }

    @Nullable
    private static CouchbaseLiteException convertC4StatusError(@NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        int errorCode = c4ReplicatorStatus.getErrorCode();
        if (errorCode == 0) {
            return null;
        }
        return CouchbaseLiteException.toCouchbaseLiteException(c4ReplicatorStatus.getErrorDomain(), errorCode, c4ReplicatorStatus.getErrorInternalInfo());
    }

    @NonNull
    private static ReplicatorActivityLevel getActivityLevelFromC4(int i) {
        ReplicatorActivityLevel replicatorActivityLevel = ACTIVITY_LEVEL_FROM_C4.get(Integer.valueOf(i));
        if (replicatorActivityLevel != null) {
            return replicatorActivityLevel;
        }
        com.couchbase.lite.internal.logging.Log.m9908w(LogDomain.REPLICATOR, "Unrecognized replicator activity level: " + i);
        return ReplicatorActivityLevel.BUSY;
    }

    @NonNull
    public ReplicatorActivityLevel getActivityLevel() {
        return this.activityLevel;
    }

    @Nullable
    public CouchbaseLiteException getError() {
        return this.error;
    }

    @NonNull
    public ReplicatorProgress getProgress() {
        return this.progress;
    }

    @NonNull
    public String toString() {
        return "Status{activityLevel=" + this.activityLevel + ", progress=" + this.progress + ", error=" + this.error + '}';
    }

    public ReplicatorStatus(@NonNull ReplicatorStatus replicatorStatus) {
        this(replicatorStatus.activityLevel, replicatorStatus.progress, replicatorStatus.error);
    }

    public ReplicatorStatus(@NonNull ReplicatorActivityLevel replicatorActivityLevel, @NonNull ReplicatorProgress replicatorProgress, @Nullable CouchbaseLiteException couchbaseLiteException) {
        this.activityLevel = replicatorActivityLevel;
        this.progress = replicatorProgress;
        this.error = couchbaseLiteException;
    }
}
