package com.couchbase.lite.internal.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;

/* loaded from: classes4.dex */
public final class PlatformUtils {
    private static final Delegate DELEGATE = new PlatformUtilsDelegate();

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface Base64Decoder {
        @Nullable
        byte[] decodeString(@Nullable String str);
    }

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface Base64Encoder {
        @Nullable
        String encodeToString(@Nullable byte[] bArr);
    }

    /* loaded from: classes4.dex */
    public interface Delegate {
        @Nullable
        InputStream getAsset(@Nullable String str);

        @NonNull
        Base64Decoder getDecoder();

        @NonNull
        Base64Encoder getEncoder();
    }

    private PlatformUtils() {
    }

    @Nullable
    public static InputStream getAsset(@Nullable String str) {
        return DELEGATE.getAsset(str);
    }

    @NonNull
    public static Base64Decoder getDecoder() {
        return DELEGATE.getDecoder();
    }

    @NonNull
    public static Base64Encoder getEncoder() {
        return DELEGATE.getEncoder();
    }
}
