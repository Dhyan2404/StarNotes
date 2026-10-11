package com.couchbase.lite.internal.fleece;

import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public class FLSharedKeys {
    private final long handle;

    public FLSharedKeys(long j) {
        this.handle = Preconditions.assertNotZero(j, "handle");
    }

    public long getHandle() {
        return this.handle;
    }
}
