package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4Key;

/* loaded from: classes4.dex */
public final class NativeC4Key implements C4Key.NativeImpl {
    @Nullable
    private static native byte[] pbkdf2(@NonNull String str);

    @Override // com.couchbase.lite.internal.core.C4Key.NativeImpl
    @Nullable
    public byte[] nPbkdf2(@NonNull String str) {
        return pbkdf2(str);
    }
}
