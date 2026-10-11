package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4Database;
import java.util.Set;

/* loaded from: classes4.dex */
public final class NativeC4Database implements C4Database.NativeImpl {
    private static native void beginTransaction(long j) throws LiteCoreException;

    private static native void close(long j) throws LiteCoreException;

    private static native void copy(String str, String str2, String str3, int i, int i2, byte[] bArr) throws LiteCoreException;

    private static native void delete(long j) throws LiteCoreException;

    private static native void deleteCollection(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException;

    private static native void deleteNamed(@NonNull String str, @NonNull String str2) throws LiteCoreException;

    private static native void endTransaction(long j, boolean z) throws LiteCoreException;

    public static native void free(long j);

    @NonNull
    private static native Set<String> getCollectionNames(long j, @NonNull String str) throws LiteCoreException;

    @Nullable
    private static native String getCookies(long j, @NonNull String str) throws LiteCoreException;

    private static native long getFLSharedKeys(long j);

    @Nullable
    private static native String getPath(long j);

    @NonNull
    private static native byte[] getPublicUUID(long j) throws LiteCoreException;

    @NonNull
    private static native Set<String> getScopeNames(long j) throws LiteCoreException;

    private static native long getSharedFleeceEncoder(long j);

    private static native boolean hasScope(long j, @NonNull String str);

    private static native boolean maintenance(long j, int i) throws LiteCoreException;

    public static native long open(@NonNull String str, @NonNull String str2, int i, int i2, byte[] bArr) throws LiteCoreException;

    private static native void rekey(long j, int i, byte[] bArr) throws LiteCoreException;

    private static native void setCookie(long j, String str, String str2, boolean z) throws LiteCoreException;

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nBeginTransaction(long j) throws LiteCoreException {
        beginTransaction(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nClose(long j) throws LiteCoreException {
        close(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nCopy(String str, String str2, String str3, int i, int i2, byte[] bArr) throws LiteCoreException {
        copy(str, str2, str3, i, i2, bArr);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nDelete(long j) throws LiteCoreException {
        delete(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nDeleteCollection(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException {
        deleteCollection(j, str, str2);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nDeleteNamed(@NonNull String str, @NonNull String str2) throws LiteCoreException {
        deleteNamed(str, str2);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nEndTransaction(long j, boolean z) throws LiteCoreException {
        endTransaction(j, z);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    @NonNull
    public Set<String> nGetCollectionNames(long j, @NonNull String str) throws LiteCoreException {
        return getCollectionNames(j, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    @Nullable
    public String nGetCookies(long j, @NonNull String str) throws LiteCoreException {
        return getCookies(j, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public long nGetFLSharedKeys(long j) {
        return getFLSharedKeys(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    @Nullable
    public String nGetPath(long j) {
        return getPath(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    @NonNull
    public byte[] nGetPublicUUID(long j) throws LiteCoreException {
        return getPublicUUID(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    @NonNull
    public Set<String> nGetScopeNames(long j) throws LiteCoreException {
        return getScopeNames(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public long nGetSharedFleeceEncoder(long j) {
        return getSharedFleeceEncoder(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public boolean nHasScope(long j, @NonNull String str) {
        return hasScope(j, str);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public boolean nMaintenance(long j, int i) throws LiteCoreException {
        return maintenance(j, i);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public long nOpen(@NonNull String str, @NonNull String str2, int i, int i2, byte[] bArr) throws LiteCoreException {
        return open(str, str2, i, i2, bArr);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nRekey(long j, int i, byte[] bArr) throws LiteCoreException {
        rekey(j, i, bArr);
    }

    @Override // com.couchbase.lite.internal.core.C4Database.NativeImpl
    public void nSetCookie(long j, String str, String str2, boolean z) throws LiteCoreException {
        setCookie(j, str, str2, z);
    }
}
