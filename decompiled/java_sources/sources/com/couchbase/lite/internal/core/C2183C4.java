package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.impl.NativeC4;

/* renamed from: com.couchbase.lite.internal.core.C4 */
/* loaded from: classes4.dex */
public final class C2183C4 {

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4();

    /* renamed from: com.couchbase.lite.internal.core.C4$NativeImpl */
    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nDebug(boolean z);

        void nEnableExtension(@NonNull String str, @NonNull String str2) throws LiteCoreException;

        @Nullable
        String nGetBuildInfo();

        @Nullable
        String nGetMessage(int i, int i2, int i3);

        @Nullable
        String nGetVersion();

        void nSetTempDir(@NonNull String str) throws LiteCoreException;

        void nSetenv(@NonNull String str, @NonNull String str2, int i);
    }

    private C2183C4() {
    }

    public static void debug(boolean z) {
        NATIVE_IMPL.nDebug(z);
    }

    public static void enableExtension(@NonNull String str, @NonNull String str2) throws LiteCoreException {
        NATIVE_IMPL.nEnableExtension(str, str2);
    }

    @Nullable
    public static String getBuildInfo() {
        return NATIVE_IMPL.nGetBuildInfo();
    }

    @Nullable
    public static String getMessage(int i, int i2, int i3) {
        return NATIVE_IMPL.nGetMessage(i, i2, i3);
    }

    @Nullable
    public static String getVersion() {
        return NATIVE_IMPL.nGetVersion();
    }

    public static void setEnv(@NonNull String str, @NonNull String str2, int i) {
        NATIVE_IMPL.nSetenv(str, str2, i);
    }

    public static void setTempDir(@NonNull String str) throws LiteCoreException {
        NATIVE_IMPL.nSetTempDir(str);
    }
}
