package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.VectorEncoding;

/* loaded from: classes4.dex */
final class ScalarVectorEncoding extends VectorEncoding {

    @NonNull
    private final VectorEncoding.ScalarQuantizerType type;

    public ScalarVectorEncoding(@NonNull VectorEncoding.ScalarQuantizerType scalarQuantizerType) {
        this.type = scalarQuantizerType;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ScalarVectorEncoding) && ((ScalarVectorEncoding) obj).getBits() == getBits();
    }

    @Override // com.couchbase.lite.VectorEncoding
    public long getBits() {
        return this.type.getBits();
    }

    @Override // com.couchbase.lite.VectorEncoding
    public int getTypeCode() {
        return VectorEncoding.EncodingType.SQ.getCode();
    }

    public int hashCode() {
        return (int) getBits();
    }
}
