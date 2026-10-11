package com.couchbase.lite.internal.core.impl;

import com.couchbase.lite.internal.core.C4QueryObserver;

/* loaded from: classes4.dex */
public final class NativeC4QueryObserver implements C4QueryObserver.NativeImpl {
    private static native long create(long j, long j2);

    private static native void enable(long j);

    private static native void free(long j);

    @Override // com.couchbase.lite.internal.core.C4QueryObserver.NativeImpl
    public long nCreate(long j, long j2) {
        return create(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4QueryObserver.NativeImpl
    public void nEnable(long j) {
        enable(j);
    }

    @Override // com.couchbase.lite.internal.core.C4QueryObserver.NativeImpl
    public void nFree(long j) {
        free(j);
    }
}
