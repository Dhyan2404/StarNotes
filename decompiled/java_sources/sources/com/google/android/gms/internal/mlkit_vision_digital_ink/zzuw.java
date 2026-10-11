package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.annotation.SuppressLint;
import android.util.Log;
import java.util.Locale;
import java.util.Random;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzuw {
    private static final Random zza = new Random();

    public static int zza(String str, Object obj) {
        if (!Log.isLoggable("MDD", 3)) {
            return 0;
        }
        return Log.d("MDD", String.format(Locale.US, str, obj));
    }

    public static int zzb(String str, Object... objArr) {
        if (Log.isLoggable("MDD", 3)) {
            return Log.d("MDD", String.format(Locale.US, str, objArr));
        }
        return 0;
    }

    public static int zzc(String str, Object obj, Object obj2) {
        if (!Log.isLoggable("MDD", 3)) {
            return 0;
        }
        return Log.d("MDD", String.format(Locale.US, str, obj, obj2));
    }

    public static int zzd(@Nullable Throwable th, String str, Object... objArr) {
        if (Log.isLoggable("MDD", 3)) {
            return Log.d("MDD", String.format(Locale.US, str, objArr), th);
        }
        return 0;
    }

    public static int zze(String str) {
        if (Log.isLoggable("MDD", 6)) {
            return Log.e("MDD", str);
        }
        return 0;
    }

    public static int zzf(String str, Object obj) {
        if (!Log.isLoggable("MDD", 6)) {
            return 0;
        }
        return Log.e("MDD", String.format(Locale.US, str, obj));
    }

    public static int zzg(String str, Object... objArr) {
        if (Log.isLoggable("MDD", 6)) {
            return Log.e("MDD", String.format(Locale.US, str, objArr));
        }
        return 0;
    }

    @SuppressLint({"LogTagMismatch"})
    public static int zzh(@Nullable Throwable th, String str) {
        if (!Log.isLoggable("MDD", 6)) {
            return 0;
        }
        if (Log.isLoggable("MDD", 3)) {
            return Log.e("MDD", str, th);
        }
        return Log.e("MDD", str + ": " + String.valueOf(th));
    }

    public static int zzi(String str, Object obj, Object obj2) {
        if (!Log.isLoggable("MDD", 6)) {
            return 0;
        }
        return Log.e("MDD", String.format(Locale.US, str, obj, obj2));
    }

    public static int zzj(@Nullable Throwable th, String str, Object... objArr) {
        if (Log.isLoggable("MDD", 6)) {
            return zzh(th, String.format(Locale.US, str, objArr));
        }
        return 0;
    }

    public static int zzk(String str, Object obj) {
        if (!Log.isLoggable("MDD", 2)) {
            return 0;
        }
        return Log.v("MDD", String.format(Locale.US, "%s: Failed to release the leases in the android shared storage. UnsupportedFileStorageOperation was thrown", "SharedFileManager"));
    }

    public static int zzl(String str, Object... objArr) {
        if (Log.isLoggable("MDD", 2)) {
            return Log.v("MDD", String.format(Locale.US, str, objArr));
        }
        return 0;
    }

    public static int zzm(String str, Object obj, Object obj2) {
        if (!Log.isLoggable("MDD", 2)) {
            return 0;
        }
        return Log.v("MDD", String.format(Locale.US, str, "DownloadFutureMap", obj2));
    }

    public static int zzn(String str, Object obj) {
        if (!Log.isLoggable("MDD", 5)) {
            return 0;
        }
        return Log.w("MDD", String.format(Locale.US, str, obj));
    }

    public static int zzo(String str, Object... objArr) {
        if (Log.isLoggable("MDD", 5)) {
            return Log.w("MDD", String.format(Locale.US, "%s: Detected corruption of isolated structure for group %s %s", objArr));
        }
        return 0;
    }

    public static int zzp(String str, Object obj, Object obj2) {
        if (!Log.isLoggable("MDD", 5)) {
            return 0;
        }
        return Log.w("MDD", String.format(Locale.US, "%s %s", "MDDManager", obj2));
    }

    @SuppressLint({"LogTagMismatch"})
    public static int zzq(@Nullable Throwable th, String str, Object... objArr) {
        if (!Log.isLoggable("MDD", 5)) {
            return 0;
        }
        if (Log.isLoggable("MDD", 3)) {
            return Log.w("MDD", String.format(Locale.US, "%s: Unable to correct isolated structure, returning null instead of group %s", objArr), th);
        }
        return Log.w("MDD", String.format(Locale.US, "%s: Unable to correct isolated structure, returning null instead of group %s", objArr) + ": " + String.valueOf(th));
    }

    public static boolean zzr(long j) {
        return zza.nextLong() % 10000 == 0;
    }
}
