package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4KeyPair;

/* loaded from: classes4.dex */
public class NativeC4KeyPair implements C4KeyPair.NativeImpl {
    private static native void free(long j);

    private static native long fromExternal(byte b, int i, long j);

    @NonNull
    private static native byte[] generateSelfSignedCertificate(long j, byte b, int i, @Nullable String[][] strArr, byte b2, long j2) throws LiteCoreException;

    @Override // com.couchbase.lite.internal.core.C4KeyPair.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4KeyPair.NativeImpl
    public long nFromExternal(byte b, int i, long j) {
        return fromExternal(b, i, j);
    }

    @Override // com.couchbase.lite.internal.core.C4KeyPair.NativeImpl
    @NonNull
    public byte[] nGenerateSelfSignedCertificate(long j, byte b, int i, @Nullable String[][] strArr, byte b2, long j2) throws LiteCoreException {
        return generateSelfSignedCertificate(j, b, i, strArr, b2, j2);
    }
}
