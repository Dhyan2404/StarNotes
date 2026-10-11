package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C4Document;

/* loaded from: classes4.dex */
public final class NativeC4Document implements C4Document.NativeImpl {
    @Nullable
    private static native String bodyAsJSON(long j, boolean z) throws LiteCoreException;

    private static native long createFromSlice(long j, String str, long j2, long j3, int i) throws LiteCoreException;

    private static native boolean dictContainsBlobs(long j, long j2, long j3);

    private static native void free(long j);

    private static native int getFlags(long j);

    private static native long getFromCollection(long j, String str, boolean z, boolean z2) throws LiteCoreException;

    @Deprecated
    private static native long getGenerationForId(@NonNull String str);

    @NonNull
    private static native String getRevID(long j);

    @Nullable
    private static native String getRevisionHistory(long j, long j2, long j3, @Nullable String[] strArr) throws LiteCoreException;

    private static native long getSelectedBody2(long j);

    private static native int getSelectedFlags(long j);

    @NonNull
    private static native String getSelectedRevID(long j);

    private static native long getSelectedSequence(long j);

    private static native long getSequence(long j);

    private static native long getTimestamp(long j);

    private static native void resolveConflict(long j, String str, String str2, byte[] bArr, int i) throws LiteCoreException;

    private static native void save(long j, int i) throws LiteCoreException;

    private static native void selectNextLeafRevision(long j, boolean z, boolean z2) throws LiteCoreException;

    private static native long update2(long j, long j2, long j3, int i) throws LiteCoreException;

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    @Nullable
    public String nBodyAsJSON(long j, boolean z) throws LiteCoreException {
        return bodyAsJSON(j, z);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public long nCreateFromSlice(long j, String str, long j2, long j3, int i) throws LiteCoreException {
        return createFromSlice(j, str, j2, j3, i);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public boolean nDictContainsBlobs(long j, long j2, long j3) {
        return dictContainsBlobs(j, j2, j3);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public int nGetFlags(long j) {
        return getFlags(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public long nGetFromCollection(long j, String str, boolean z, boolean z2) throws LiteCoreException {
        return getFromCollection(j, str, z, z2);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    @NonNull
    public String nGetRevID(long j) {
        return getRevID(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    @Nullable
    public String nGetRevisionHistory(long j, long j2, long j3, @Nullable String[] strArr) throws LiteCoreException {
        return getRevisionHistory(j, j2, j3, strArr);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public long nGetSelectedBody2(long j) {
        return getSelectedBody2(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public int nGetSelectedFlags(long j) {
        return getSelectedFlags(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    @NonNull
    public String nGetSelectedRevID(long j) {
        return getSelectedRevID(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public long nGetSelectedSequence(long j) {
        return getSelectedSequence(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public long nGetSequence(long j) {
        return getSequence(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public long nGetTimestamp(long j) {
        return getTimestamp(j);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public void nResolveConflict(long j, String str, String str2, byte[] bArr, int i) throws LiteCoreException {
        resolveConflict(j, str, str2, bArr, i);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public void nSave(long j, int i) throws LiteCoreException {
        save(j, i);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public void nSelectNextLeafRevision(long j, boolean z, boolean z2) throws LiteCoreException {
        selectNextLeafRevision(j, z, z2);
    }

    @Override // com.couchbase.lite.internal.core.C4Document.NativeImpl
    public long nUpdate(long j, long j2, long j3, int i) throws LiteCoreException {
        return update2(j, j2, j3, i);
    }
}
