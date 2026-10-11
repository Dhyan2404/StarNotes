package com.couchbase.lite.internal;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C2183C4;
import com.couchbase.lite.internal.logging.Log;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes4.dex */
public final class CBLVariantExtensions {
    private static final String VS_EXTENSION_LIB = "libCouchbaseLiteVectorSearch.so";
    private static final String VS_EXTENSION_NAME = "CouchbaseLiteVectorSearch";

    /* loaded from: classes4.dex */
    public static class VSVersion {
        public final String libVersion;
        public final String vsVersion;

        public VSVersion(@Nullable String str, @Nullable String str2) {
            this.libVersion = str;
            this.vsVersion = str2;
        }

        @NonNull
        public String toString() {
            return "VSVersion{" + this.libVersion + '/' + this.vsVersion + '}';
        }
    }

    private CBLVariantExtensions() {
    }

    private static void enableExtension(@NonNull String str, @NonNull String str2) throws CouchbaseLiteException {
        Log.m9899d(LogDomain.DATABASE, "Enabling extension %s at %s", str, str2);
        try {
            synchronized (CouchbaseLiteInternal.LOCK) {
                C2183C4.enableExtension(str, str2);
            }
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Failed to enable extension " + str + " at " + str2);
        }
    }

    public static void enableVectorSearch() throws CouchbaseLiteException {
        String arch = getArch();
        if (arch == null) {
            throw new CouchbaseLiteException("Vector search not supported for this architecture");
        }
        Context context = CouchbaseLiteInternal.getContext();
        String packageResourcePath = context.getPackageResourcePath();
        if (packageResourcePath != null) {
            String str = "lib/" + arch + "/" + VS_EXTENSION_LIB;
            try {
                AssetFileDescriptor openNonAssetFd = context.getAssets().openNonAssetFd(str);
                try {
                    Log.m9907i(LogDomain.DATABASE, "Found vector search library (asset): %s", str);
                    enableExtension(VS_EXTENSION_NAME, packageResourcePath + "!/lib/" + arch);
                    if (openNonAssetFd != null) {
                        openNonAssetFd.close();
                        return;
                    }
                    return;
                } finally {
                }
            } catch (IOException unused) {
            }
        }
        String str2 = context.getApplicationInfo().nativeLibraryDir;
        if (!new File(str2, VS_EXTENSION_LIB).exists()) {
            throw new CouchbaseLiteException("No vector search library found");
        }
        Log.m9907i(LogDomain.DATABASE, "Found vector search library (legacy): %s", str2);
        enableExtension(VS_EXTENSION_NAME, str2);
    }

    @Nullable
    private static String getArch() {
        List asList = Arrays.asList(Build.SUPPORTED_ABIS);
        if (asList.contains("arm64-v8a")) {
            return "arm64-v8a";
        }
        if (asList.contains("x86_64")) {
            return "x86_64";
        }
        return null;
    }

    @Nullable
    public static VSVersion getVSVersion() {
        try {
            Class<?> cls = Class.forName("com.couchbase.lite.vectorsearch.BuildConfig");
            return new VSVersion((String) cls.getField("VERSION").get(null), (String) cls.getField("VS_VERSION").get(null));
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
            return null;
        }
    }
}
