package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzsr extends zzaje<zzsr, zza> implements zzakr {
    private static final zzsr zzc;
    private static volatile zzaky<zzsr> zzd;
    private int zze;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzsr, zza> implements zzakr {
        private zza() {
            super(zzsr.zzc);
        }

        public final zza zza(int i) {
            zzi();
            ((zzsr) this.zza).zza(i);
            return this;
        }

        public /* synthetic */ zza(zzsq zzsqVar) {
            this();
        }
    }

    static {
        zzsr zzsrVar = new zzsr();
        zzc = zzsrVar;
        zzaje.zza((Class<zzsr>) zzsr.class, zzsrVar);
    }

    private zzsr() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzsr zzd() {
        return zzc;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzsq.zza[i - 1];
        zzsq zzsqVar = null;
        switch (i2) {
            case 1:
                return new zzsr();
            case 2:
                return new zza(zzsqVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzsr> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzsr.class) {
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
