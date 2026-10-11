package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbxw {
    public static final zzbxa zza;
    public static final zzbxa zzb;
    public static final zzbxa zzc;
    private static final ThreadLocal zzd;

    static {
        zzbwz zzf = zzbxa.zzf();
        zzf.zzb(-62135596800L);
        zzf.zza(0);
        zza = (zzbxa) zzf.zzx();
        zzbwz zzf2 = zzbxa.zzf();
        zzf2.zzb(253402300799L);
        zzf2.zza(999999999);
        zzb = (zzbxa) zzf2.zzx();
        zzbwz zzf3 = zzbxa.zzf();
        zzf3.zzb(0L);
        zzf3.zza(0);
        zzc = (zzbxa) zzf3.zzx();
        zzd = new zzbxv();
    }

    public static zzbxa zza(zzbxa zzbxaVar) {
        long zze = zzbxaVar.zze();
        int zzc2 = zzbxaVar.zzc();
        if (zze < -62135596800L || zze > 253402300799L || zzc2 < 0 || zzc2 >= 1000000000) {
            throw new IllegalArgumentException(String.format("Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999].", Long.valueOf(zze), Integer.valueOf(zzc2)));
        }
        return zzbxaVar;
    }

    public static zzbxa zzb(long j) {
        int i = (int) ((j % 1000) * 1000000);
        long j2 = j / 1000;
        if (i <= -1000000000 || i >= 1000000000) {
            j2 = zzaps.zza(j2, i / 1000000000);
            i %= 1000000000;
        }
        if (i < 0) {
            i += 1000000000;
            j2 = zzaps.zzc(j2, 1L);
        }
        zzbwz zzf = zzbxa.zzf();
        zzf.zzb(j2);
        zzf.zza(i);
        zzbxa zzbxaVar = (zzbxa) zzf.zzx();
        zza(zzbxaVar);
        return zzbxaVar;
    }
}
