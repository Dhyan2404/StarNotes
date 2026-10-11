package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.internal.core.impl.NativeC4Key;

/* loaded from: classes4.dex */
public final class C4Key {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Key();

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        @Nullable
        byte[] nPbkdf2(@NonNull String str);
    }

    private C4Key() {
    }

    @NonNull
    public static byte[] getPbkdf2Key(@NonNull String str) throws CouchbaseLiteException {
        byte[] nPbkdf2 = NATIVE_IMPL.nPbkdf2(str);
        if (nPbkdf2 != null) {
            return nPbkdf2;
        }
        throw new CouchbaseLiteException("Could not generate key", CBLError.Domain.CBLITE, 22);
    }
}
