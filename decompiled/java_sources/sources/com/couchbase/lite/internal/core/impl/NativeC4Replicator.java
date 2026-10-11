package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.ReplicationCollection;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.C4ReplicatorStatus;
import com.couchbase.lite.internal.fleece.FLSliceResult;

/* loaded from: classes4.dex */
public final class NativeC4Replicator implements C4Replicator.NativeImpl {
    private static native long create(@NonNull String str, @NonNull ReplicationCollection[] replicationCollectionArr, long j, @Nullable String str2, @Nullable String str3, int i, @Nullable String str4, @Nullable String str5, int i2, boolean z, boolean z2, boolean z3, @Nullable byte[] bArr, long j2, long j3) throws LiteCoreException;

    private static native long createLocal(@NonNull String str, @NonNull ReplicationCollection[] replicationCollectionArr, long j, long j2, boolean z, boolean z2, boolean z3, @Nullable byte[] bArr, long j3) throws LiteCoreException;

    private static native long createWithSocket(@NonNull String str, @NonNull ReplicationCollection[] replicationCollectionArr, long j, long j2, @Nullable byte[] bArr, long j3) throws LiteCoreException;

    private static native void free(long j);

    @NonNull
    private static native FLSliceResult getPendingDocIds(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException;

    @NonNull
    private static native C4ReplicatorStatus getStatus(long j);

    private static native boolean isDocumentPending(long j, @NonNull String str, @NonNull String str2, @NonNull String str3) throws LiteCoreException;

    private static native void setHostReachable(long j, boolean z);

    private static native void setOptions(long j, @Nullable byte[] bArr);

    private static native void setProgressLevel(long j, int i) throws LiteCoreException;

    private static native void start(long j, boolean z);

    private static native void stop(long j);

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public long nCreate(@NonNull String str, @NonNull ReplicationCollection[] replicationCollectionArr, long j, @Nullable String str2, @Nullable String str3, int i, @Nullable String str4, @Nullable String str5, int i2, boolean z, boolean z2, boolean z3, @Nullable byte[] bArr, long j2, long j3) throws LiteCoreException {
        return create(str, replicationCollectionArr, j, str2, str3, i, str4, str5, i2, z, z2, z3, bArr, j2, j3);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public long nCreateLocal(@NonNull String str, @NonNull ReplicationCollection[] replicationCollectionArr, long j, long j2, boolean z, boolean z2, boolean z3, @Nullable byte[] bArr, long j3) throws LiteCoreException {
        return createLocal(str, replicationCollectionArr, j, j2, z, z2, z3, bArr, j3);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public long nCreateWithSocket(@NonNull String str, @NonNull ReplicationCollection[] replicationCollectionArr, long j, long j2, @Nullable byte[] bArr, long j3) throws LiteCoreException {
        return createWithSocket(str, replicationCollectionArr, j, j2, bArr, j3);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    @NonNull
    public FLSliceResult nGetPendingDocIds(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException {
        return getPendingDocIds(j, str, str2);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    @NonNull
    public C4ReplicatorStatus nGetStatus(long j) {
        return getStatus(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public boolean nIsDocumentPending(long j, @NonNull String str, @NonNull String str2, @NonNull String str3) throws LiteCoreException {
        return isDocumentPending(j, str, str2, str3);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public void nSetHostReachable(long j, boolean z) {
        setHostReachable(j, z);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public void nSetOptions(long j, @Nullable byte[] bArr) {
        setOptions(j, bArr);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public void nSetProgressLevel(long j, int i) throws LiteCoreException {
        setProgressLevel(j, i);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public void nStart(long j, boolean z) {
        start(j, z);
    }

    @Override // com.couchbase.lite.internal.core.C4Replicator.NativeImpl
    public void nStop(long j) {
        stop(j);
    }
}
