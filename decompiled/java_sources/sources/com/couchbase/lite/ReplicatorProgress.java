package com.couchbase.lite;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class ReplicatorProgress {
    private final long completed;
    private final long total;

    public ReplicatorProgress(long j, long j2) {
        this.completed = j;
        this.total = j2;
    }

    public long getCompleted() {
        return this.completed;
    }

    public long getTotal() {
        return this.total;
    }

    @NonNull
    public String toString() {
        return "Progress{completed=" + this.completed + ", total=" + this.total + '}';
    }
}
