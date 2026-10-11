package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.logging.Log;

/* loaded from: classes4.dex */
public final class C4ReplicatorStatus {
    private final int activityLevel;
    private final int errorCode;
    private final int errorDomain;
    private final int errorInternalInfo;
    private final long progressDocumentCount;
    private final long progressUnitsCompleted;
    private final long progressUnitsTotal;

    /* loaded from: classes4.dex */
    public static final class ActivityLevel {
        public static final int BUSY = 4;
        public static final int CONNECTING = 2;
        public static final int IDLE = 3;
        public static final int OFFLINE = 1;
        public static final int STOPPED = 0;

        private ActivityLevel() {
        }
    }

    public C4ReplicatorStatus(int i, int i2, int i3) {
        this(i, 0L, 0L, 0L, i2, i3, 0);
    }

    public int getActivityLevel() {
        return this.activityLevel;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public int getErrorDomain() {
        return this.errorDomain;
    }

    public int getErrorInternalInfo() {
        return this.errorInternalInfo;
    }

    public long getProgressDocumentCount() {
        return this.progressDocumentCount;
    }

    public long getProgressUnitsCompleted() {
        return this.progressUnitsCompleted;
    }

    public long getProgressUnitsTotal() {
        return this.progressUnitsTotal;
    }

    @NonNull
    public String toString() {
        return "C4ReplicatorStatus{level=" + this.activityLevel + ",completed=" + this.progressUnitsCompleted + ",total=" + this.progressUnitsTotal + ",#docs=" + this.progressDocumentCount + ",domain=" + this.errorDomain + ",code=" + this.errorCode + ",info=" + this.errorInternalInfo + '}';
    }

    public C4ReplicatorStatus(int i, long j, long j2, long j3, int i2, int i3, int i4) {
        this.activityLevel = i;
        this.progressUnitsCompleted = j;
        this.progressUnitsTotal = j2;
        this.progressDocumentCount = j3;
        this.errorDomain = i2;
        this.errorCode = i3;
        this.errorInternalInfo = i4;
        if (i < 0 || i > 4) {
            Log.m9909w(LogDomain.REPLICATOR, "Unrecognized activity level: " + i, new Exception());
        }
    }

    public C4ReplicatorStatus(@NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        this(c4ReplicatorStatus.activityLevel, c4ReplicatorStatus.progressUnitsCompleted, c4ReplicatorStatus.progressUnitsTotal, c4ReplicatorStatus.progressDocumentCount, c4ReplicatorStatus.errorDomain, c4ReplicatorStatus.errorCode, c4ReplicatorStatus.errorInternalInfo);
    }
}
