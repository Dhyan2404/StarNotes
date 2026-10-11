package com.couchbase.lite.internal.fleece.impl;

import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.FLSliceResult;

/* loaded from: classes4.dex */
public final class NativeFLSliceResult implements FLSliceResult.NativeImpl {
    @Nullable
    private static native byte[] getBuf(long j, long j2);

    private static native void release(long j, long j2);

    @Override // com.couchbase.lite.internal.fleece.FLSliceResult.NativeImpl
    @Nullable
    public byte[] nGetBuf(long j, long j2) {
        return getBuf(j, j2);
    }

    @Override // com.couchbase.lite.internal.fleece.FLSliceResult.NativeImpl
    public void nRelease(long j, long j2) {
        release(j, j2);
    }
}
