package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.core.C4Log;

/* loaded from: classes4.dex */
public final class NativeC4Log implements C4Log.NativeImpl {
    private static native void log(@NonNull String str, int i, @NonNull String str2);

    private static native void setBinaryFileLevel(int i);

    private static native void setCallbackLevel(int i);

    private static native void setLevel(@NonNull String str, int i);

    private static native void writeToBinaryFile(String str, int i, int i2, long j, boolean z, String str2);

    @Override // com.couchbase.lite.internal.core.C4Log.NativeImpl
    public void nLog(@NonNull String str, int i, @NonNull String str2) {
        log(str, i, str2);
    }

    @Override // com.couchbase.lite.internal.core.C4Log.NativeImpl
    public void nSetBinaryFileLevel(int i) {
        setBinaryFileLevel(i);
    }

    @Override // com.couchbase.lite.internal.core.C4Log.NativeImpl
    public void nSetCallbackLevel(int i) {
        setCallbackLevel(i);
    }

    @Override // com.couchbase.lite.internal.core.C4Log.NativeImpl
    public void nSetLevel(@NonNull String str, int i) {
        setLevel(str, i);
    }

    @Override // com.couchbase.lite.internal.core.C4Log.NativeImpl
    public void nWriteToBinaryFile(String str, int i, int i2, long j, boolean z, String str2) {
        writeToBinaryFile(str, i, i2, j, z, str2);
    }
}
