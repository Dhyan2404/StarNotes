package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.logging.Log;

/* loaded from: classes4.dex */
public final class C4DocumentChange {

    @NonNull
    private final String docID;
    private final boolean external;

    @Nullable
    private final String revID;
    private final long sequence;

    private C4DocumentChange(@NonNull String str, @Nullable String str2, long j, boolean z) {
        this.docID = str;
        this.revID = str2;
        this.sequence = j;
        this.external = z;
    }

    @Nullable
    public static C4DocumentChange createC4DocumentChange(@Nullable String str, @Nullable String str2, long j, boolean z) {
        if (str != null) {
            return new C4DocumentChange(str, str2, j, z);
        }
        Log.m9904i(LogDomain.DATABASE, "Doc id is null in createC4DocumentChange");
        return null;
    }

    @NonNull
    public String getDocID() {
        return this.docID;
    }

    @Nullable
    public String getRevID() {
        return this.revID;
    }

    public long getSequence() {
        return this.sequence;
    }

    public boolean isExternal() {
        return this.external;
    }

    @NonNull
    public String toString() {
        return "C4DocumentChange{" + this.docID + ", " + this.revID + ", " + this.sequence + ", " + this.external + "}";
    }
}
