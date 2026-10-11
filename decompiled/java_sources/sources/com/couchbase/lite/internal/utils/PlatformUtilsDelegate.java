package com.couchbase.lite.internal.utils;

import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.utils.PlatformUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

/* loaded from: classes4.dex */
public final class PlatformUtilsDelegate implements PlatformUtils.Delegate {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] lambda$getDecoder$1(String str) {
        try {
            return Base64.decode(str, 0);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Override // com.couchbase.lite.internal.utils.PlatformUtils.Delegate
    @Nullable
    public InputStream getAsset(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            return CouchbaseLiteInternal.getContext().getAssets().open(str);
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // com.couchbase.lite.internal.utils.PlatformUtils.Delegate
    @NonNull
    public PlatformUtils.Base64Decoder getDecoder() {
        return new PlatformUtils.Base64Decoder() { // from class: com.couchbase.lite.internal.utils.PlatformUtilsDelegate.2
            private final Base64.Decoder decoder = java.util.Base64.getDecoder();

            @Override // com.couchbase.lite.internal.utils.PlatformUtils.Base64Decoder
            @Nullable
            public byte[] decodeString(@Nullable String str) {
                if (str != null) {
                    try {
                    } catch (IllegalArgumentException unused) {
                        return null;
                    }
                }
                return this.decoder.decode(str);
            }
        };
    }

    @Override // com.couchbase.lite.internal.utils.PlatformUtils.Delegate
    @NonNull
    public PlatformUtils.Base64Encoder getEncoder() {
        return new PlatformUtils.Base64Encoder() { // from class: com.couchbase.lite.internal.utils.PlatformUtilsDelegate.1
            private final Base64.Encoder encoder = java.util.Base64.getEncoder();

            @Override // com.couchbase.lite.internal.utils.PlatformUtils.Base64Encoder
            @Nullable
            public String encodeToString(@Nullable byte[] bArr) {
                if (bArr == null) {
                    return null;
                }
                return this.encoder.encodeToString(bArr);
            }
        };
    }
}
