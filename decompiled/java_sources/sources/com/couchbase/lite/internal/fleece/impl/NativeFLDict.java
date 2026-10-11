package com.couchbase.lite.internal.fleece.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.FLDict;

/* loaded from: classes4.dex */
public final class NativeFLDict implements FLDict.NativeImpl {
    private static native long count(long j);

    private static native void free(long j);

    private static native long get(long j, @NonNull byte[] bArr);

    private static native long getCount(long j);

    @Nullable
    private static native String getKey(long j);

    private static native long getValue(long j);

    private static native long init(long j);

    private static native boolean next(long j);

    @Override // com.couchbase.lite.internal.fleece.FLDict.NativeImpl
    public long nCount(long j) {
        return count(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLDict.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLDict.NativeImpl
    public long nGet(long j, @NonNull byte[] bArr) {
        return get(j, bArr);
    }

    @Override // com.couchbase.lite.internal.fleece.FLDict.NativeImpl
    public long nGetCount(long j) {
        return getCount(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLDict.NativeImpl
    @Nullable
    public String nGetKey(long j) {
        return getKey(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLDict.NativeImpl
    public long nGetValue(long j) {
        return getValue(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLDict.NativeImpl
    public long nInit(long j) {
        return init(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLDict.NativeImpl
    public boolean nNext(long j) {
        return next(j);
    }
}
