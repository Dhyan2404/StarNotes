package com.couchbase.lite;

import androidx.annotation.Nullable;
import com.couchbase.lite.VectorEncoding;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
final class ProductVectorEncoding extends VectorEncoding {
    private final long bits;
    private final long subquantizers;

    public ProductVectorEncoding(long j, long j2) {
        Preconditions.assertUInt32(j, "subquantizers");
        if (j < 2) {
            throw new IllegalArgumentException("Subquantizers must be >= 2: " + j);
        }
        this.subquantizers = j;
        if (4 <= j2 && j2 <= 12) {
            this.bits = j2;
            return;
        }
        throw new IllegalArgumentException("Bits must be 4 <= bits <= 12: " + j2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductVectorEncoding)) {
            return false;
        }
        ProductVectorEncoding productVectorEncoding = (ProductVectorEncoding) obj;
        return productVectorEncoding.bits == this.bits && productVectorEncoding.subquantizers == this.subquantizers;
    }

    @Override // com.couchbase.lite.VectorEncoding
    public long getBits() {
        return this.bits;
    }

    @Override // com.couchbase.lite.VectorEncoding
    public long getSubQuantizers() {
        return this.subquantizers;
    }

    @Override // com.couchbase.lite.VectorEncoding
    public int getTypeCode() {
        return VectorEncoding.EncodingType.PQ.getCode();
    }

    public int hashCode() {
        return (int) ((this.bits * 37) + this.subquantizers);
    }
}
