package com.couchbase.lite;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public abstract class VectorEncoding {

    /* loaded from: classes4.dex */
    public enum EncodingType {
        NONE(1),
        PQ(2),
        SQ(3);

        private final int code;

        EncodingType(int i) {
            this.code = i;
        }

        public int getCode() {
            return this.code;
        }
    }

    /* loaded from: classes4.dex */
    public enum ScalarQuantizerType {
        SQ4(4),
        SQ6(6),
        SQ8(8);

        private final long bits;

        ScalarQuantizerType(long j) {
            this.bits = j;
        }

        public long getBits() {
            return this.bits;
        }
    }

    @NonNull
    public static VectorEncoding none() {
        return new NoneVectorEncoding();
    }

    @NonNull
    public static VectorEncoding productQuantizer(long j, long j2) {
        return new ProductVectorEncoding(j, j2);
    }

    @NonNull
    public static VectorEncoding scalarQuantizer(@NonNull ScalarQuantizerType scalarQuantizerType) {
        return new ScalarVectorEncoding(scalarQuantizerType);
    }

    public abstract long getBits();

    public long getSubQuantizers() {
        return 0L;
    }

    public abstract int getTypeCode();
}
