package com.google.android.libraries.vision.visionkit.pipeline;

import android.content.Context;
import androidx.annotation.NonNull;

/* loaded from: classes5.dex */
public final class AndroidAssetUtil {
    private static native boolean nativeInitializeAssetManager(Context context, String str);

    public static synchronized boolean zba(@NonNull Context context) {
        boolean nativeInitializeAssetManager;
        synchronized (AndroidAssetUtil.class) {
            nativeInitializeAssetManager = nativeInitializeAssetManager(context, context.getCacheDir().getAbsolutePath());
        }
        return nativeInitializeAssetManager;
    }
}
