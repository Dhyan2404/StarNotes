package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzsb extends zzaje<zzsb, zza> implements zzakr {
    private static final zzsb zzc;
    private static volatile zzaky<zzsb> zzd;
    private int zze;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzsb, zza> implements zzakr {
        private zza() {
            super(zzsb.zzc);
        }

        public final zza zza(int i) {
            zzi();
            ((zzsb) this.zza).zza(i);
            return this;
        }

        public /* synthetic */ zza(zzsa zzsaVar) {
            this();
        }
    }

    static {
        zzsb zzsbVar = new zzsb();
        zzc = zzsbVar;
        zzaje.zza((Class<zzsb>) zzsb.class, zzsbVar);
    }

    private zzsb() {
    }

    public static zza zzb() {
        return zzc.zzm();
    }

    public static zzsb zzd() {
        return zzc;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzsa.zza[i - 1];
        zzsa zzsaVar = null;
        switch (i2) {
            case 1:
                return new zzsb();
            case 2:
                return new zza(zzsaVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzsb> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzsb.class) {
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
