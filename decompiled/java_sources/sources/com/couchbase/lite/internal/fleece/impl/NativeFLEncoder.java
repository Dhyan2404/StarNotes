package com.couchbase.lite.internal.fleece.impl;

import androidx.annotation.NonNull;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLSliceResult;

/* loaded from: classes4.dex */
public final class NativeFLEncoder implements FLEncoder.NativeImpl {
    private static native boolean beginArray(long j, long j2);

    private static native boolean beginDict(long j, long j2);

    private static native boolean endArray(long j);

    private static native boolean endDict(long j);

    @NonNull
    private static native byte[] finish(long j) throws LiteCoreException;

    @NonNull
    private static native FLSliceResult finish2(long j) throws LiteCoreException;

    @NonNull
    private static native FLSliceResult finish3(long j) throws LiteCoreException;

    @NonNull
    private static native String finishJSON(long j) throws LiteCoreException;

    private static native void free(long j);

    private static native long newFleeceEncoder();

    private static native long newJSONEncoder();

    private static native void reset(long j);

    private static native boolean writeBool(long j, boolean z);

    private static native boolean writeData(long j, @NonNull byte[] bArr);

    private static native boolean writeDouble(long j, double d);

    private static native boolean writeFloat(long j, float f);

    private static native boolean writeInt(long j, long j2);

    private static native boolean writeKey(long j, @NonNull String str);

    private static native boolean writeNull(long j);

    private static native boolean writeString(long j, @NonNull String str);

    private static native boolean writeStringChars(long j, char[] cArr);

    private static native boolean writeValue(long j, long j2);

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nBeginArray(long j, long j2) {
        return beginArray(j, j2);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nBeginDict(long j, long j2) {
        return beginDict(j, j2);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public long nCreateFleeceEncoder() {
        return newFleeceEncoder();
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public long nCreateJSONEncoder() {
        return newJSONEncoder();
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nEndArray(long j) {
        return endArray(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nEndDict(long j) {
        return endDict(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    @NonNull
    public byte[] nFinish(long j) throws LiteCoreException {
        return finish(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    @NonNull
    public FLSliceResult nFinish2(long j) throws LiteCoreException {
        return finish2(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    @NonNull
    public FLSliceResult nFinish3(long j) throws LiteCoreException {
        return finish3(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    @NonNull
    public String nFinishJSON(long j) throws LiteCoreException {
        return finishJSON(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public void nFree(long j) {
        free(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public void nReset(long j) {
        reset(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteBool(long j, boolean z) {
        return writeBool(j, z);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteData(long j, @NonNull byte[] bArr) {
        return writeData(j, bArr);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteDouble(long j, double d) {
        return writeDouble(j, d);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteFloat(long j, float f) {
        return writeFloat(j, f);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteInt(long j, long j2) {
        return writeInt(j, j2);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteKey(long j, @NonNull String str) {
        return writeKey(j, str);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteNull(long j) {
        return writeNull(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteString(long j, @NonNull String str) {
        return writeString(j, str);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteStringChars(long j, @NonNull char[] cArr) {
        return writeStringChars(j, cArr);
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncoder.NativeImpl
    public boolean nWriteValue(long j, long j2) {
        return writeValue(j, j2);
    }
}
