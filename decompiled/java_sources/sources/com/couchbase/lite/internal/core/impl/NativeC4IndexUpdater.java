package com.couchbase.lite.internal.core.impl;

import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4IndexUpdater;

/* loaded from: classes4.dex */
public class NativeC4IndexUpdater implements C4IndexUpdater.NativeImpl {
    private static native void close(long j);

    private static native long count(long j);

    private static native void finish(long j) throws LiteCoreException;

    private static native void setVectorAt(long j, long j2, @Nullable float[] fArr) throws LiteCoreException;

    private static native boolean skipVectorAt(long j, long j2);

    private static native long valueAt(long j, long j2);

    @Override // com.couchbase.lite.internal.core.C4IndexUpdater.NativeImpl
    public void nClose(long j) {
        close(j);
    }

    @Override // com.couchbase.lite.internal.core.C4IndexUpdater.NativeImpl
    public void nFinish(long j) throws LiteCoreException {
        finish(j);
    }

    @Override // com.couchbase.lite.internal.core.C4IndexUpdater.NativeImpl
    public long nGetCount(long j) {
        return count(j);
    }

    @Override // com.couchbase.lite.internal.core.C4IndexUpdater.NativeImpl
    public long nGetValueAt(long j, long j2) {
        return valueAt(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4IndexUpdater.NativeImpl
    public void nSetVectorAt(long j, long j2, @Nullable float[] fArr) throws LiteCoreException {
        setVectorAt(j, j2, fArr);
    }

    @Override // com.couchbase.lite.internal.core.C4IndexUpdater.NativeImpl
    public boolean nSkipVectorAt(long j, long j2) {
        return skipVectorAt(j, j2);
    }
}
