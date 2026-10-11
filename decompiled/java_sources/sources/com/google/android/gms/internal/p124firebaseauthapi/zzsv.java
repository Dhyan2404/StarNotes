package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzsv extends zzaje<zzsv, zza> implements zzakr {
    private static final zzsv zzc;
    private static volatile zzaky<zzsv> zzd;
    private int zze;
    private int zzf;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzsv, zza> implements zzakr {
        private zza() {
            super(zzsv.zzc);
        }

        public final zza zza(int i) {
            zzi();
            ((zzsv) this.zza).zza(i);
            return this;
        }

        public /* synthetic */ zza(zzsu zzsuVar) {
            this();
        }
    }

    static {
        zzsv zzsvVar = new zzsv();
        zzc = zzsvVar;
        zzaje.zza((Class<zzsv>) zzsv.class, zzsvVar);
    }

    private zzsv() {
    }

    public static zza zzc() {
        return zzc.zzm();
    }

    public final int zza() {
        return this.zze;
    }

    public final int zzb() {
        return this.zzf;
    }

    public static zzsv zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzsv) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzsu.zza[i - 1];
        zzsu zzsuVar = null;
        switch (i2) {
            case 1:
                return new zzsv();
            case 2:
                return new zza(zzsuVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zze", "zzf"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzsv> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzsv.class) {
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
    public final void zza(int i) {
        this.zze = i;
    }
}
