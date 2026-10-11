package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4CollectionObserver;
import com.couchbase.lite.internal.core.C4DocumentChange;

/* loaded from: classes4.dex */
public final class NativeC4CollectionObserver implements C4CollectionObserver.NativeImpl {
    private static native long create(long j, long j2) throws LiteCoreException;

    private static native void free(long j);

    @NonNull
    private static native C4DocumentChange[] getChanges(long j, int i);

    @Override // com.couchbase.lite.internal.core.C4CollectionObserver.NativeImpl
    public long nCreate(long j, long j2) throws LiteCoreException {
        return create(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4CollectionObserver.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4CollectionObserver.NativeImpl
    @NonNull
    public C4DocumentChange[] nGetChanges(long j, int i) {
        return getChanges(j, i);
    }
}
