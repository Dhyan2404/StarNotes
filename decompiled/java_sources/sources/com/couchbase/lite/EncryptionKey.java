package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.core.C4Key;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public final class EncryptionKey {

    @NonNull
    private final byte[] key;

    public EncryptionKey(@NonNull byte[] bArr) {
        Preconditions.assertNotNull(bArr, "key");
        if (bArr.length == 32) {
            byte[] bArr2 = new byte[32];
            this.key = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, 32);
            return;
        }
        throw new IllegalArgumentException("Key size is invalid. Key must be a 256-bit (32-byte) key.");
    }

    @NonNull
    public byte[] getKey() {
        byte[] bArr = this.key;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public EncryptionKey(@NonNull String str) {
        Preconditions.assertNotNull(str, "password");
        try {
            this.key = C4Key.getPbkdf2Key(str);
        } catch (CouchbaseLiteException e) {
            throw new IllegalArgumentException(e.getMessage(), e);
        }
    }
}
