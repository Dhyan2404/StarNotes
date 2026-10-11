package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
public final class zzvy extends zzaje<zzvy, zza> implements zzakr {
    private static final zzvy zzc;
    private static volatile zzaky<zzvy> zzd;
    private int zze;

    /* loaded from: classes5.dex */
    public static final class zza extends zzaje.zza<zzvy, zza> implements zzakr {
        private zza() {
            super(zzvy.zzc);
        }

        public /* synthetic */ zza(zzvx zzvxVar) {
            this();
        }
    }

    static {
        zzvy zzvyVar = new zzvy();
        zzc = zzvyVar;
        zzaje.zza((Class<zzvy>) zzvy.class, zzvyVar);
    }

    private zzvy() {
    }

    public static zzvy zzc() {
        return zzc;
    }

    public final int zza() {
        return this.zze;
    }

    public static zzvy zza(zzaho zzahoVar, zzaiq zzaiqVar) throws zzajk {
        return (zzvy) zzaje.zza(zzc, zzahoVar, zzaiqVar);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaje
    public final Object zza(int i, Object obj, Object obj2) {
        int i2 = zzvx.zza[i - 1];
        zzvx zzvxVar = null;
        switch (i2) {
            case 1:
                return new zzvy();
            case 2:
                return new zza(zzvxVar);
            case 3:
                return zzaje.zza(zzc, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
            case 4:
                return zzc;
            case 5:
                zzaky<zzvy> zzakyVar = zzd;
                if (zzakyVar == null) {
                    synchronized (zzvy.class) {
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
}
