package com.couchbase.lite.internal.core.impl;

import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4Index;

/* loaded from: classes4.dex */
public class NativeC4Index implements C4Index.NativeImpl {
    private static native long beginUpdate(long j, int i) throws LiteCoreException;

    private static native void releaseIndex(long j);

    @Override // com.couchbase.lite.internal.core.C4Index.NativeImpl
    public long nBeginUpdate(long j, int i) throws LiteCoreException {
        return beginUpdate(j, i);
    }

    @Override // com.couchbase.lite.internal.core.C4Index.NativeImpl
    public void nReleaseIndex(long j) {
        releaseIndex(j);
    }
}
