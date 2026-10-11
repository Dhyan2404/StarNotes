package com.couchbase.lite.internal.core.impl;

import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4DocumentObserver;

/* loaded from: classes4.dex */
public final class NativeC4DocumentObserver implements C4DocumentObserver.NativeImpl {
    private static native long create(long j, long j2, String str) throws LiteCoreException;

    private static native void free(long j);

    @Override // com.couchbase.lite.internal.core.C4DocumentObserver.NativeImpl
    public long nCreate(long j, long j2, String str) throws LiteCoreException {
        return create(j, j2, str);
    }

    @Override // com.couchbase.lite.internal.core.C4DocumentObserver.NativeImpl
    public void nFree(long j) {
        free(j);
    }
}
