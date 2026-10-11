package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.EnumSet;

/* loaded from: classes5.dex */
public abstract class zzgl {
    public static final zzgl zza;
    public static final zzgl zzb;
    public static final zzgl zzc;

    static {
        zzgj zzc2 = zzc();
        zzc2.zzb(EnumSet.noneOf(zzgk.class));
        zzc2.zza(false);
        zza = zzc2.zzc();
        zzgj zzc3 = zzc();
        zzgk zzgkVar = zzgk.ANY;
        zzc3.zzb(EnumSet.of(zzgkVar));
        zzc3.zza(true);
        zzb = zzc3.zzc();
        zzgj zzc4 = zzc();
        zzc4.zzb(EnumSet.of(zzgkVar));
        zzc4.zza(false);
        zzc = zzc4.zzc();
    }

    public static zzgj zzc() {
        zzgd zzgdVar = new zzgd();
        zzgdVar.zza(false);
        return zzgdVar;
    }

    public abstract zzaka zza();

    public abstract boolean zzb();
}
