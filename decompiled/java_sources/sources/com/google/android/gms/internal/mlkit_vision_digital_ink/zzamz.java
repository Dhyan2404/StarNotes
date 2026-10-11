package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* loaded from: classes5.dex */
public abstract class zzamz {
    private static String zza = "com.google.android.gms.internal.mlkit_vision_digital_ink.zzane";
    private static String zzb = "com.google.common.flogger.backend.google.GooglePlatform";
    private static String zzc = "com.google.common.flogger.backend.system.DefaultPlatform";
    private static final String[] zzd = {"com.google.android.gms.internal.mlkit_vision_digital_ink.zzane", "com.google.common.flogger.backend.google.GooglePlatform", "com.google.common.flogger.backend.system.DefaultPlatform"};

    public static int zza() {
        return zzaoe.zza();
    }

    public static long zzb() {
        return zzamx.zza().zzc();
    }

    public static zzami zzd(String str) {
        return zzamx.zza().zze(str);
    }

    public static zzamk zzf() {
        return zzi().zza();
    }

    public static zzamy zzg() {
        return zzamx.zza().zzh();
    }

    public static zzann zzi() {
        return zzamx.zza().zzj();
    }

    public static zzaoa zzk() {
        return zzi().zzc();
    }

    public static String zzl() {
        return zzamx.zza().zzm();
    }

    public static boolean zzn(String str, Level level, boolean z) {
        zzi().zzd(str, level, z);
        return false;
    }

    public long zzc() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }

    public abstract zzami zze(String str);

    public abstract zzamy zzh();

    public zzann zzj() {
        return zzann.zze();
    }

    public abstract String zzm();
}
