package com.couchbase.lite.internal.core.impl;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4Collection;

/* loaded from: classes4.dex */
public final class NativeC4Collection implements C4Collection.NativeImpl {
    @GuardedBy("dbLock")
    private static native void createArrayIndex(long j, String str, String str2, String str3) throws LiteCoreException;

    private static native long createCollection(long j, @Nullable String str, @NonNull String str2) throws LiteCoreException;

    @GuardedBy("dbLock")
    private static native void createFullTextIndex(long j, @NonNull String str, int i, @NonNull String str2, @Nullable String str3, boolean z, @Nullable String str4) throws LiteCoreException;

    private static native void createPredictiveIndex(long j, String str, String str2) throws LiteCoreException;

    private static native void createValueIndex(long j, @NonNull String str, int i, @NonNull String str2, @Nullable String str3) throws LiteCoreException;

    private static native void createVectorIndex(long j, @NonNull String str, @NonNull String str2, long j2, int i, long j3, int i2, long j4, long j5, long j6, long j7, long j8, boolean z) throws LiteCoreException;

    private static native void deleteIndex(long j, @NonNull String str) throws LiteCoreException;

    private static native void free(long j);

    private static native long getCollection(long j, @Nullable String str, @NonNull String str2) throws LiteCoreException;

    private static native long getDefaultCollection(long j) throws LiteCoreException;

    private static native long getDocExpiration(long j, @NonNull String str) throws LiteCoreException;

    private static native long getDocumentCount(long j);

    private static native long getIndex(long j, @NonNull String str) throws LiteCoreException;

    private static native long getIndexesInfo(long j) throws LiteCoreException;

    private static native boolean isValid(long j);

    private static native void purgeDoc(long j, @NonNull String str) throws LiteCoreException;

    private static native void setDocExpiration(long j, @NonNull String str, long j2) throws LiteCoreException;

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public boolean nCollectionIsValid(long j) {
        return isValid(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public void nCreateArrayIndex(long j, @NonNull String str, @NonNull String str2, @NonNull String str3) throws LiteCoreException {
        createArrayIndex(j, str, str2, str3);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public long nCreateCollection(long j, @Nullable String str, @NonNull String str2) throws LiteCoreException {
        return createCollection(j, str, str2);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public void nCreateFullTextIndex(long j, @NonNull String str, int i, @NonNull String str2, @Nullable String str3, boolean z, @Nullable String str4) throws LiteCoreException {
        createFullTextIndex(j, str, i, str2, str3, z, str4);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public void nCreatePredictiveIndex(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException {
        createPredictiveIndex(j, str, str2);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public void nCreateValueIndex(long j, @NonNull String str, int i, @NonNull String str2, @Nullable String str3) throws LiteCoreException {
        createValueIndex(j, str, i, str2, str3);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public void nCreateVectorIndex(long j, @NonNull String str, @NonNull String str2, long j2, int i, long j3, int i2, long j4, long j5, long j6, long j7, long j8, boolean z) throws LiteCoreException {
        createVectorIndex(j, str, str2, j2, i, j3, i2, j4, j5, j6, j7, j8, z);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public void nDeleteIndex(long j, @NonNull String str) throws LiteCoreException {
        deleteIndex(j, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    @GuardedBy("dbLock")
    public long nGetCollection(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException {
        return getCollection(j, str, str2);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public long nGetDefaultCollection(long j) throws LiteCoreException {
        return getDefaultCollection(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public long nGetDocExpiration(long j, @NonNull String str) throws LiteCoreException {
        return getDocExpiration(j, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public long nGetDocumentCount(long j) {
        return getDocumentCount(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public long nGetIndex(long j, @NonNull String str) throws LiteCoreException {
        return getIndex(j, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public long nGetIndexesInfo(long j) throws LiteCoreException {
        return getIndexesInfo(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public void nPurgeDoc(long j, @NonNull String str) throws LiteCoreException {
        purgeDoc(j, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Collection.NativeImpl
    public void nSetDocExpiration(long j, @NonNull String str, long j2) throws LiteCoreException {
        setDocExpiration(j, str, j2);
    }
}
