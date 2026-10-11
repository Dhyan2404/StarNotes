package com.couchbase.lite.internal.fleece.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.fleece.FLValue;

/* loaded from: classes4.dex */
public final class NativeFLValue implements FLValue.NativeImpl {
    private static native long asArray(long j);

    private static native boolean asBool(long j);

    @NonNull
    private static native byte[] asData(long j);

    private static native long asDict(long j);

    private static native double asDouble(long j);

    private static native float asFloat(long j);

    private static native long asInt(long j);

    @NonNull
    private static native String asString(long j);

    private static native long asUnsigned(long j);

    private static native long fromData(long j, long j2);

    private static native long fromTrustedData(byte[] bArr);

    private static native int getType(long j);

    private static native boolean isDouble(long j);

    private static native boolean isInteger(long j);

    private static native boolean isUnsigned(long j);

    @Nullable
    private static native String json5toJson(@Nullable String str) throws LiteCoreException;

    @Nullable
    private static native String toJSON(long j);

    @Nullable
    private static native String toJSON5(long j);

    @Nullable
    private static native String toString(long j);

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public long nAsArray(long j) {
        return asArray(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public boolean nAsBool(long j) {
        return asBool(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    @NonNull
    public byte[] nAsData(long j) {
        return asData(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public long nAsDict(long j) {
        return asDict(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public double nAsDouble(long j) {
        return asDouble(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public float nAsFloat(long j) {
        return asFloat(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public long nAsInt(long j) {
        return asInt(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    @NonNull
    public String nAsString(long j) {
        return asString(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public long nAsUnsigned(long j) {
        return asUnsigned(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public long nFromData(long j, long j2) {
        return fromData(j, j2);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public long nFromTrustedData(byte[] bArr) {
        return fromTrustedData(bArr);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public int nGetType(long j) {
        return getType(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public boolean nIsDouble(long j) {
        return isDouble(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public boolean nIsInteger(long j) {
        return isInteger(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    public boolean nIsUnsigned(long j) {
        return isUnsigned(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    @Nullable
    public String nJson5toJson(@Nullable String str) throws LiteCoreException {
        return json5toJson(str);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    @Nullable
    public String nToJSON(long j) {
        return toJSON(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    @Nullable
    public String nToJSON5(long j) {
        return toJSON5(j);
    }

    @Override // com.couchbase.lite.internal.fleece.FLValue.NativeImpl
    @Nullable
    public String nToString(long j) {
        return toString(j);
    }
}
