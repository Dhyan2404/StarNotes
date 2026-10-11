package com.couchbase.lite;

import androidx.annotation.Nullable;
import com.couchbase.lite.VectorEncoding;

/* loaded from: classes4.dex */
final class NoneVectorEncoding extends VectorEncoding {
    public boolean equals(@Nullable Object obj) {
        return this == obj || (obj instanceof NoneVectorEncoding);
    }

    @Override // com.couchbase.lite.VectorEncoding
    public long getBits() {
        return 0L;
    }

    @Override // com.couchbase.lite.VectorEncoding
    public int getTypeCode() {
        return VectorEncoding.EncodingType.NONE.getCode();
    }

    public int hashCode() {
        return 1;
    }
}
