package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.SystemClock;
import java.io.File;

/* loaded from: classes5.dex */
public final class zzyo {
    @TargetApi(24)
    public static File zza(Context context) {
        return zzb(context.createDeviceProtectedStorageContext()).getParentFile();
    }

    public static File zzb(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir == null) {
            SystemClock.sleep(100L);
            filesDir = context.getFilesDir();
            if (filesDir == null) {
                throw new IllegalStateException("getFilesDir returned null twice.");
            }
        }
        return filesDir;
    }
}
