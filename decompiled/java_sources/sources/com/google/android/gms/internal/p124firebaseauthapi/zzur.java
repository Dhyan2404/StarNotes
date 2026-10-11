package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzur extends zzaje<zzur, zza> implements zzakr {
    private static final zzur zzc;
    private static volatile zzaky<zzur> zzd;
    private int zze;
    private int zzf;
    private int zzg;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzur, zza> implements zzakr {
        private zza() {
            super(zzur.zzc);
        }

        public final zza zza(zzui zzuiVar) {
            zzi();
            ((zzur) this.zza).zza(zzuiVar);
            return this;
        }

        public /* synthetic */ zza(zzuq zzuqVar) {
            this();
        }

        public final zza zza(zzuj zzujVar) {
            zzi();
            ((zzur) this.zza).zza(zzujVar);
            return this;
        }

        public final zza zza(zzul zzulVar) {
            zzi();
            ((zzur) this.zza).zza(zzulVar);
            return this;
        }
    }

    static {
        zzur zzurVar = new zzur();
        zzc = zzurVar;
        zzaje.zza((Class<zzur>) zzur.class, zzurVar);
    }

    private zzur() {
    }

    public static zza zzd() {
        return zzc.zzm();
    }

    public static zzur zzf() {
        return zzc;
    }

    public final zzui zza() {
        zzui zza2 = zzui.zza(this.zzg);
        return zza2 == null ? zzui.UNRECOGNIZED : zza2;
    }

    public final zzuj zzb() {
        zzuj zza2 = zzuj.zza(this.zzf);
        return zza2 == null ? zzuj.UNRECOGNIZED : zza2;
    }

    public final zzul zzc() {
        zzul zza2 = zzul.zza(this.zze);
        return zza2 == null ? zzul.UNRECOGNIZED : zza2;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzuq.zza[i - 1];
        zzuq zzuqVar = null;
        switch (i2) {
            case 1:
                return new zzur();
            case 2:
                return new zza(zzuqVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u0003\f", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzur> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzur.class) {
                        zzakyVar = zzd;
                        if (zzakyVar == null) {
                            zzakyVar = new zzaje.zzc<>(zzc);
                            zzd = zzakyVar;
                        }
                    }
                }
                return zzakyVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzui zzuiVar) {
        this.zzg = zzuiVar.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzuj zzujVar) {
        this.zzf = zzujVar.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzul zzulVar) {
        this.zze = zzulVar.zza();
    }
}
