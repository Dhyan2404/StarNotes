package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zztr extends zzaje<zztr, zza> implements zzakr {
    private static final zztr zzc;
    private static volatile zzaky<zztr> zzd;
    private int zze;
    private int zzf;
    private zzts zzg;
    private zzaho zzh = zzaho.zza;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zztr, zza> implements zzakr {
        private zza() {
            super(zztr.zzc);
        }

        public final zza zza(zzaho zzahoVar) {
            zzi();
            ((zztr) this.zza).zza(zzahoVar);
            return this;
        }

        public /* synthetic */ zza(zztq zztqVar) {
            this();
        }

        public final zza zza(zzts zztsVar) {
            zzi();
            ((zztr) this.zza).zza(zztsVar);
            return this;
        }

        public final zza zza(int i) {
            zzi();
            ((zztr) this.zza).zza(0);
            return this;
        }
    }

    static {
        zztr zztrVar = new zztr();
        zzc = zztrVar;
        zzaje.zza((Class<zztr>) zztr.class, zztrVar);
    }

    private zztr() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzaky<zztr> zzf() {
        return (zzaky) zzc.zza(zzaje.zzf.zzg, (Object) null, (Object) null);
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzts zzd() {
        zzts zztsVar = this.zzg;
        return zztsVar == null ? zzts.zze() : zztsVar;
    }

    public final zzaho zze() {
        return this.zzh;
    }

    public static zztr zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zztr) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zztq.zza[i - 1];
        zztq zztqVar = null;
        switch (i2) {
            case 1:
                return new zztr();
            case 2:
                return new zza(zztqVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case 5:
                zzaky<zztr> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zztr.class) {
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
    public final void zza(zzaho zzahoVar) {
        zzahoVar.getClass();
        this.zzh = zzahoVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzts zztsVar) {
        zztsVar.getClass();
        this.zzg = zztsVar;
        this.zze |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(int i) {
        this.zzf = 0;
    }
}
