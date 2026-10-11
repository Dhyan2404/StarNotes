package com.couchbase.lite.internal.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.internal.core.C2183C4;

/* loaded from: classes4.dex */
public final class NativeC4 implements C2183C4.NativeImpl {
    private static native void debug(boolean z);

    private static native void enableExtension(@NonNull String str, @NonNull String str2) throws LiteCoreException;

    @Nullable
    public static native String getBuildInfo();

    @Nullable
    private static native String getMessage(int i, int i2, int i3);

    @Nullable
    public static native String getVersion();

    private static native void setTempDir(@NonNull String str) throws LiteCoreException;

    public static native void setenv(@NonNull String str, @NonNull String str2, int i);

    @Override // com.couchbase.lite.internal.core.C2183C4.NativeImpl
    public void nDebug(boolean z) {
        debug(z);
    }

    @Override // com.couchbase.lite.internal.core.C2183C4.NativeImpl
    public void nEnableExtension(@NonNull String str, @NonNull String str2) throws LiteCoreException {
        enableExtension(str, str2);
    }

    @Override // com.couchbase.lite.internal.core.C2183C4.NativeImpl
    @Nullable
    public String nGetBuildInfo() {
        return getBuildInfo();
    }

    @Override // com.couchbase.lite.internal.core.C2183C4.NativeImpl
    @Nullable
    public String nGetMessage(int i, int i2, int i3) {
        return getMessage(i, i2, i3);
    }

    @Override // com.couchbase.lite.internal.core.C2183C4.NativeImpl
    @Nullable
    public String nGetVersion() {
        return getVersion();
    }

    @Override // com.couchbase.lite.internal.core.C2183C4.NativeImpl
    public void nSetTempDir(@NonNull String str) throws LiteCoreException {
        setTempDir(str);
    }

    @Override // com.couchbase.lite.internal.core.C2183C4.NativeImpl
    public void nSetenv(@NonNull String str, @NonNull String str2, int i) {
        setenv(str, str2, i);
    }
}
