package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Locale;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzagf {
    private static final Logger zza = Logger.getLogger(zzagf.class.getName());
    private static final zzage zzb = new zzage(null);

    private zzagf() {
    }

    public static long zza() {
        return System.nanoTime();
    }

    public static zzafq zzb(zzafq zzafqVar) {
        return zzafqVar.zzm();
    }

    @CheckForNull
    public static String zzc(@CheckForNull String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return str;
    }

    public static String zzd(double d) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d));
    }

    public static String zze(@CheckForNull String str) {
        return str == null ? "" : str;
    }
}
