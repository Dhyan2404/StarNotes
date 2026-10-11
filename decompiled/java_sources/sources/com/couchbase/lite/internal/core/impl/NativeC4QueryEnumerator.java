package com.couchbase.lite.internal.core.impl;

import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4QueryEnumerator;

/* loaded from: classes4.dex */
public final class NativeC4QueryEnumerator implements C4QueryEnumerator.NativeImpl {
    private static native void free(long j);

    private static native long getColumns(long j);

    private static native long getMissingColumns(long j);

    private static native boolean next(long j) throws LiteCoreException;

    @Override // com.couchbase.lite.internal.core.C4QueryEnumerator.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4QueryEnumerator.NativeImpl
    public long nGetColumns(long j) {
        return getColumns(j);
    }

    @Override // com.couchbase.lite.internal.core.C4QueryEnumerator.NativeImpl
    public long nGetMissingColumns(long j) {
        return getMissingColumns(j);
    }

    @Override // com.couchbase.lite.internal.core.C4QueryEnumerator.NativeImpl
    public boolean nNext(long j) throws LiteCoreException {
        return next(j);
    }
}
