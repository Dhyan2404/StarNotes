package com.couchbase.lite.internal.fleece.impl;

import com.couchbase.lite.internal.fleece.FLArray;

/* loaded from: classes4.dex */
public final class NativeFLArray implements FLArray.NativeImpl {
    private static native long count(long j);

    private static native void free(long j);

    private static native long get(long j, long j2);

    private static native long getValue(long j);

    private static native long getValueAt(long j, int i);

    private static native long init(long j);

    private static native boolean next(long j);

    @Override // com.couchbase.lite.internal.fleece.FLArray.NativeImpl
    public long nCount(long j) {
        return count(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLArray.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLArray.NativeImpl
    public long nGet(long j, long j2) {
        return get(j, j2);
    }

    @Override // com.couchbase.lite.internal.fleece.FLArray.NativeImpl
    public long nGetValue(long j) {
        return getValue(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLArray.NativeImpl
    public long nGetValueAt(long j, int i) {
        return getValueAt(j, i);
    }

    @Override // com.couchbase.lite.internal.fleece.FLArray.NativeImpl
    public long nInit(long j) {
        return init(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLArray.NativeImpl
    public boolean nNext(long j) {
        return next(j);
    }
}
