package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public final class MRoot extends MCollection {

    @NonNull
    private final MValue content;

    public MRoot(@Nullable MContext mContext, @Nullable FLValue fLValue, boolean z) {
        super(mContext, z);
        this.content = new MValue(fLValue);
    }

    @Nullable
    public Object asNative() {
        return this.content.asNative(this);
    }

    @Override // com.couchbase.lite.internal.fleece.Encodable
    public void encodeTo(@NonNull FLEncoder fLEncoder) {
        this.content.encodeTo(fLEncoder);
    }

    @Override // com.couchbase.lite.internal.fleece.MCollection
    public boolean isMutated() {
        return this.content.isMutated();
    }
}
