package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4Query;

/* loaded from: classes4.dex */
public final class NativeC4Query implements C4Query.NativeImpl {
    private static native int columnCount(long j);

    @Nullable
    private static native String columnName(long j, int i);

    private static native long createQuery(long j, int i, @NonNull String str) throws LiteCoreException;

    @Nullable
    private static native String explain(long j);

    private static native void free(long j);

    private static native long run(long j, long j2, long j3) throws LiteCoreException;

    private static native void setParameters(long j, long j2, long j3);

    @Override // com.couchbase.lite.internal.core.C4Query.NativeImpl
    public int nColumnCount(long j) {
        return columnCount(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Query.NativeImpl
    @Nullable
    public String nColumnName(long j, int i) {
        return columnName(j, i);
    }

    @Override // com.couchbase.lite.internal.core.C4Query.NativeImpl
    public long nCreateQuery(long j, int i, @NonNull String str) throws LiteCoreException {
        return createQuery(j, i, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Query.NativeImpl
    @Nullable
    public String nExplain(long j) {
        return explain(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Query.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Query.NativeImpl
    public long nRun(long j, long j2, long j3) throws LiteCoreException {
        return run(j, j2, j3);
    }

    @Override // com.couchbase.lite.internal.core.C4Query.NativeImpl
    public void nSetParameters(long j, long j2, long j3) {
        setParameters(j, j2, j3);
    }
}
