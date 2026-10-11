package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zztv extends zzaje<zztv, zza> implements zzakr {
    private static final zztv zzc;
    private static volatile zzaky<zztv> zzd;
    private int zze;
    private int zzf;
    private zzaho zzg = zzaho.zza;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zztv, zza> implements zzakr {
        private zza() {
            super(zztv.zzc);
        }

        public final zza zza(zztw zztwVar) {
            zzi();
            ((zztv) this.zza).zza(zztwVar);
            return this;
        }

        public /* synthetic */ zza(zztu zztuVar) {
            this();
        }

        public final zza zza(zzub zzubVar) {
            zzi();
            ((zztv) this.zza).zza(zzubVar);
            return this;
        }

        public final zza zza(zzaho zzahoVar) {
            zzi();
            ((zztv) this.zza).zza(zzahoVar);
            return this;
        }
    }

    static {
        zztv zztvVar = new zztv();
        zzc = zztvVar;
        zzaje.zza((Class<zztv>) zztv.class, zztvVar);
    }

    private zztv() {
    }

    public static zza zza() {
        return zzc.zzm();
    }

    public static zztv zzc() {
        return zzc;
    }

    public final zztw zzd() {
        zztw zza2 = zztw.zza(this.zze);
        return zza2 == null ? zztw.UNRECOGNIZED : zza2;
    }

    public final zzub zze() {
        zzub zza2 = zzub.zza(this.zzf);
        return zza2 == null ? zzub.UNRECOGNIZED : zza2;
    }

    public final zzaho zzf() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zztu.zza[i - 1];
        zztu zztuVar = null;
        switch (i2) {
            case 1:
                return new zztv();
            case 2:
                return new zza(zztuVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case 5:
                zzaky<zztv> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zztv.class) {
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
    public final void zza(zztw zztwVar) {
        this.zze = zztwVar.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzub zzubVar) {
        this.zzf = zzubVar.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzaho zzahoVar) {
        zzahoVar.getClass();
        this.zzg = zzahoVar;
    }
}
