package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4BlobKey;
import com.couchbase.lite.internal.core.C4BlobStore;
import com.couchbase.lite.internal.fleece.FLSliceResult;

/* loaded from: classes4.dex */
public final class NativeC4Blob implements C4BlobKey.NativeImpl, C4BlobStore.NativeImpl {
    private static native void closeReadStream(long j);

    private static native void closeWriteStream(long j);

    private static native long computeBlobKey(long j) throws LiteCoreException;

    private static native long create(long j, byte[] bArr) throws LiteCoreException;

    private static native void delete(long j, long j2) throws LiteCoreException;

    private static native void free(long j);

    private static native long fromString(@Nullable String str) throws LiteCoreException;

    private static native long getBlobStore(long j) throws LiteCoreException;

    @NonNull
    private static native FLSliceResult getContents(long j, long j2) throws LiteCoreException;

    @Nullable
    private static native String getFilePath(long j, long j2) throws LiteCoreException;

    private static native long getLength(long j) throws LiteCoreException;

    private static native long getSize(long j, long j2);

    private static native void install(long j) throws LiteCoreException;

    private static native long openReadStream(long j, long j2) throws LiteCoreException;

    private static native long openWriteStream(long j) throws LiteCoreException;

    private static native int read(long j, byte[] bArr, int i, long j2) throws LiteCoreException;

    private static native void seek(long j, long j2) throws LiteCoreException;

    @Nullable
    private static native String toString(long j);

    private static native void write(long j, byte[] bArr, int i) throws LiteCoreException;

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public void nCloseReadStream(long j) {
        closeReadStream(j);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public void nCloseWriteStream(long j) {
        closeWriteStream(j);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public long nComputeBlobKey(long j) throws LiteCoreException {
        return computeBlobKey(j);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public long nCreate(long j, byte[] bArr) throws LiteCoreException {
        return create(j, bArr);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public void nDelete(long j, long j2) throws LiteCoreException {
        delete(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobKey.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobKey.NativeImpl
    public long nFromString(@Nullable String str) throws LiteCoreException {
        return fromString(str);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public long nGetBlobStore(long j) throws LiteCoreException {
        return getBlobStore(j);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    @NonNull
    public FLSliceResult nGetContents(long j, long j2) throws LiteCoreException {
        return getContents(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    @Nullable
    public String nGetFilePath(long j, long j2) throws LiteCoreException {
        return getFilePath(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public long nGetLength(long j) throws LiteCoreException {
        return getLength(j);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public long nGetSize(long j, long j2) {
        return getSize(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public void nInstall(long j) throws LiteCoreException {
        install(j);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public long nOpenReadStream(long j, long j2) throws LiteCoreException {
        return openReadStream(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public long nOpenWriteStream(long j) throws LiteCoreException {
        return openWriteStream(j);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public int nRead(long j, byte[] bArr, int i, long j2) throws LiteCoreException {
        return read(j, bArr, i, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public void nSeek(long j, long j2) throws LiteCoreException {
        seek(j, j2);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobKey.NativeImpl
    @Nullable
    public String nToString(long j) {
        return toString(j);
    }

    @Override // com.couchbase.lite.internal.core.C4BlobStore.NativeImpl
    public void nWrite(long j, byte[] bArr, int i) throws LiteCoreException {
        write(j, bArr, i);
    }
}
