package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.fleece.impl.NativeFLValue;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class FLValue {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeFLValue();
    private final NativeImpl impl;
    private final long peer;

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        long nAsArray(long j);

        boolean nAsBool(long j);

        @NonNull
        byte[] nAsData(long j);

        long nAsDict(long j);

        double nAsDouble(long j);

        float nAsFloat(long j);

        long nAsInt(long j);

        @NonNull
        String nAsString(long j);

        long nAsUnsigned(long j);

        long nFromData(long j, long j2);

        long nFromTrustedData(byte[] bArr);

        int nGetType(long j);

        boolean nIsDouble(long j);

        boolean nIsInteger(long j);

        boolean nIsUnsigned(long j);

        @Nullable
        String nJson5toJson(@Nullable String str) throws LiteCoreException;

        @Nullable
        String nToJSON(long j);

        @Nullable
        String nToJSON5(long j);

        @Nullable
        String nToString(long j);
    }

    @VisibleForTesting
    public FLValue(@NonNull NativeImpl nativeImpl, long j) {
        this.impl = (NativeImpl) Preconditions.assertNotNull(nativeImpl, "impl");
        this.peer = Preconditions.assertNotZero(j, "peer");
    }

    @Nullable
    public static FLValue fromData(@Nullable FLSliceResult fLSliceResult) {
        return fromData(NATIVE_IMPL, fLSliceResult);
    }

    @NonNull
    public static FLValue getFLValue(long j) {
        return new FLValue(NATIVE_IMPL, j);
    }

    @Nullable
    public static String getJSONForJSON5(@Nullable String str) throws LiteCoreException {
        return getJSONForJSON5(NATIVE_IMPL, str);
    }

    @Nullable
    public static Object toObject(@NonNull FLValue fLValue) {
        return fLValue.asObject();
    }

    @NonNull
    public List<Object> asArray() {
        return asFLArray().asArray();
    }

    public boolean asBool() {
        return this.impl.nAsBool(this.peer);
    }

    @NonNull
    public byte[] asData() {
        return this.impl.nAsData(this.peer);
    }

    @NonNull
    public Map<String, Object> asDict() {
        return asFLDict().asDict();
    }

    public double asDouble() {
        return this.impl.nAsDouble(this.peer);
    }

    @NonNull
    public FLArray asFLArray() {
        return FLArray.create(this.impl.nAsArray(this.peer));
    }

    @NonNull
    public FLDict asFLDict() {
        return FLDict.create(this.impl.nAsDict(this.peer));
    }

    public float asFloat() {
        return this.impl.nAsFloat(this.peer);
    }

    public long asInt() {
        return this.impl.nAsInt(this.peer);
    }

    @Nullable
    public Object asObject() {
        switch (this.impl.nGetType(this.peer)) {
            case 1:
                return Boolean.valueOf(asBool());
            case 2:
                if (isInteger()) {
                    return Long.valueOf(isUnsigned() ? asUnsigned() : asInt());
                }
                return isDouble() ? Double.valueOf(asDouble()) : Float.valueOf(asFloat());
            case 3:
                return asString();
            case 4:
                return asData();
            case 5:
                return asArray();
            case 6:
                return asDict();
            default:
                return null;
        }
    }

    @NonNull
    public String asString() {
        return this.impl.nAsString(this.peer);
    }

    @NonNull
    public <T> List<T> asTypedArray() {
        return asFLArray().asTypedArray();
    }

    public long asUnsigned() {
        return this.impl.nAsUnsigned(this.peer);
    }

    public int getType() {
        return this.impl.nGetType(this.peer);
    }

    public boolean isDouble() {
        return this.impl.nIsDouble(this.peer);
    }

    public boolean isInteger() {
        return this.impl.nIsInteger(this.peer);
    }

    public boolean isNumber() {
        return getType() == 2;
    }

    public boolean isUnsigned() {
        return this.impl.nIsUnsigned(this.peer);
    }

    @Nullable
    public String toJSON() {
        return this.impl.nToJSON(this.peer);
    }

    @Nullable
    public String toJSON5() {
        return this.impl.nToJSON5(this.peer);
    }

    @Nullable
    public String toStr() {
        return this.impl.nToString(this.peer);
    }

    @Nullable
    public <T> T withContent(@NonNull InterfaceC2217Fn.NonNullFunction<Long, T> nonNullFunction) {
        return nonNullFunction.apply(Long.valueOf(this.peer));
    }

    @Nullable
    @VisibleForTesting
    public static FLValue fromData(@NonNull NativeImpl nativeImpl, @Nullable FLSliceResult fLSliceResult) {
        if (fLSliceResult == null) {
            return null;
        }
        long nFromData = nativeImpl.nFromData(fLSliceResult.getBase(), fLSliceResult.getSize());
        if (nFromData == 0) {
            return null;
        }
        return getFLValue(nFromData);
    }

    @Nullable
    @VisibleForTesting
    public static String getJSONForJSON5(@NonNull NativeImpl nativeImpl, @Nullable String str) throws LiteCoreException {
        return nativeImpl.nJson5toJson(str);
    }

    @NonNull
    public static FLValue fromData(@NonNull byte[] bArr) {
        return fromData(NATIVE_IMPL, bArr);
    }

    @NonNull
    @VisibleForTesting
    public static FLValue fromData(@NonNull NativeImpl nativeImpl, @NonNull byte[] bArr) {
        return getFLValue(nativeImpl.nFromTrustedData(bArr));
    }
}
