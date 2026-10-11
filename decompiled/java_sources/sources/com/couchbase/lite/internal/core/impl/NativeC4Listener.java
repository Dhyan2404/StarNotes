package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.ConnectionStatus;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4Listener;
import java.util.List;

/* loaded from: classes4.dex */
public class NativeC4Listener implements C4Listener.NativeImpl {
    private static native void free(long j);

    @NonNull
    private static native ConnectionStatus getConnectionStatus(long j);

    private static native int getPort(long j);

    @Nullable
    private static native String getUriFromPath(@NonNull String str);

    @NonNull
    private static native List<String> getUrls(long j, long j2) throws LiteCoreException;

    private static native void shareDbCollections(long j, String str, long j2, long[] jArr) throws LiteCoreException;

    private static native long startHttp(int i, @Nullable String str, int i2, long j, @Nullable String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) throws LiteCoreException;

    private static native long startTls(int i, String str, int i2, long j, long j2, byte[] bArr, boolean z, byte[] bArr2, String str2, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) throws LiteCoreException;

    @Override // com.couchbase.lite.internal.core.C4Listener.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Listener.NativeImpl
    @NonNull
    public ConnectionStatus nGetConnectionStatus(long j) {
        return getConnectionStatus(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Listener.NativeImpl
    public int nGetPort(long j) {
        return getPort(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Listener.NativeImpl
    @Nullable
    public String nGetUriFromPath(@NonNull String str) {
        return getUriFromPath(str);
    }

    @Override // com.couchbase.lite.internal.core.C4Listener.NativeImpl
    @NonNull
    public List<String> nGetUrls(long j, long j2) throws LiteCoreException {
        return getUrls(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4Listener.NativeImpl
    public void nShareDbCollections(long j, @NonNull String str, long j2, long[] jArr) throws LiteCoreException {
        shareDbCollections(j, str, j2, jArr);
    }

    @Override // com.couchbase.lite.internal.core.C4Listener.NativeImpl
    public long nStartHttp(long j, int i, @Nullable String str, int i2, @NonNull String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) throws LiteCoreException {
        return startHttp(i, str, i2, j, str2, z, z2, z3, z4, z5, z6);
    }

    @Override // com.couchbase.lite.internal.core.C4Listener.NativeImpl
    public long nStartTls(long j, int i, @Nullable String str, int i2, @NonNull String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, long j2, @NonNull byte[] bArr, boolean z6, @Nullable byte[] bArr2, boolean z7) throws LiteCoreException {
        return startTls(i, str, i2, j, j2, bArr, z6, bArr2, str2, z, z2, z3, z4, z5, z7);
    }
}
